extends Node
## Global game state, autoloaded as `GameState` (registered in project.godot).
##
## Holds the facts that outlive any single room scene: the current time value
## and the vessel the Outer God currently possesses. Rooms and doors read and
## mutate the world through this singleton instead of referencing each other.
##
## Design source: notes/world/time.md, notes/world/gods.md.

## Integer time value of the world node the player is currently at.
## The exact starting value (T₀) is still an open design decision.
var current_time: int = 0

## The creature the player currently possesses. Typed as Node for now;
## it will become a Creature once that scene/class exists.
var current_vessel: Node = null

## True while the dialogue box is open. The vessel refuses to move or
## interact while this is set, so conversation input never leaks into
## the world.
var input_locked: bool = false
