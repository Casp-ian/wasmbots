// This file was automatically generated by Beschi v0.2.3
// <https://github.com/sjml/beschi>
// Do not edit directly.

/*
DATA PROTOCOL
-----------------
[meta]
namespace = "WasmBots"
list_size_type = "uint16"
string_size_type = "byte"

# used internally for handling host <-> module mishaps
[[messages]]
_name = "_Error"
description = "string"

# initial setup message that you can either accept or reject
[[messages]]
_name = "InitialParameters"
paramsVersion = "uint16"       # version of this very message, so you know if you can parse the rest
engineVersionMajor = "uint16"  # major version of engine
engineVersionMinor = "uint16"  # minor version of engine
engineVersionPatch = "uint16"  # patch version of engine
diagonalMovement = "bool"      # if false, any attempted diagonal move will be Invalid
playerStride = "byte"          # how far you can move on a given turn
playerOpenReach = "byte"       # the distance at which you can open things (doors, chests)

[[structs]]
_name = "Point"
x = "int16"
y = "int16"


[[enums]]
_name = "MoveResult"
_values = [
    "Succeeded",  # your move worked (ex: attack hit, moved successfully)
    "Failed",     # your move did not work (ex: attack missed, moved into wall)
    "Invalid",    # your move was not allowed by the system (ex: tried diagonal movement when not allowed, targeted something out of range)
    "Error",      # your move was not understood (ex: malformed message, missing data)
]

[[enums]]
_name = "TileType"
_values = [
    "Void",        # you don't know what's there; might be off the edge of the map, or maybe just behind a wall
    "Empty",       # an open space you can move to
    "OpenDoor",    # a door space that you can pass through or take a turn to target with Close
    "ClosedDoor",  # an impassible door space that you can take a turn to target with Open
    "Wall",        # an impassible space
]

[[enums]]
_name = "Direction"
_values = [
    "East",
    "Southeast",
    "South",
    "Southwest",
    "West",
    "Northwest",
    "North",
    "Northeast",
]

# player receives every tick
[[messages]]
_name = "PresentCircumstances"  # describes your immediate situation and surroundings at the start of this turn
lastTickDuration = "uint32"     # how long, in milliseconds, you took on the last tick (will be 0 on initial turn)
lastMoveResult = "MoveResult"   # the result of your last turn (will be Succeeded on initial turn)
currentHitPoints = "uint16"     # how many hit points you have
surroundings = "[TileType]"     # array of tiles representing your immediate surroundings as a square with you in the middle
surroundingsRadius = "byte"     # radius (from you) of the surroundings, so the side of a square is (this * 2) + 1


### moves that the player submits

[[messages]]
_name = "Wait"  # no-op; don't do anything and wait for the next tick

[[messages]]
_name = "Resign"  # give up the game; you will receive no more tick calls after submitting this move

[[messages]]
_name = "MoveTo"         # move to a new tile
direction = "Direction"  # which way to move
distance = "byte"        # how far to move (can usually just be 1, but might be modified); if you put a number that is beyond your max range, the move will be Invalid

[[messages]]
_name = "Open"     # open (a door, a chest, etc.) at a specific tile
target = "Point"   # the position *relative to you* that you want to try to open; can usually only be one square away (manhattan distance); if already opened, move will fail; if target is not openable, move will be Invalid

[[messages]]
_name = "Close"    # close (a door, a chest, etc.) at a specific tile
target = "Point"   # the position *relative to you* that you want to try to close; can usually only be one square away (manhattan distance); if already closed, move will fail; if target is not closable, move will be Invalid

-----------------
END DATA PROTOCOL
*/



const _textDec = new TextDecoder('utf-8');
const _textEnc = new TextEncoder();

export class DataAccess {
	data: DataView;
	currentOffset: number;

	constructor(buffer: ArrayBuffer|DataView) {
		this.currentOffset = 0;
		if (buffer instanceof ArrayBuffer) {
			this.data = new DataView(buffer);
		}
		else {
			this.data = buffer;
		}
	}

	isFinished(): boolean {
		return this.currentOffset >= this.data.byteLength;
	}

	getByte(): number {
		const ret = this.data.getUint8(this.currentOffset);
		this.currentOffset += 1;
		return ret;
	}

