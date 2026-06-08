# Who Killed Uskar? — Master Overview

## Concept

"Who Killed Uskar?" is a single-player, text-and-exploration game set in a medieval world of castles, mages, monsters, and gods. The player begins with no knowledge of their character's identity, no knowledge of who Uskar is, and only one directive: find out who killed Uskar.

The game is a philosophical puzzle disguised as a mystery. Its central concern is Kant's third antinomy — the conflict between causal determinism and genuine freedom — expressed through game mechanics rather than dialogue. The player is not a character inside the world. They are an Outer God observing and inhabiting it.

## Premise

The player starts controlling an unnamed creature inside a medieval castle chamber. They do not know who they are, who Uskar is, or how they arrived. The opening rooms withhold context deliberately. The true nature of the player — a divine being who inhabits creatures from outside the world — is revealed gradually through the course of the game.

The game world is populated by creatures who are aware, to varying degrees, that gods may be controlling them. Some creatures seek to strengthen their souls and draw closer to the divine. Others seek to destroy their souls and escape divine control entirely. That escape has a price: losing one's soul turns a creature into a monster.

## Philosophical Themes

**Freedom vs. determinism.** Creatures with intact souls are subject to the will of gods. Destroying one's soul achieves freedom but destroys identity in the same act. The player is asked, across the length of the game, whether freedom from the divine is actually desirable.

**Identity and selfhood.** The soul is the seat of a creature's attributes, morals, and personality. Damaging it does not liberate the self — it erases it. The creature that walks free of god-control is not the same creature that chose freedom.

**The subjective nature of time and knowledge.** Time is structured around the perceiver. The player, as an Outer God, understands the world through a time-bound framework. Events outside the bounds of time cannot be perceived by a god and therefore cannot be controlled. This is the deepest form of freedom — and the least understood.

**The soul as gift and cage.** A strong soul grants magical power, divine connection, and full personhood. A weak soul yields demonic ability and autonomy from gods. The soul is simultaneously what connects a creature to something greater than itself and what binds it to a will not its own.

## The Player's Role

The player is an Outer God. They do not exist inside the world. They inhabit creatures — called vessels — and act through them.

At any moment the player controls exactly one vessel. If that vessel dies or loses its mind, the player must transfer control to another creature. A creature can be controlled only if it has a soul and has been encountered (is known to the player). See [gameplay.md](gameplay.md) for vessel transfer rules.

Being controlled by a god alters a creature. It may shift their thoughts or incentives. The creature's mind deteriorates the longer it is controlled: each unit of time that passes while under god-control costs the creature one unit of mental integrity. When mental integrity reaches zero the creature is no longer a viable vessel.

## Time

Time in this world is discrete. It is represented as an integer. The game begins at T=0.

When a creature is inside a room, time does not advance on its own. Time changes only when a creature passes through a door that carries a time-increment or time-decrement effect. Some doors increment time by +1, some decrement by -1, and some leave time unchanged.

Time is modeled as a tree. Each node is a time-state. A node may have multiple child nodes (branching forward) but only one parent. Going back in time makes the original forward branch unreachable. Going forward from a past node creates a new child branch.

Splitting time — deliberately going back to create a new branch — is a cardinal sin. See [world/souls.md](world/souls.md).

If a creature passes through a time-decrement door and arrives at a past time in a state different from what existed at that time (different soul purity, different artifacts), a duplication occurs: the world at that time remains as it was, and the creature enters as an additional presence. This is the mechanism by which the world's population and artifact count can grow.

For the full time model see [mechanics/time.md](mechanics/time.md).

## Souls

A soul is the link between a creature and a god. It is modeled as a discrete set of attributes. Damaging a soul removes attributes. Destroying a soul completely turns the creature into a monster.

**Soul strength spectrum:**
- Wizards hold the strongest souls. Their divine connection is pure and stable. They are easiest to control and most capable magically.
- Demons hold weak souls. Their divine connection is degraded. They gain abilities that are inaccessible to creatures with strong souls.
- Monsters have no soul at all. They are beyond divine reach and beyond identity.

