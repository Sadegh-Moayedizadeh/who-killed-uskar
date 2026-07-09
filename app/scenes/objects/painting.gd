extends Interactable
## A wall painting: physical, untakeable, purely informational.
## Environmental lore — early hints legible only in hindsight
## (see notes/rooms/room_01.md).

@export_multiline var description := ""


func interact(_vessel: Vessel) -> void:
	var box := dialogue()
	await box.narrate(description)
	box.close()