	getBool(): boolean {
		return this.getByte() > 0;
	}

	getInt16(): number {
		const ret = this.data.getInt16(this.currentOffset, true);
		this.currentOffset += 2;
		return ret;
	}

	getUint16(): number {
		const ret = this.data.getUint16(this.currentOffset, true);
		this.currentOffset += 2;
		return ret;
	}

	getInt32(): number {
		const ret = this.data.getInt32(this.currentOffset, true);
		this.currentOffset += 4;
		return ret;
	}

	getUint32(): number {
		const ret = this.data.getUint32(this.currentOffset, true);
		this.currentOffset += 4;
		return ret;
	}

	getInt64(): bigint {
		const ret = this.data.getBigInt64(this.currentOffset, true);
		this.currentOffset += 8;
		return ret;
	}

	getUint64(): bigint {
		const ret = this.data.getBigUint64(this.currentOffset, true);
		this.currentOffset += 8;
		return ret;
	}

	getFloat32(): number {
		const ret = this.data.getFloat32(this.currentOffset, true);
		this.currentOffset += 4;
		return Math.fround(ret);
	}

	getFloat64(): number {
		const ret = this.data.getFloat64(this.currentOffset, true);
		this.currentOffset += 8;
		return ret;
	}

	getString(): string {
		const len = this.getByte();
		const strBuffer = new Uint8Array(this.data.buffer, this.currentOffset, len);
		this.currentOffset += len;
		return _textDec.decode(strBuffer);
	}


	setByte(val: number) {
		this.data.setUint8(this.currentOffset, val);
		this.currentOffset += 1;
	}

	setBool(val: boolean) {
		this.setByte(val ? 1 : 0);
	}

	setInt16(val: number) {
		this.data.setInt16(this.currentOffset, val, true);
		this.currentOffset += 2;
	}

	setUint16(val: number) {
		this.data.setUint16(this.currentOffset, val, true);
		this.currentOffset += 2;
	}

	setInt32(val: number) {
		this.data.setInt32(this.currentOffset, val, true);
		this.currentOffset += 4;
	}

	setUint32(val: number) {
		this.data.setUint32(this.currentOffset, val, true);
		this.currentOffset += 4;
	}

	setInt64(val: bigint) {
		this.data.setBigInt64(this.currentOffset, val, true);
		this.currentOffset += 8;
	}

	setUint64(val: bigint) {
		this.data.setBigUint64(this.currentOffset, val, true);
		this.currentOffset += 8;
	}

	setFloat32(val: number) {
		this.data.setFloat32(this.currentOffset, val, true);
		this.currentOffset += 4;
	}

	setFloat64(val: number) {
		this.data.setFloat64(this.currentOffset, val, true);
		this.currentOffset += 8;
	}

	setString(val: string) {
		const strBuffer = _textEnc.encode(val);
		this.setByte(strBuffer.byteLength);
		const arr = new Uint8Array(this.data.buffer);
		arr.set(strBuffer, this.currentOffset);
		this.currentOffset += strBuffer.byteLength;
	}
}

export abstract class Message {
	abstract getMessageType(): MessageType;
	abstract writeBytes(dv: DataView, tag: boolean): void;
	abstract getSizeInBytes(): number;

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): Message | null {
		throw new Error("Cannot read abstract Message from bytes.");
	};
}

export enum MessageType {
	_ErrorType = 1,
	InitialParametersType = 2,
	PresentCircumstancesType = 3,
	WaitType = 4,
	ResignType = 5,
	MoveToType = 6,
	OpenType = 7,
	CloseType = 8,
}

