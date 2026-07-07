extends Node
## Global signal hub, autoloaded as `EventBus` (registered in project.godot).
##
## Systems that must not know about each other communicate here: a door
## announces passage, and the main scene, time system, and UI each react
## without the door knowing they exist.

## Emitted after a creature passes through a door. `time_effect` is -1, 0 or +1.
signal door_passed(door: Node, time_effect: int)

## Emitted when the world's time value changes (see GameState.current_time).
signal time_changed(new_time: int)

## Emitted when the Outer God transfers to a new vessel.
signal vessel_changed(new_vessel: Node)
