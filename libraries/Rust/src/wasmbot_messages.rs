// This file was automatically generated by Beschi v0.3.0
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
    "Floor",       # an open space you can move to
    "OpenDoor",    # a door space that you can pass through or take a turn to target with Close
    "ClosedDoor",  # an impassible door space that you can take a turn to target with Open
    "Wall",        # an impassible space
]

[[enums]]
_name = "Direction"
_values = [
    "North",
    "Northeast",
    "East",
    "Southeast",
    "South",
    "Southwest",
    "West",
    "Northwest",
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


#![allow(dead_code)]

use std::fmt;
use std::error::Error;

#[derive(Debug)]
pub enum WasmBotsError {
	EndOfFile,
	InvalidData,
	EndOfMessageList,
}

impl Error for WasmBotsError {}

impl fmt::Display for WasmBotsError {
	fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
		match self {
			WasmBotsError::EndOfFile => write!(f, "end of file reached prematurely"),
			WasmBotsError::InvalidData => write!(f, "invalid data encountered"),
			WasmBotsError::EndOfMessageList => write!(f, "end of message list encountered"),
		}
	}
}

pub struct BufferReader<'a> {
	buffer: &'a [u8],
	pub current_position: usize,
}

impl<'a> BufferReader<'a> {
	pub fn new(buffer: &'a [u8]) -> Self {
		BufferReader { buffer, current_position: 0 }
	}

	pub fn from_vec(buffer: Vec<u8>) -> BufferReader<'static> {
		BufferReader {
			buffer: buffer.leak(),
			current_position: 0
		}
	}

	pub fn is_finished(&self) -> bool {
		self.current_position >= self.buffer.len()
	}

	pub fn has_remaining(&self, size: usize) -> bool {
		self.current_position + size <= self.buffer.len()
	}

	pub fn take_byte(&mut self) -> Result<u8, WasmBotsError> {
		if !self.has_remaining(1) {
			return Err(WasmBotsError::EndOfFile);
		}
		self.current_position += 1;
		Ok(self.buffer[self.current_position-1])
	}

	pub fn take(&mut self, amount: usize) -> Result<&[u8], WasmBotsError> {
		if !self.has_remaining(amount) {
			return Err(WasmBotsError::EndOfFile);
		}

		let ret: &[u8] = &self.buffer[self.current_position..self.current_position+amount];
		self.current_position += amount;
		Ok(ret)
	}

	pub fn read_string(&mut self) -> Result<String, WasmBotsError> {
		let len = self.read_u8()?;
		let string_bytes = self.take(len as usize)?;
		match String::from_utf8(string_bytes.to_vec()) {
			Err(_) => Err(WasmBotsError::InvalidData),
			Ok(v) => Ok(v)
		}
	}

	pub fn read_u8(&mut self) -> Result<u8, WasmBotsError> {
		let byte = self.take_byte()?;
		Ok(byte)
	}

	pub fn read_i16(&mut self) -> Result<i16, WasmBotsError> {
		let bytes = self.take(2)?;
		Ok(i16::from_le_bytes(bytes.try_into().unwrap()))
	}

	pub fn read_u16(&mut self) -> Result<u16, WasmBotsError> {
		let bytes = self.take(2)?;
		Ok(u16::from_le_bytes(bytes.try_into().unwrap()))
	}

	pub fn read_i32(&mut self) -> Result<i32, WasmBotsError> {
		let bytes = self.take(4)?;
		Ok(i32::from_le_bytes(bytes.try_into().unwrap()))
	}

	pub fn read_u32(&mut self) -> Result<u32, WasmBotsError> {
		let bytes = self.take(4)?;
		Ok(u32::from_le_bytes(bytes.try_into().unwrap()))
	}

	pub fn read_i64(&mut self) -> Result<i64, WasmBotsError> {
		let bytes = self.take(8)?;
		Ok(i64::from_le_bytes(bytes.try_into().unwrap()))
	}

	pub fn read_u64(&mut self) -> Result<u64, WasmBotsError> {
		let bytes = self.take(8)?;
		Ok(u64::from_le_bytes(bytes.try_into().unwrap()))
	}

	pub fn read_f32(&mut self) -> Result<f32, WasmBotsError> {
		let bytes = self.take(4)?;
		Ok(f32::from_le_bytes(bytes.try_into().unwrap()))
	}

	pub fn read_f64(&mut self) -> Result<f64, WasmBotsError> {
		let bytes = self.take(8)?;
		Ok(f64::from_le_bytes(bytes.try_into().unwrap()))
	}
}