export function ProcessRawBytes(data: DataView|DataAccess): Message[] {
	let da: DataAccess;
	if (data instanceof DataView) {
		da = new DataAccess(data);
	}
	else {
		da = data;
	}
	const msgList: Message[] = [];
	while (!da.isFinished()) {
		const msgType: number = da.getByte();
		switch (msgType) {
			case 0:
				return msgList;
			case MessageType._ErrorType:
				msgList.push(_Error.fromBytes(da));
				break;
			case MessageType.InitialParametersType:
				msgList.push(InitialParameters.fromBytes(da));
				break;
			case MessageType.PresentCircumstancesType:
				msgList.push(PresentCircumstances.fromBytes(da));
				break;
			case MessageType.WaitType:
				msgList.push(Wait.fromBytes(da));
				break;
			case MessageType.ResignType:
				msgList.push(Resign.fromBytes(da));
				break;
			case MessageType.MoveToType:
				msgList.push(MoveTo.fromBytes(da));
				break;
			case MessageType.OpenType:
				msgList.push(Open.fromBytes(da));
				break;
			case MessageType.CloseType:
				msgList.push(Close.fromBytes(da));
				break;
			default:
				throw new Error(`Unknown message type: ${msgType}`);
		}
	}
	return msgList;
}

export enum MoveResult {
	Succeeded = 0,
	Failed = 1,
	Invalid = 2,
	Error = 3,
}

export enum TileType {
	Void = 0,
	Empty = 1,
	OpenDoor = 2,
	ClosedDoor = 3,
	Wall = 4,
}

export enum Direction {
	East = 0,
	Southeast = 1,
	South = 2,
	Southwest = 3,
	West = 4,
	Northwest = 5,
	North = 6,
	Northeast = 7,
}

export class Point {
	x: number = 0;
	y: number = 0;

	static fromBytes(da: DataAccess): Point {
		const nPoint = new Point();
		nPoint.x = da.getInt16();
		nPoint.y = da.getInt16();
		return nPoint;
	}

	writeBytes(da: DataAccess) {
		da.setInt16(this.x);
		da.setInt16(this.y);
	}

}

export class _Error extends Message {
	description: string = "";

	getMessageType() : MessageType { return MessageType._ErrorType; }

	getSizeInBytes(): number {
		let size: number = 0;
		size += _textEnc.encode(this.description).byteLength;
		size += 1;
		return size;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): _Error {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const n_Error = new _Error();
			n_Error.description = da.getString();
			return n_Error;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read _Error from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType._ErrorType);
		}
		da.setString(this.description);
	}

}

export class InitialParameters extends Message {
	paramsVersion: number = 0;
	engineVersionMajor: number = 0;
	engineVersionMinor: number = 0;
	engineVersionPatch: number = 0;
	diagonalMovement: boolean = false;
	playerStride: number = 0;
	playerOpenReach: number = 0;

	getMessageType() : MessageType { return MessageType.InitialParametersType; }

	getSizeInBytes(): number {
		return 11;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): InitialParameters {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const nInitialParameters = new InitialParameters();
			nInitialParameters.paramsVersion = da.getUint16();
			nInitialParameters.engineVersionMajor = da.getUint16();
			nInitialParameters.engineVersionMinor = da.getUint16();
			nInitialParameters.engineVersionPatch = da.getUint16();
			nInitialParameters.diagonalMovement = da.getBool();
			nInitialParameters.playerStride = da.getByte();
			nInitialParameters.playerOpenReach = da.getByte();
			return nInitialParameters;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read InitialParameters from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType.InitialParametersType);
		}
		da.setUint16(this.paramsVersion);
		da.setUint16(this.engineVersionMajor);
		da.setUint16(this.engineVersionMinor);
		da.setUint16(this.engineVersionPatch);
		da.setBool(this.diagonalMovement);
		da.setByte(this.playerStride);
		da.setByte(this.playerOpenReach);
	}

}

export class PresentCircumstances extends Message {
	lastTickDuration: number = 0;
	lastMoveResult: MoveResult = MoveResult.Succeeded;
	currentHitPoints: number = 0;
	surroundings: TileType[] = [];
	surroundingsRadius: number = 0;

	getMessageType() : MessageType { return MessageType.PresentCircumstancesType; }