**Cardinal sins** damage the soul:
- Murder
- Lying or deceit
- Permanently morphing an object
- Splitting time (going back and creating a new branch)

**Soul purification** restores soul attributes:
- Slaying monsters
- Receiving a willing sacrifice from another creature (the sacrificing creature typically dies in the act)

Soul strength determines which doors are visible. Demonic doors are visible only to creatures with weakened souls. Divine doors are visible only to creatures with strong souls. See [world/souls.md](world/souls.md) and [doors.md](doors.md).

## Magic

Magic is an entity in this world, not a skill. To ask Magic to do something, a creature must have a soul. The stronger the soul, the stronger and more reliable the magical effect. A creature with a weak soul can still invoke Magic but with diminished results and delayed execution. A creature with no soul cannot invoke Magic at all.

Magical weapons require a soul to wield. A vessel controlled by a god with weak soul can only deal physical damage.

## Objects and Morphing

Objects can morph — they can acquire different characteristics, such as a door changing which room it connects to or what effect it has on time. Objects cannot change their fundamental kind.

Objects with souls cannot be morphed. Morphing is temporary by default and reverts after use. Permanently morphing an object is a cardinal sin.

## Rooms

Each room is labeled with a question. That question is not merely a name — it is the thematic lens through which the room is experienced. When the player returns to a room, the question retains meaning, but the answer may have changed or deepened.

Examples:
- Room 1: "Who killed Uskar?"
- Room 2: "How should I get out?"
- Room 4: "Who am I?"
- Room 5: "How does magic work?"

For room-by-room detail see [rooms.md](rooms.md) and the files in [rooms/](rooms/).

## Key Characters

**The unnamed creature** — the player's first vessel. Their identity is unknown at the start and gradually revealed.

**Lisspeg** — a simple creature waiting in Room 1, guided by the mage Silarmousch. He believes the player's character is a prophesied figure sent to deliver him to the gods. He carries a key and gives it willingly. He is killed by the player to weaken the vessel's soul.

**Silarmousch** — an old mage who set the events in Room 1 and 2 in motion. His intent is to direct the player's creature down a predetermined path.

**Bournache** — a mage who acts as a counter-force to Silarmousch. He altered Room 3 via a magic painting to intercept and guide the player. He offers his own soul as a willing sacrifice to strengthen the player's vessel.

**Bol** — an apprentice mage placed in Room 4 by Bournache. He offers the vessel poison, which kills it, allowing the player to take control of Bol. Bol did not lie — the door does become visible once the player inhabits him. Bol's soul was unknowingly made available for god-control by Bournache's actions.

**Sekmidorgue** — Bol's mentor in Room 5, who takes over instruction after Bournache's departure on a "sacred mission."

For the full character roster see [characters.md](characters.md).

## Narrative Structure

The game's mystery — who killed Uskar — is a frame that gives the player direction while the game's true subject unfolds around them. The player is placed in a situation where:

1. They do not know who they are (identity).
2. They do not know what time means or how to move through it (time and causality).
3. They do not know what a soul is or why it matters (freedom and divine connection).
4. They are asked to commit acts that damage their own vessel's soul in order to progress.

Each section of the game answers one of these questions while deepening the others. The answer to "who killed Uskar" is available only once all the other questions have been lived through.

The deeper answer — suggested by the note in ideas.md — is that Uskar's death and the player's summoning were engineered by creatures who understood that the only real freedom from a god is to operate entirely outside time, and therefore outside the god's understanding. The game puts the player through a series of antinomies so that the creatures involved may achieve exactly that.

## Design Constraints

- The game does not use traditional save states. Death is real. Time mechanics compensate for this — a player who loses a vessel can navigate time to find a viable transfer target.
- Rooms are designed so that revisiting them is meaningful. A question answered on a first visit is not necessarily answered in the same way on a second.
- All progression-blocking actions require the player to make irreversible choices (killing, sinning, sacrificing). There is no neutral path.
- The player's experience of constraint — of being unable to do what seems obvious — mirrors what the game's creatures experience under divine control.
