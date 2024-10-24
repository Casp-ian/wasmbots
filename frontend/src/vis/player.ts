import Phaser from "phaser";

import config from "../engine/core/config.ts";
import { type Point } from "../engine/game/map.ts";
import { Deck } from "../engine/game/random.ts";
import { WasmBotsGame } from "./game.ts";

const PLAYER_IMG_FRAMES = [84, 111];

export class GamePlayer extends Phaser.GameObjects.Sprite {
    static playerImageDeck?: Deck<number>;

    constructor(scene: Phaser.Scene, tilePos: Point) {
        if (!GamePlayer.playerImageDeck) {
            GamePlayer.playerImageDeck = new Deck(PLAYER_IMG_FRAMES, (scene.game as WasmBotsGame).rng)
        }
        super(
            scene,
            tilePos.x * config.tileSize, tilePos.y * config.tileSize,
            "tiles-dungeon", GamePlayer.playerImageDeck.draw()
        );

        scene.add.existing(this);
    }
}
