# Who Killed Uskar? — Godot Project

The actual game, built with Godot 4.x. Design notes live in `../notes/`;
the Python prototypes in `../models/` are the domain-model reference.

## Layout

| Path | Purpose |
|------|---------|
| `project.godot` | The project file. Godot recognizes a folder as a project by this file. Registers the main scene and the autoload singletons. |
| `scenes/main/` | The root scene. Hosts the currently active room under `RoomHost` and the overlay UI under a `CanvasLayer`. |
| `scenes/rooms/` | One scene per room (`room_01.tscn`, …), mirroring `notes/rooms/`. Instantiated one at a time under `RoomHost`. All rooms share `room.gd` and set their own `label`. |
| `scenes/creatures/` | Creature scenes: the player-controlled `vessel.tscn` and NPCs like `lisspeg.tscn`. |
| `scenes/objects/` | Interactable world objects (`door.tscn`, `painting.tscn`) and the `Interactable` base class. |
| `scenes/ui/` | Reusable UI scenes: dialogue box, inventory panel, the room's label-question display. |
| `core/` | Pure GDScript game logic with no scene attached — soul, time-tree, inventory — mirroring `../models/`. |
| `autoload/` | Singleton scripts loaded before any scene: `GameState` (current time, current vessel) and `EventBus` (global signals). |
| `resources/` | Data files (`.tres`) built on custom `Resource` classes: door definitions, key types, conversation data. Keeps content out of code. |
| `assets/` | Art, fonts, audio. |

## Conventions

- Files and directories: `snake_case`. Node names and `class_name`s: `PascalCase` (Godot convention).
- Rooms are content, systems are code: a room scene should be assembled from reusable pieces (Door, Creature, Artifact) configured with data from `resources/`, not bespoke scripts.
- Cross-system communication goes through `EventBus` signals; shared state lives in `GameState`.

## Running

Requires Godot 4.3+ (https://godotengine.org/download). Open this folder in
the Godot editor (Import → select `project.godot`), or from the terminal:

```sh
godot --path app        # run the game
godot --path app -e     # open the editor
```
