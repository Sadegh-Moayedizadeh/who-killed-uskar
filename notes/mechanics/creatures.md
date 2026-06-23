# Creatures

A creature is any soul-bearing being in the world — the entities the player meets, fights, talks to, and possesses. This document defines what a creature *is* as a game object: the parts it is made of, how it is classified, and how it behaves. For the metaphysics of the soul itself, see [world/souls.md](world/souls.md). For specific named creatures in the story, see [story/characters.md](story/characters.md).

---

## What a Creature Is

A creature is composed of three things:

1. **A body** — its physical presence in a room. The body can be harmed, killed, and (after death) left behind. A body holds an [inventory](artifacts.md) of artifacts.
2. **A soul** — its metaphysical link to the gods and the seat of its attributes. Because a creature contains a soul, it **cannot be morphed** (see [doors.md](doors.md) and [artifacts.md](artifacts.md)) and it **can be possessed** by a god.
3. **A mind** — its own cognitive faculty, separate from the soul. The mind is what divine possession wears down over time. See [world/gods.md](world/gods.md).

A creature is distinct from a **soul-bearing object**. Some objects also carry souls and, like creatures, cannot be morphed and can be controlled by gods — but they have no body or mind of their own. The presence of a soul in an object is not always obvious. See [world/souls.md](world/souls.md).

---

## Soul Alignment

Every creature sits somewhere on a single axis defined by its soul. A soul has a fixed capacity; the part that is pure is its **soul soundness**, and the remainder is **demonic energy** (see [artifacts.md](artifacts.md) for the full N − p model). The balance between the two determines a creature's alignment.

### Divine

High soul soundness, little demonic energy. Wizards and mages sit at this end — souls strong, pure, and deeply attuned to the gods. The divine reach them easily, making them the most capable wielders of magic and the most responsive vessels. Being controlled is not a burden to them; many embrace it. See [world/gods.md](world/gods.md).

### Common

Moderate soundness, moderate demonic energy. Most creatures occupy the middle of the axis. Their divine connection is average — controllable, but with less precision and completeness than a wizard.

### Demonic

Low soul soundness, high demonic energy. Sinners drift toward this end as cardinal sins corrode their souls and demonic energy fills the void. They gain access to demonic artifacts, weapons, and doors that the faithful cannot touch — at the cost of judgment, morality, and divine access. Demonic alignment is not the *absence* of a sound soul; it is the presence of darkness as a substance with its own character.

### Monster

Soul soundness of exactly 0 — the soul is gone entirely. A monster has no divine connection, no personality attributes, no moral instinct, and no capacity for independent thought; it acts on instinct alone. Most monsters were once creatures who destroyed their own souls in pursuit of freedom from divine control. A monster **cannot be possessed** by any god (no soul) and **cannot pass any door** (the absolute floor of the door system, see [doors.md](doors.md)). Slaying a monster that threatens the world is an act of purification for the slayer. See [world/souls.md](world/souls.md).

A creature's alignment is not fixed. Cardinal sins push it toward the demonic and, ultimately, toward becoming a monster; purification acts (slaying monsters, receiving a willing sacrifice) push it back toward the divine.

---

## Characteristics

A creature is tracked through several values. The first two are the soul axis above; the rest govern combat and possession.

| Characteristic | Range / Meaning | Reference |
|----------------|-----------------|-----------|
| Soul soundness | 0–100; purity of the soul, governs alignment, magic, and door/artifact access | [world/souls.md](world/souls.md) |
| Demonic energy | capacity − soundness; powers demonic weapons, dolls, and doors | [artifacts.md](artifacts.md) |
| Mind | the creature's own cognition; degrades under divine control, reaches 0 → unusable as a vessel | [world/gods.md](world/gods.md) |
| Health | reaches 0 → the creature dies | [combat.md](combat.md) |
| Stamina | spent on every combat move; scales with health | [combat.md](combat.md) |

Soul soundness also feeds combat directly: it raises magical-weapon damage and lowers demonic-weapon damage (and vice versa for demonic energy). See [combat.md](combat.md).

---

## Possession

Because a creature has a soul, it is a candidate for possession by the Outer God (the player). Two hard constraints apply: the god must **know the creature exists**, and the creature **must have a soul** (so monsters are never candidates). While possessed, the creature keeps its own personality, memories, and abilities — the god rides alongside and steers — but its mind degrades each time increment, faster the weaker the soul. When a vessel dies or its mind is spent, the god must choose a new known, soul-bearing creature. Full mechanics: [world/gods.md](world/gods.md).

---

## Behavior Across Time

Creatures exist at specific time values and can be encountered, re-encountered, or even possessed at different points along the time-tree. A creature dead at one time value may be alive at an earlier one; the player may travel back and possess a creature whose later self they have already met (e.g. Lisspeg — see [story/characters.md](story/characters.md)). For how time branching and decrement doors work, see [world/time.md](world/time.md).

---

## Naming Convention

Creature names follow a consistent phonetic pattern for this world — harsh consonants and unusual vowel combinations (e.g. *Silarmousch*, *Sekmidorgue*, *Bournache*). New creatures should be named to match. The roster of named and placeholder creatures lives in [story/characters.md](story/characters.md).

---

## Conversations

Creatures speak. A creature's dialogue can branch on what it is told and on the state of the world and the player's soul. Conversation scripts are large enough to live in their own package — see [conversations/index.md](conversations/index.md).
