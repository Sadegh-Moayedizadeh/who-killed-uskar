extends Interactable
## A door, per notes/mechanics/doors.md: one-directional, with a lock
## (key type), a time effect (-1 / 0 / +1) and a single destination.
##
## The door does not change rooms itself — it emits EventBus.door_passed and
## the main scene applies the time effect and swaps the room. Soul filters
## and visibility rules are not implemented yet.

@export var locked := true
## Key type required while locked (see notes/mechanics/artifacts.md).
@export var required_key: StringName = &""
## -1, 0 or +1 — applied to GameState.current_time on passage.
@export var time_effect := 0
## Scene file of the room this door leads to.
@export_file("*.tscn") var destination_scene: String


func interact(vessel: Vessel) -> void:
	var box := dialogue()
	if locked:
		if not vessel.has_key(required_key):
			await box.narrate("The door is locked. The lock is old, warded, and " +
					"entirely indifferent to you.")
			box.close()
			return
		locked = false
		await box.narrate("The ward key turns as if the lock had been waiting for it.")
	box.close()
	EventBus.door_passed.emit(self, time_effect)
