extends Node
## Root scene of the game. Owns the vessel and the currently loaded room.
##
## Room flow: a Door emits EventBus.door_passed → this script applies the
## door's time effect to GameState and swaps the room scene under RoomHost.
## The vessel is a sibling of the room (not a child), so it survives swaps —
## the creature persists while the world around it changes.

const FIRST_ROOM := "res://scenes/rooms/room_01.tscn"
const VesselScene := preload("res://scenes/creatures/vessel.tscn")

var _vessel: Vessel
var _room: Room

@onready var _room_host: Node2D = $RoomHost
@onready var _room_label: Label = $UI/RoomLabel
@onready var _time_label: Label = $UI/TimeLabel


func _ready() -> void:
	EventBus.door_passed.connect(_on_door_passed)
	EventBus.time_changed.connect(_on_time_changed)
	_on_time_changed(GameState.current_time)
	_vessel = VesselScene.instantiate()
	GameState.current_vessel = _vessel
	_room_host.add_child(_vessel)
	_load_room(FIRST_ROOM)


func _load_room(scene_path: String) -> void:
	if _room != null:
		_room.queue_free()
	_room = load(scene_path).instantiate()
	_room_host.add_child(_room)
	# The room is drawn below the vessel: earlier siblings render first.
	_room_host.move_child(_room, 0)
	var spawn: Marker2D = _room.get_node_or_null("SpawnPoint")
	_vessel.global_position = spawn.global_position if spawn else Vector2(640, 360)
	_room_label.text = _room.label


func _on_door_passed(door: Node, time_effect: int) -> void:
	GameState.current_time += time_effect
	EventBus.time_changed.emit(GameState.current_time)
	# Deferred: the door that emitted this signal lives inside the room we
	# are about to free. Swapping scenes mid-emission would free the emitter.
	var destination: String = door.destination_scene
	_load_room.call_deferred(destination)


func _on_time_changed(new_time: int) -> void:
	_time_label.text = "T = %d" % new_time
