class_name Interactable
extends Area2D
## Base class for anything the vessel can walk up to and interact with:
## creatures, doors, paintings, artifacts.
##
## The vessel's Reach area detects Interactables it overlaps; pressing the
## "interact" action calls interact() on the nearest one. Subclasses override
## interact() — it may await dialogue, so it runs as a coroutine.

## Shown above the vessel's head when this is the nearest interactable,
## e.g. "Talk to Lisspeg".
@export var prompt: String = "Interact"


func interact(_vessel: Vessel) -> void:
	pass


## Convenience for subclasses: the single dialogue box registered in the
## "dialogue_box" group by the main scene's UI.
func dialogue() -> DialogueBox:
	return get_tree().get_first_node_in_group("dialogue_box")