impl <'a> Drop for BufferReader<'a> {
	fn drop(&mut self) {
		if std::mem::needs_drop::<Vec<u8>>() {
			unsafe {
				let _ = Vec::from_raw_parts(
					self.buffer.as_ptr() as *mut u8,
					self.buffer.len(),
					self.buffer.len()
				);
			}
		}
	}
}

pub trait MessageCodec {
	fn get_message_type(&self) -> MessageType;
	fn get_size_in_bytes(&self) -> usize;
	fn from_bytes(reader: &mut BufferReader) -> Result<Self, WasmBotsError>
		where Self: Sized;
	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool);
}


pub fn get_packed_size(msg_list: &[Message]) -> usize {
	let mut size: usize = 0;

	for msg in msg_list {
		size += msg.get_size_in_bytes();
	}
	size += msg_list.len();
	size += 9;

	size
}

pub fn pack_messages(msg_list: &[Message], writer: &mut Vec<u8>) {
	let header_bytes = b"BSCI";
	writer.extend_from_slice(header_bytes);
	let msg_count = msg_list.len() as u32;
	writer.extend_from_slice(&msg_count.to_le_bytes());

	for msg in msg_list {
		msg.write_bytes(writer, true);
	}
	writer.push(0);
}

pub fn unpack_messages(reader: &mut BufferReader) -> Result<Vec<Message>, WasmBotsError> {
	let header_label = reader.take(4)?;
	if header_label != b"BSCI" {
		return Err(WasmBotsError::InvalidData);
	}

	let msg_count = reader.read_u32()? as usize;
	if msg_count == 0 {
		return Ok(Vec::new());
	}

	let msg_list = process_raw_bytes(reader, msg_count as i32)?;
	let read_count = msg_list.len();
	if read_count == 0 {
		return Err(WasmBotsError::InvalidData);
	}
	if msg_list.len() != msg_count {
		return Err(WasmBotsError::InvalidData);
	}

	Ok(msg_list)
}

pub enum MessageType {
	_Error,
	InitialParameters,
	PresentCircumstances,
	Wait,
	Resign,
	MoveTo,
	Open,
	Close,
}

pub enum Message {
	_Error(_Error),
	InitialParameters(InitialParameters),
	PresentCircumstances(PresentCircumstances),
	Wait(Wait),
	Resign(Resign),
	MoveTo(MoveTo),
	Open(Open),
	Close(Close),
}

impl MessageCodec for Message {
	fn get_message_type(&self) -> MessageType {
		match self {
			Message::_Error(_) => MessageType::_Error,
			Message::InitialParameters(_) => MessageType::InitialParameters,
			Message::PresentCircumstances(_) => MessageType::PresentCircumstances,
			Message::Wait(_) => MessageType::Wait,
			Message::Resign(_) => MessageType::Resign,
			Message::MoveTo(_) => MessageType::MoveTo,
			Message::Open(_) => MessageType::Open,
			Message::Close(_) => MessageType::Close,
		}
	}

