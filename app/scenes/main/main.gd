extends Node
## Root scene of the game. Owns two children:
##  - RoomHost: the single active room scene is instantiated under this node.
##    Changing rooms means freeing the current child and instancing the next.
##  - UI: a CanvasLayer for dialogue, inventory, and the room's label-question,
##    drawn above whatever room is loaded.


func _ready() -> void:
	print("Who Killed Uskar? — project boots. T=%d" % GameState.current_time)
