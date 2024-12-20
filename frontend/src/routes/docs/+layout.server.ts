import fs, { link } from "node:fs";
import path from "node:path";

import { redirect, error } from "@sveltejs/kit";

import { unified } from "unified";
import { visit } from "unist-util-visit";
import type { Root as MRoot, Node as MNode, Link } from "mdast";
import type { Root as HRoot, Node as HNode, Element } from "hast";
import remarkParse from "remark-parse";
import remarkFrontmatter from "remark-frontmatter";
import remarkSmartypants from "remark-smartypants";
import remarkRehype from "remark-rehype";
import rehypeStringify from "rehype-stringify";
import { toString as rNodeToString } from "hast-util-to-string";
import GitHubSlugger from "github-slugger";

import { trailingSlash } from "../+layout.js";
const repoWebUrl = "https://github.com/sjml/wasmbots";
const repoBranch = "main";
const projectRoot = path.resolve("..");
const docsDir = path.resolve("../docs");
const ignoreDirectories = [ path.join(docsDir, "notes") ];
const indexBasename = "_index";
const indexFile = `${indexBasename}.md`;


function makeGHLink(absolute: string): string {
	if (!absolute.startsWith(projectRoot)) {
		throw new Error("Can't make GitHub link to file outside project directory");
	}
	const repoPath = absolute.substring(projectRoot.length);
	return `${repoWebUrl}/blob/${repoBranch}${repoPath}`;

}

function fixMdLinks(params: {fpathAbsolute: string}) {
	const isIndex = path.basename(params.fpathAbsolute) === indexFile;
	const effectivePath = (isIndex && trailingSlash !== "always")
		? params.fpathAbsolute
		: path.dirname(params.fpathAbsolute)
	;

	return (tree: MRoot) => {
		const linkNodes: Link[] = [];
		visit(tree, (node: MNode) => {
			if (node.type === "link") {
				linkNodes.push(node as Link);
			}
		});

		linkNodes.map((link) => {
			if (link.url.startsWith("http://") || link.url.startsWith("https://")) {
				return;
			}

			const parts = link.url.split("#");
			if (parts.length > 2) {
				throw new Error(`Invalid link "${link.url}"`);
			}
			const [rawLink, anchor] = parts;
			const suffix = anchor ? `#${anchor}` : "";

			const absoluteLinkPath = path.resolve(effectivePath, rawLink);

			if (!fs.existsSync(absoluteLinkPath)) {
				throw new Error(`"${absoluteLinkPath}" does not exist`);
			}

			if (   !absoluteLinkPath.startsWith(docsDir)
				|| ignoreDirectories.some(ig => absoluteLinkPath.startsWith(ig))
			) {
				link.url = `${makeGHLink(absoluteLinkPath)}${suffix}`;
				return;
			}

			let relativePath = path.relative(effectivePath, absoluteLinkPath);
			if (relativePath.endsWith(".md")) {
				relativePath = relativePath.slice(0, -3);
			}

			if (trailingSlash === "always" && !isIndex) {
				relativePath = path.join("..", relativePath);
			}

			relativePath = relativePath.split(path.sep).join("/");
			if (!relativePath.startsWith(".")) {
				relativePath = `./${relativePath}`;
			}

			link.url = `${relativePath}${suffix}`;
		});
	};
}

function classifyLinks(params: object) {
	return (tree: HRoot) => {
		const linkNodes: Element[] = [];
		visit(tree, (node: HNode) => {
			const elNode = node as Element;
			if (elNode.tagName === "a") {
				linkNodes.push(elNode);
			}
		});

		linkNodes.map((link) => {
			const url = link.properties["href"] as string;
			const classList = (link.properties["className"] as string[]) ?? [];
			if (url.startsWith("http://") || url.startsWith("https://")) {
				classList.push("external");
			}
			if (url.startsWith(repoWebUrl)) {
				classList.push("github");
			}
			if (classList.length > 0) {
				link.properties["target"] = "_blank";
				link.properties["className"] = classList;
			}
		});
	};
}

function anchorifyHeaders(_params: object) {
	const slugger = new GitHubSlugger();

	return (tree: HRoot) => {
		const headerNodes: Element[] = [];
		visit(tree, (node: HNode) => {
			const elNode = node as Element;
			if (["h1", "h2", "h3", "h4", "h5", "h6"].some(tag => elNode.tagName === tag)) {
				headerNodes.push(elNode);
			}
		});

		headerNodes.map((header) => {
			const slug = slugger.slug(rNodeToString(header));
			header.properties.id = slug;
			header.children.push({
				type: "element",
				tagName: "a",

				properties: {
					href: `#${slug}`,
					className: ["header-anchor"],
					ariaHidden: "true",
					tabIndex: -1,
				},
				children: [{type: "text", value: "§"}],
			});
		});
	};
}

async function renderMarkdown(md: string, fpathAbsolute: string): Promise<string> {
	return String(await unified()
		.use(remarkParse)
		.use(remarkFrontmatter, ["yaml"])
		.use(fixMdLinks, {fpathAbsolute})
		.use(remarkSmartypants, {
			dashes: "oldschool"
		})
		.use(remarkRehype)
		.use(classifyLinks, {})
		.use(anchorifyHeaders, {})
		.use(rehypeStringify)
		.process(md));
}

export async function load({params}) {
	let filename;
	if (params.docpath?.endsWith(indexBasename)) {
		redirect(307, "./");
	}
	else if (params.docpath === undefined) {
		filename = indexFile;
	}
	else {
		filename = params.docpath;
	}

	let fpath = path.resolve(docsDir, filename);
	if (fs.existsSync(fpath) && fs.lstatSync(fpath).isDirectory()) {
		fpath = path.join(fpath, indexFile);
	}
	else if (!fpath.endsWith(".md")) {
		fpath += ".md";
	}

	if (ignoreDirectories.some(ig => fpath.startsWith(ig))) {
		error(404, "Ignored file");
	}
	if (!fs.existsSync(fpath)) {
		error(404, "no such file: " + fpath);
	}
	const content = fs.readFileSync(fpath, {encoding: "utf-8"});
	const md = await renderMarkdown(content, fpath);
	return {
		content: md,
		githubPath: makeGHLink(fpath),
	}
}