	fn get_size_in_bytes(&self) -> usize {
		match self {
			Message::_Error(msg) => msg.get_size_in_bytes(),
			Message::InitialParameters(msg) => msg.get_size_in_bytes(),
			Message::PresentCircumstances(msg) => msg.get_size_in_bytes(),
			Message::Wait(msg) => msg.get_size_in_bytes(),
			Message::Resign(msg) => msg.get_size_in_bytes(),
			Message::MoveTo(msg) => msg.get_size_in_bytes(),
			Message::Open(msg) => msg.get_size_in_bytes(),
			Message::Close(msg) => msg.get_size_in_bytes(),
		}
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<Message, WasmBotsError> {
		let tag = reader.take_byte()?;
		let msg = match tag {
			0 => return Err(WasmBotsError::EndOfMessageList),
			1 => Message::_Error(_Error::from_bytes(reader)?),
			2 => Message::InitialParameters(InitialParameters::from_bytes(reader)?),
			3 => Message::PresentCircumstances(PresentCircumstances::from_bytes(reader)?),
			4 => Message::Wait(Wait::from_bytes(reader)?),
			5 => Message::Resign(Resign::from_bytes(reader)?),
			6 => Message::MoveTo(MoveTo::from_bytes(reader)?),
			7 => Message::Open(Open::from_bytes(reader)?),
			8 => Message::Close(Close::from_bytes(reader)?),
			_ => return Err(WasmBotsError::InvalidData),
		};
		Ok(msg)
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		match self {
			Message::_Error(msg) => msg.write_bytes(writer, tag),
			Message::InitialParameters(msg) => msg.write_bytes(writer, tag),
			Message::PresentCircumstances(msg) => msg.write_bytes(writer, tag),
			Message::Wait(msg) => msg.write_bytes(writer, tag),
			Message::Resign(msg) => msg.write_bytes(writer, tag),
			Message::MoveTo(msg) => msg.write_bytes(writer, tag),
			Message::Open(msg) => msg.write_bytes(writer, tag),
			Message::Close(msg) => msg.write_bytes(writer, tag),
		}
	}
}

pub fn process_raw_bytes(reader: &mut BufferReader, max: i32) -> Result<Vec<Message>, WasmBotsError> {
	let mut msg_list: Vec<Message> = Vec::new();
	if max == 0 {
		return Ok(msg_list);
	}
	while !reader.is_finished() && (max < 0 || msg_list.len() < max as usize) {
		match Message::from_bytes(reader) {
			Err(e) => match e {
				WasmBotsError::EndOfMessageList => return Ok(msg_list),
				_ => return Err(e),
			}
			Ok(msg) => msg_list.push(msg),
		}
	}
	Ok(msg_list)
}

#[repr(u8)]
#[derive(Debug, Copy, Clone, PartialEq, Eq)]
pub enum MoveResult {
	Succeeded = 0,
	Failed = 1,
	Invalid = 2,
	Error = 3,
}

impl Default for MoveResult {
	fn default() -> Self { MoveResult::Succeeded }
}

impl TryFrom<u8> for MoveResult {
	type Error = WasmBotsError;

	fn try_from(value: u8) -> Result<Self, WasmBotsError> {
		match value {
			0 => Ok(MoveResult::Succeeded),
			1 => Ok(MoveResult::Failed),
			2 => Ok(MoveResult::Invalid),
			3 => Ok(MoveResult::Error),
			_ => Err(WasmBotsError::InvalidData)
		}
	}
}

#[repr(u8)]
#[derive(Debug, Copy, Clone, PartialEq, Eq)]
pub enum TileType {
	Void = 0,
	Floor = 1,
	OpenDoor = 2,
	ClosedDoor = 3,
	Wall = 4,
}

impl Default for TileType {
	fn default() -> Self { TileType::Void }
}

impl TryFrom<u8> for TileType {
	type Error = WasmBotsError;