	getSizeInBytes(): number {
		let size: number = 0;
		size += this.surroundings.length * 1;
		size += 10;
		return size;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): PresentCircumstances {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const nPresentCircumstances = new PresentCircumstances();
			nPresentCircumstances.lastTickDuration = da.getUint32();
			const _lastMoveResult = da.getByte();
			if (MoveResult[_lastMoveResult] === undefined) {
				throw new Error(`Enum (${_lastMoveResult}) out of range for MoveResult`);
			}
			nPresentCircumstances.lastMoveResult = _lastMoveResult;
			nPresentCircumstances.currentHitPoints = da.getUint16();
			const surroundings_Length = da.getUint16();
			nPresentCircumstances.surroundings = Array<TileType>(surroundings_Length);
			for (let i3 = 0; i3 < surroundings_Length; i3++) {
				const _surroundings = da.getByte();
				if (TileType[_surroundings] === undefined) {
					throw new Error(`Enum (${_surroundings}) out of range for TileType`);
				}
				nPresentCircumstances.surroundings[i3] = _surroundings;
			}
			nPresentCircumstances.surroundingsRadius = da.getByte();
			return nPresentCircumstances;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read PresentCircumstances from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType.PresentCircumstancesType);
		}
		da.setUint32(this.lastTickDuration);
		da.setByte(this.lastMoveResult);
		da.setUint16(this.currentHitPoints);
		da.setUint16(this.surroundings.length);
		for (let i = 0; i < this.surroundings.length; i++) {
			let el = this.surroundings[i];
			da.setByte(el);
		}
		da.setByte(this.surroundingsRadius);
	}

}

export class Wait extends Message {

	getMessageType() : MessageType { return MessageType.WaitType; }

	getSizeInBytes(): number {
		return 0;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): Wait {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const nWait = new Wait();
			return nWait;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read Wait from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType.WaitType);
		}
	}

}

export class Resign extends Message {

	getMessageType() : MessageType { return MessageType.ResignType; }

	getSizeInBytes(): number {
		return 0;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): Resign {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const nResign = new Resign();
			return nResign;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read Resign from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType.ResignType);
		}
	}

}

export class MoveTo extends Message {
	direction: Direction = Direction.East;
	distance: number = 0;

	getMessageType() : MessageType { return MessageType.MoveToType; }

	getSizeInBytes(): number {
		return 2;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): MoveTo {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const nMoveTo = new MoveTo();
			const _direction = da.getByte();
			if (Direction[_direction] === undefined) {
				throw new Error(`Enum (${_direction}) out of range for Direction`);
			}
			nMoveTo.direction = _direction;
			nMoveTo.distance = da.getByte();
			return nMoveTo;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read MoveTo from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType.MoveToType);
		}
		da.setByte(this.direction);
		da.setByte(this.distance);
	}

}

export class Open extends Message {
	target: Point = new Point();

	getMessageType() : MessageType { return MessageType.OpenType; }

	getSizeInBytes(): number {
		return 4;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): Open {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const nOpen = new Open();
			nOpen.target = Point.fromBytes(da);
			return nOpen;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read Open from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType.OpenType);
		}
		this.target.writeBytes(da);
	}

}

export class Close extends Message {
	target: Point = new Point();

	getMessageType() : MessageType { return MessageType.CloseType; }

	getSizeInBytes(): number {
		return 4;
	}

	static fromBytes(data: DataView|DataAccess|ArrayBuffer): Close {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else if (data instanceof ArrayBuffer) {
			da = new DataAccess(new DataView(data));
		}
		else {
			da = data;
		}
		try {
			const nClose = new Close();
			nClose.target = Point.fromBytes(da);
			return nClose;
		}
		catch (err) {
			let errMsg = "[Unknown error]";
			if (err instanceof Error) {
				errMsg = `${err.name} -- ${err.message}`;
			}
			throw new Error(`Could not read Close from offset ${da.currentOffset} (${errMsg})`);
		}
	}

	writeBytes(data: DataView|DataAccess, tag: boolean): void {
		let da: DataAccess;
		if (data instanceof DataView) {
			da = new DataAccess(data);
		}
		else {
			da = data;
		}
		if (tag) {
			da.setByte(MessageType.CloseType);
		}
		this.target.writeBytes(da);
	}

}

export const MessageTypeMap = new Map<MessageType, { new(): Message }>([
	[MessageType._ErrorType, _Error],
	[MessageType.InitialParametersType, InitialParameters],
	[MessageType.PresentCircumstancesType, PresentCircumstances],
	[MessageType.WaitType, Wait],
	[MessageType.ResignType, Resign],
	[MessageType.MoveToType, MoveTo],
	[MessageType.OpenType, Open],
	[MessageType.CloseType, Close],
]);

