# Who Killed Uskar? — Master Notes Index

"Who Killed Uskar?" is a mystery-driven dungeon exploration game in which the player, an Outer God, possesses characters and guides them through a series of rooms to uncover the truth behind Uskar's death. The game world operates on a discrete integer time system with branching time-trees, a soul attribute system tied to cardinal sins and purification, and a layered set of metaphysical rules governing combat, artifacts, doors, and divine possession. The design philosophy treats every mechanic as an expression of the world's moral and spiritual logic.

---

## How These Notes Are Structured

These notes follow a modular, OOP-style organization: each file describes one system or domain in isolation, with cross-references where systems interact. This keeps each file focused and prevents any single document from becoming unwieldy. When understanding a mechanic, read the file for that system; when understanding the full picture, use the reading order below.

### How to Read These Notes

1. Start with [overview.md](overview.md) for the big picture — themes, design philosophy, and core vision.
2. Read the [world/](world/) files to understand the metaphysical rules the game world runs on.
3. Read the [mechanics/](mechanics/) files to understand gameplay systems.
4. Read the [story/](story/) files to understand the narrative arc and characters.
5. Read the [rooms/](rooms/) files to understand each individual location.
6. Read the [books/](books/) files to understand in-world lore.

---

## Files

### Top-Level

| File | Purpose |
|------|---------|
| [overview.md](overview.md) | Master game concept, themes, and design philosophy |
| [ideas.md](ideas.md) | Remaining raw ideas not yet fully incorporated into other files |

---

### World

Metaphysical and systemic rules that govern how the game world operates.

| File | Purpose |
|------|---------|
| [world/souls.md](world/souls.md) | Soul system: attributes, cardinal sins, purification methods, and the effects of soul strength |
| [world/time.md](world/time.md) | Time mechanics: discrete integer time, the time-tree structure, and how inventory behaves across branches |
| [world/gods.md](world/gods.md) | Gods, the Outer God (the player), and possession mechanics |

---

### Mechanics

Gameplay systems and their rules.

| File | Purpose |
|------|---------|
| [mechanics/artifacts.md](mechanics/artifacts.md) | All artifact types: keys, swords, shields, poison, paintings, dolls, notes, locks |
| [mechanics/doors.md](mechanics/doors.md) | Door types, filters, time effects, and morphing rules |
| [mechanics/combat.md](mechanics/combat.md) | Combat moves, weapons, stamina, and health |
| [mechanics/dialogues.md](mechanics/dialogues.md) | Key dialogue scripts and conversation flows |

---

### Rooms

Individual room definitions, each covering its label, contents, and flows.

| File | Purpose |
|------|---------|
| [rooms/room_01.md](rooms/room_01.md) | Room 1 definition |
| [rooms/room_02.md](rooms/room_02.md) | Room 2 definition |
| [rooms/room_03.md](rooms/room_03.md) | Room 3 definition |
| [rooms/room_04.md](rooms/room_04.md) | Room 4 definition |
| [rooms/room_05.md](rooms/room_05.md) | Room 5 definition |
| [rooms/room_06.md](rooms/room_06.md) | Room 6 definition |
| [rooms/room_07.md](rooms/room_07.md) | Room 7 definition |
| [rooms/room_08.md](rooms/room_08.md) | Room 8 definition |
| [rooms/room_09.md](rooms/room_09.md) | Room 9 definition |
| [rooms/room_10.md](rooms/room_10.md) | Room 10 definition |

---

### Story

Narrative arc and character profiles.

| File | Purpose |
|------|---------|
| [story/narrative.md](story/narrative.md) | Main story arc, the mystery, themes, and act structure |
| [story/characters.md](story/characters.md) | All character profiles: confirmed, secondary, and historical |

---

### Books

In-world library texts available to players.

| File | Purpose |
|------|---------|
| [books/index.md](books/index.md) | Catalog of all in-world library books |
| [books/the_adventures_of_gounargoun.md](books/the_adventures_of_gounargoun.md) | Full text of the mythological divine-path story |
| [books/the_pilgrimage_of_pyutkah.md](books/the_pilgrimage_of_pyutkah.md) | Full text of the pilgrim's journey story |

---

## Key Design Decisions

These are resolved inconsistencies and canonical choices. When any other note conflicts with these, this index takes precedence.

- **Canonical character name: USKAR** — early notes contain the variant spelling "Uskerr"; this is an error. The correct spelling throughout all files is USKAR.
- **Room 2 label: "How should I get out?"** — an intermediate draft changed this to "What is the cost of progression?", but the label has been reverted to the original design intent as recorded in general.md and questions.md.
- **The player is an Outer God** — the player does not directly control a character; they possess characters from outside the world. This distinction is fundamental to the game's themes and mechanics.
- **Cardinal sins:** murder, lying, deceit, permanent morphing, splitting time.
- **Soul purification methods:** slaying monsters, receiving willing sacrifice.
