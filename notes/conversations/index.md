# Conversations — Who Killed Uskar?

This package holds the game's conversation scripts. A conversation is potentially large and branched: it can fork on the player's choices, on what the player tells a character, and on the state of the world (time value, soul soundness, prior events). Each conversation therefore lives in its own file with its own internal logic, rather than being crammed into a single document.

Conversations unfold the story. Characters refer to the player's character using their known identity — the original vessel has no name, so characters either address them by a role-name (e.g. "prophet," "traveler") or avoid naming them at all. For the mechanics of dialogue-bearing creatures, see [mechanics/creatures.md](mechanics/creatures.md). For character profiles, see [story/characters.md](story/characters.md).

---

## File Conventions

Each conversation file opens with a header block:

- **Participants** — which creatures take part.
- **Room / Time** — where and when in the time-tree it occurs.
- **Trigger** — what causes the conversation to begin.
- **Tone** — the emotional register to write in.

The body is then written as a script. Stage directions are in *italics*; speaker lines are prefixed with the speaker name in bold. Branch points are marked explicitly so the conversation's logic stays legible:

- **`### Player Choice: <label>`** — a fork the player selects between. Each branch plays out its own continuation.
- **`[PLAYER CHOICE] "<line>"`** — an optional question the player may ask, which does not change the main flow.
- **State conditions** ("if the player has X," "if soul soundness is below Y") are called out in the branch heading so the controlling logic is clear.

A conversation may re-enter itself (e.g. refuse, then return) — restart points are noted in the script.

---

## Conversations

| File | Participants | Room / Time | Summary |
|------|--------------|-------------|---------|
| [lisspeg_room_01.md](lisspeg_room_01.md) | Lisspeg | Room 1, T=0 | The first meeting; Lisspeg hands over Silarmousch's Ward Key. |
| [bournache_note_room_03.md](bournache_note_room_03.md) | Bournache (written) | Room 3 | The exposition note on the reading stand. |
| [bournache_sacrifice_room_03.md](bournache_sacrifice_room_03.md) | Bournache | Room 3, T+1 | Bournache offers his soul; accept / refuse branches. |
| [bol_room_04.md](bol_room_04.md) | Bol | Room 4 | The nectar scene; drink / refuse branches. |
| [sekmidorgue_room_05.md](sekmidorgue_room_05.md) | Sekmidorgue | Room 5 | The five disciplines, tutorial debriefs, and completion. |

Further conversations will be added as Act 4 and Act 5 are developed.
