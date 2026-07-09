class_name Vessel
extends CharacterBody2D
## The creature the Outer God currently controls. For now this is the unnamed
## original vessel of Room 1; later, possession will move this control to
## other creatures.
##
## Handles movement, finding the nearest Interactable in reach, and a small
## floating prompt that names the available interaction.

const SPEED := 260.0

## Key artifacts carried by this creature, identified by StringName
## (e.g. &"silarmousch_ward_key"). Will grow into a full Inventory later,
## mirroring models/inventory.py.
var keys: Array[StringName] = []

@onready var _reach: Area2D = $Reach
@onready var _prompt: Label = $Prompt


func _physics_process(_delta: float) -> void:
	if GameState.input_locked:
		velocity = Vector2.ZERO
		_prompt.visible = false
		return
	velocity = Input.get_vector("move_left", "move_right", "move_up", "move_down") * SPEED
	move_and_slide()
	_update_prompt()


func _unhandled_input(event: InputEvent) -> void:
	if GameState.input_locked:
		return
	if event.is_action_pressed("interact"):
		var target := _nearest_interactable()
		if target != null:
			get_viewport().set_input_as_handled()
			target.interact(self)


func add_key(id: StringName) -> void:
	if not keys.has(id):
		keys.append(id)


func has_key(id: StringName) -> bool:
	return keys.has(id)


func _nearest_interactable() -> Interactable:
	var best: Interactable = null
	var best_distance := INF
	for area in _reach.get_overlapping_areas():
		if area is Interactable:
			var distance := global_position.distance_to(area.global_position)
			if distance < best_distance:
				best_distance = distance
				best = area
	return best


func _update_prompt() -> void:
	var target := _nearest_interactable()
	_prompt.visible = target != null
	if target != null:
		_prompt.text = "[E] %s" % target.prompt