	fn try_from(value: u8) -> Result<Self, WasmBotsError> {
		match value {
			0 => Ok(TileType::Void),
			1 => Ok(TileType::Floor),
			2 => Ok(TileType::OpenDoor),
			3 => Ok(TileType::ClosedDoor),
			4 => Ok(TileType::Wall),
			_ => Err(WasmBotsError::InvalidData)
		}
	}
}

#[repr(u8)]
#[derive(Debug, Copy, Clone, PartialEq, Eq)]
pub enum Direction {
	North = 0,
	Northeast = 1,
	East = 2,
	Southeast = 3,
	South = 4,
	Southwest = 5,
	West = 6,
	Northwest = 7,
}

impl Default for Direction {
	fn default() -> Self { Direction::North }
}

impl TryFrom<u8> for Direction {
	type Error = WasmBotsError;

	fn try_from(value: u8) -> Result<Self, WasmBotsError> {
		match value {
			0 => Ok(Direction::North),
			1 => Ok(Direction::Northeast),
			2 => Ok(Direction::East),
			3 => Ok(Direction::Southeast),
			4 => Ok(Direction::South),
			5 => Ok(Direction::Southwest),
			6 => Ok(Direction::West),
			7 => Ok(Direction::Northwest),
			_ => Err(WasmBotsError::InvalidData)
		}
	}
}

#[derive(Default)]
pub struct Point {
	pub x: i16,
	pub y: i16,
}

impl Point {
	fn get_size_in_bytes(&self) -> usize {
		4
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<Point, WasmBotsError> {
		let x = reader.read_i16()?;
		let y = reader.read_i16()?;
		Ok(Point {x, y})
	}

	pub fn write_bytes(&self, writer: &mut Vec<u8>) {
		writer.extend(self.x.to_le_bytes());
		writer.extend(self.y.to_le_bytes());
	}
}

#[derive(Default)]
pub struct _Error {
	pub description: String,
}

impl MessageCodec for _Error {
	fn get_message_type(&self) -> MessageType {
		MessageType::_Error
	}

	fn get_size_in_bytes(&self) -> usize {
		let mut size: usize = 0;
		size += self.description.len();
		size += 1;
		size
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<_Error, WasmBotsError> {
		let description = reader.read_string()?;
		Ok(_Error {description})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(1_u8);
		}
		writer.extend((self.description.len() as u8).to_le_bytes());
		writer.extend(self.description.as_bytes());
	}
}

#[derive(Default)]
pub struct InitialParameters {
	pub params_version: u16,
	pub engine_version_major: u16,
	pub engine_version_minor: u16,
	pub engine_version_patch: u16,
	pub diagonal_movement: bool,
	pub player_stride: u8,
	pub player_open_reach: u8,
}

impl MessageCodec for InitialParameters {
	fn get_message_type(&self) -> MessageType {
		MessageType::InitialParameters
	}

	fn get_size_in_bytes(&self) -> usize {
		11
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<InitialParameters, WasmBotsError> {
		let params_version = reader.read_u16()?;
		let engine_version_major = reader.read_u16()?;
		let engine_version_minor = reader.read_u16()?;
		let engine_version_patch = reader.read_u16()?;
		let diagonal_movement = reader.take_byte()? > 0;
		let player_stride = reader.take_byte()?;
		let player_open_reach = reader.take_byte()?;
		Ok(InitialParameters {params_version, engine_version_major, engine_version_minor, engine_version_patch, diagonal_movement, player_stride, player_open_reach})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(2_u8);
		}
		writer.extend(self.params_version.to_le_bytes());
		writer.extend(self.engine_version_major.to_le_bytes());
		writer.extend(self.engine_version_minor.to_le_bytes());
		writer.extend(self.engine_version_patch.to_le_bytes());
		writer.push(if self.diagonal_movement {1_u8} else {0_u8});
		writer.push(self.player_stride);
		writer.push(self.player_open_reach);
	}
}

#[derive(Default)]
pub struct PresentCircumstances {
	pub last_tick_duration: u32,
	pub last_move_result: MoveResult,
	pub current_hit_points: u16,
	pub surroundings: Vec<TileType>,
	pub surroundings_radius: u8,
}

impl MessageCodec for PresentCircumstances {
	fn get_message_type(&self) -> MessageType {
		MessageType::PresentCircumstances
	}

