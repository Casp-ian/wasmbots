EXE_NAME = explorer

zig-out/bin/$(EXE_NAME).wasm: src/bot.zig src/exploration.zig
	zig build
	chmod -x $@

zig-out/bin/$(EXE_NAME)-trainer: src/bot.zig src/exploration.zig
	zig build -Dtrainer=true

.PHONY: trainer
trainer: zig-out/bin/$(EXE_NAME)-trainer

.PHONY: wasm
wasm: zig-out/bin/$(EXE_NAME).wasm

.PHONY: all
all: wasm trainer

.PHONY: clean
clean:
	rm -rf ./.zig-cache ./zig-out

.PHONY: install
install: wasm
	rsync -u -t -p zig-out/bin/$(EXE_NAME).wasm ../../example_bots/$(EXE_NAME).wasm

.DEFAULT_GOAL = all
