import Phaser from "phaser";

import { CoreMsg, WorldMap, type Point } from "wasmbots";
import { type VisPlayer } from "./player";

export class VisMap extends Phaser.Scene {
	worldMap!: WorldMap;
	private _backgroundLayer: Phaser.Tilemaps.TilemapLayer | null = null;
	private _itemLayer: Phaser.Tilemaps.TilemapLayer | null = null;
	playerList: Set<VisPlayer> = new Set();

	private constructor(key: string) {
		super(key);
	}

	static async from(map: WorldMap): Promise<VisMap> {
		const ms = new VisMap(`${map.name})Scene`);
		ms.worldMap = map;
		return ms;
	}

	preload() {}

	create() {
		const tm = this.make.tilemap({key: `map-${this.worldMap.name}`});
		for (const tsObj of tm.tilesets) {
			tm.addTilesetImage(tsObj.name, `tiles-${tsObj.name}`);
		}
		this._backgroundLayer = tm.createLayer("terrain", tm.tilesets, 0, 0);
		this._itemLayer = tm.createLayer("items", tm.tilesets, 0, 0);
	}

	processTerrainChange(location: Point, newTerrain: CoreMsg.TileType) {
		const candidates = this.worldMap.terrainIndexLookup.get(newTerrain);
		if (candidates === undefined) {
			throw new Error(`Cannot change ${location} to terrain ${newTerrain}; does not exist in map.`);
		}
		if (candidates.length === 0) {
			throw new Error(`Cannot change ${location} to terrain ${newTerrain}; no candidates.`);
		}
		this._backgroundLayer?.putTileAt(candidates[0], location.x, location.y);
	}

	update() {
		for (const p of this.playerList) {
			if (p.update) {
				p.update();
			}
		}
	}

	addPlayer(p: VisPlayer) {
		this.playerList.add(p);
		this.add.existing(p);

		p.once("destroy", () => {this.playerList.delete(p)});
	}
}