	fn get_size_in_bytes(&self) -> usize {
		let mut size: usize = 0;
		size += self.surroundings.len() * 1;
		size += 10;
		size
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<PresentCircumstances, WasmBotsError> {
		let last_tick_duration = reader.read_u32()?;
		let last_move_result = reader.read_u8()?;
		let last_move_result = MoveResult::try_from(last_move_result)?;
		let current_hit_points = reader.read_u16()?;
		let surroundings_len = reader.read_u16()?;
		let mut surroundings: Vec<TileType> = Vec::new();
		for _ in 0..surroundings_len {
			let _el = reader.read_u8()?;
			let _el = TileType::try_from(_el)?;
			surroundings.push(_el);
		}
		let surroundings_radius = reader.take_byte()?;
		Ok(PresentCircumstances {last_tick_duration, last_move_result, current_hit_points, surroundings, surroundings_radius})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(3_u8);
		}
		writer.extend(self.last_tick_duration.to_le_bytes());
		writer.push(self.last_move_result as u8);
		writer.extend(self.current_hit_points.to_le_bytes());
		writer.extend((self.surroundings.len() as u16).to_le_bytes());
		for _el in &self.surroundings {
			writer.push(*_el as u8);
		}
		writer.push(self.surroundings_radius);
	}
}

#[derive(Default)]
pub struct Wait {
}

impl MessageCodec for Wait {
	fn get_message_type(&self) -> MessageType {
		MessageType::Wait
	}

	fn get_size_in_bytes(&self) -> usize {
		0
	}

	fn from_bytes(_reader: &mut BufferReader) -> Result<Wait, WasmBotsError> {
		Ok(Wait {})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(4_u8);
		}
	}
}

#[derive(Default)]
pub struct Resign {
}

impl MessageCodec for Resign {
	fn get_message_type(&self) -> MessageType {
		MessageType::Resign
	}

	fn get_size_in_bytes(&self) -> usize {
		0
	}

	fn from_bytes(_reader: &mut BufferReader) -> Result<Resign, WasmBotsError> {
		Ok(Resign {})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(5_u8);
		}
	}
}

#[derive(Default)]
pub struct MoveTo {
	pub direction: Direction,
	pub distance: u8,
}

impl MessageCodec for MoveTo {
	fn get_message_type(&self) -> MessageType {
		MessageType::MoveTo
	}

	fn get_size_in_bytes(&self) -> usize {
		2
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<MoveTo, WasmBotsError> {
		let direction = reader.read_u8()?;
		let direction = Direction::try_from(direction)?;
		let distance = reader.take_byte()?;
		Ok(MoveTo {direction, distance})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(6_u8);
		}
		writer.push(self.direction as u8);
		writer.push(self.distance);
	}
}

#[derive(Default)]
pub struct Open {
	pub target: Point,
}

impl MessageCodec for Open {
	fn get_message_type(&self) -> MessageType {
		MessageType::Open
	}

	fn get_size_in_bytes(&self) -> usize {
		4
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<Open, WasmBotsError> {
		let target = Point::from_bytes(reader)?;
		Ok(Open {target})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(7_u8);
		}
		self.target.write_bytes(writer);
	}
}

#[derive(Default)]
pub struct Close {
	pub target: Point,
}

impl MessageCodec for Close {
	fn get_message_type(&self) -> MessageType {
		MessageType::Close
	}

	fn get_size_in_bytes(&self) -> usize {
		4
	}

	fn from_bytes(reader: &mut BufferReader) -> Result<Close, WasmBotsError> {
		let target = Point::from_bytes(reader)?;
		Ok(Close {target})
	}

	fn write_bytes(&self, writer: &mut Vec<u8>, tag: bool) {
		if tag {
			writer.push(8_u8);
		}
		self.target.write_bytes(writer);
	}
}
