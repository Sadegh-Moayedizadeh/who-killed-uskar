extends Interactable
## Lisspeg — the simple, earnest creature waiting in Room 1.
## Dialogue adapted from notes/conversations/lisspeg_room_01.md.
##
## He believes the player's vessel is the promised prophet, hands over
## Silarmousch's Ward Key without conditions, and answers three optional
## questions. He cannot be made suspicious.

const KEY_ID := &"silarmousch_ward_key"

var _met := false
var _key_given := false


func interact(vessel: Vessel) -> void:
	var box := dialogue()

	if not _met:
		_met = true
		await box.narrate("The creature looks up the moment you approach. His face " +
				"breaks into an expression of staggered relief — the kind that only " +
				"comes after a very long wait.")
		await box.say("Lisspeg", "You came.")
		await box.say("Lisspeg", "You actually came. I have waited so long in this " +
				"room. I never doubted — not once, not for a single day — but still. " +
				"To see it. To see you standing there.")
		await box.say("Lisspeg", "Silarmousch the mage came to me in a dream. A real " +
				"dream — the kind that doesn't fade when you wake, the kind that stays " +
				"with you like a second skin. He told me to come to this chamber and " +
				"wait. He said a prophet would arrive. Someone chosen. Someone who " +
				"would carry me forward — toward the gods. He gave me this key and " +
				"said: give it to the one who comes through that door.")
		await box.narrate("He produces a key and holds it out with both hands, as if " +
				"offering something sacred.")
		await box.say("Lisspeg", "That is you. I know it is you.")
	elif _key_given:
		await box.narrate("Lisspeg waits in quiet contentment. He has done what he " +
				"was here to do.")
	else:
		await box.narrate("Lisspeg is still holding the key out to you, patient as " +
				"stone.")

	while true:
		var actions: Array[StringName] = []
		var labels: Array[String] = []
		if not _key_given:
			actions.append(&"take_key")
			labels.append("Take the key.")
		actions.append(&"ask_uskar")
		labels.append("\"Who is Uskar?\"")
		actions.append(&"ask_silarmousch")
		labels.append("\"Who is Silarmousch?\"")
		actions.append(&"ask_door")
		labels.append("\"What is beyond the door?\"")
		actions.append(&"leave")
		labels.append("Say nothing.")

		match actions[await box.choose(labels)]:
			&"take_key":
				await _give_key(box, vessel)
			&"ask_uskar":
				await _ask_uskar(box)
			&"ask_silarmousch":
				await _ask_silarmousch(box)
			&"ask_door":
				await _ask_door(box)
			&"leave":
				box.close()
				return


func _give_key(box: DialogueBox, vessel: Vessel) -> void:
	await box.say("Lisspeg", "Yes. Take it. It was always meant for you.")
	vessel.add_key(KEY_ID)
	await box.narrate("You received Silarmousch's Ward Key.")
	await box.say("Lisspeg", "The door at the far end — that key will open it. Beyond " +
			"it, I'm told, is the way forward. I don't know more than that. " +
			"Silarmousch said what was necessary and no more. But I trust it. I've " +
			"trusted it all this time.")
	await box.say("Lisspeg", "I am glad I waited.")
	_key_given = true


func _ask_uskar(box: DialogueBox) -> void:
	await box.narrate("Lisspeg pauses. A small crease forms across his brow — not " +
			"suspicion, just the effort of reaching for something half-heard.")
	await box.say("Lisspeg", "Uskar. I've heard that name. Somewhere. Someone said it " +
			"once, a long time ago — I couldn't tell you who now. There was something " +
			"sad about how they said it. Like someone who was lost.")
	await box.say("Lisspeg", "I don't know more than that. I'm sorry. Is Uskar " +
			"someone you're looking for?")


func _ask_silarmousch(box: DialogueBox) -> void:
	await box.narrate("Something in Lisspeg settles into reverence.")
	await box.say("Lisspeg", "A great mage. One of the greatest living, they say. He " +
			"came to me in that dream and I knew — I just knew — that he was a figure " +
			"of real power. Not the kind that shouts. The kind that doesn't need to.")
	await box.say("Lisspeg", "He was kind to me. He explained everything calmly. He " +
			"told me what was coming, what to do, what the key was for. Some people " +
			"would have been frightened by a dream like that. I felt chosen. I felt " +
			"like the luckiest creature alive.")
	await box.say("Lisspeg", "Is he known to you?")


func _ask_door(box: DialogueBox) -> void:
	await box.narrate("Lisspeg looks at the door with the slight squint of a creature " +
			"thinking carefully about something they actually know very little about.")
	await box.say("Lisspeg", "Forward. That's all I know. Silarmousch said it leads " +
			"forward and that was enough for me. I didn't ask for a map.")
	await box.say("Lisspeg", "Maybe I should have asked more questions. But I've " +
			"found that when something feels true all the way down in your bones, " +
			"asking too many questions just gets in the way.")
