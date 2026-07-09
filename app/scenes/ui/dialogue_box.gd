class_name DialogueBox
extends Control
## The dialogue/narration panel at the bottom of the screen.
##
## Content scripts (creatures, doors, paintings) drive it as a coroutine:
##
##     var box := dialogue()
##     await box.say("Lisspeg", "You came.")
##     var choice := await box.choose(["Take the key.", "Say nothing."])
##     box.close()
##
## say() resumes when the player presses interact/accept; choose() resumes
## when a button is pressed and returns the chosen index. While the box is
## open, GameState.input_locked keeps the vessel from moving.

signal _advanced
signal _chose(index: int)

var _is_open := false

@onready var _speaker: Label = $Panel/Margin/Column/Speaker
@onready var _text: Label = $Panel/Margin/Column/Text
@onready var _choices: VBoxContainer = $Panel/Margin/Column/Choices
@onready var _hint: Label = $Panel/Margin/Column/Hint


func _ready() -> void:
	add_to_group("dialogue_box")
	visible = false


## Show one line and wait until the player advances. An empty speaker
## renders the line as narration.
func say(speaker: String, text: String) -> void:
	_open()
	_speaker.visible = not speaker.is_empty()
	_speaker.text = speaker
	_text.text = text
	_hint.visible = true
	await _advanced


func narrate(text: String) -> void:
	await say("", text)


## Present options as buttons and wait; returns the index of the pick.
func choose(options: Array[String]) -> int:
	_open()
	_hint.visible = false
	for old in _choices.get_children():
		old.queue_free()
	for i in options.size():
		var button := Button.new()
		button.text = options[i]
		button.pressed.connect(func() -> void: _chose.emit(i))
		_choices.add_child(button)
	_choices.visible = true
	(_choices.get_child(0) as Button).grab_focus()
	var index: int = await _chose
	_choices.visible = false
	for old in _choices.get_children():
		old.queue_free()
	return index


## Content scripts must call this when their interaction ends, so the box
## hides and the vessel regains control.
func close() -> void:
	_is_open = false
	visible = false
	GameState.input_locked = false


func _open() -> void:
	if not _is_open:
		_is_open = true
		visible = true
		GameState.input_locked = true


func _unhandled_input(event: InputEvent) -> void:
	if not _is_open or _choices.visible:
		return
	if event.is_action_pressed("interact") or event.is_action_pressed("ui_accept"):
		get_viewport().set_input_as_handled()
		_advanced.emit()
