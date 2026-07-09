class_name Room
extends Node2D
## Base script shared by every room scene. A room is content, not code:
## it composes Door / Creature / Painting pieces and sets its label.
##
## The label is the question the room is experienced through
## (see notes/overview.md — "Rooms").

@export var label: String = ""
