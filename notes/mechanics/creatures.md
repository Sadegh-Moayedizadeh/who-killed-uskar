# Creatures

A creature is any soul-bearing being in the world — the entities the player meets, fights, talks to, and possesses. This document defines what a creature *is* as a game object: the parts it is made of, how it is classified, and how it behaves. For the metaphysics of the soul itself, see [world/souls.md](world/souls.md). For specific named creatures in the story, see [story/characters.md](story/characters.md).

---

## What a Creature Is

A creature is composed of three things:

1. **A body** — its physical presence in a room. The body can be harmed, killed, and (after death) left behind. A body holds an [inventory](artifacts.md) of artifacts.
2. **A soul** — its metaphysical link to the gods and the seat of its attributes. Because a creature contains a soul, it **cannot be morphed** (see [doors.md](doors.md) and [artifacts.md](artifacts.md)) and it **can be possessed** by a god.
3. **A mind** — its own cognitive faculty, separate from the soul. During divine possession the mind falls silent: the god takes over entirely and the creature has no will of its own. See [world/gods.md](world/gods.md).

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
| Mind | the creature's own cognition; goes dormant while a god possesses the vessel | [world/gods.md](world/gods.md) |
| Health | reaches 0 → the creature dies | [combat.md](combat.md) |
| Stamina | spent on every combat move; scales with health | [combat.md](combat.md) |

Soul soundness also feeds combat directly: it raises magical-weapon damage and lowers demonic-weapon damage (and vice versa for demonic energy). See [combat.md](combat.md).

---

## Possession

Because a creature has a soul, it is a candidate for possession by the Outer God (the player). Two hard constraints apply: the god must **know the creature exists**, and the creature **must have a soul** (so monsters are never candidates). Possession is total: the creature loses all will and consciousness, cannot act on its own, and is never released until the vessel dies — only then does the god choose a new known, soul-bearing creature. A strong, pure soul makes a cleaner vessel with full access to magic; a weak soul is a rougher conduit with diminished or no magic, though the precise difference is an open design question. Full mechanics: [world/gods.md](world/gods.md).

---

## Behavior Across Time

Creatures exist at specific time values and can be encountered, re-encountered, or even possessed at different points along the time-tree. A creature dead at one time value may be alive at an earlier one; the player may travel back and possess a creature whose later self they have already met (e.g. Lisspeg — see [story/characters.md](story/characters.md)). For how time branching and decrement doors work, see [world/time.md](world/time.md).

---

## Creature Templates and Variation

> **Status: proposed.** This section records a design direction, not confirmed mechanics. It builds on the duplication mechanic in [world/time.md](../world/time.md) and the fixed-set approach already used for artifacts in [artifacts.md](artifacts.md).

The world is meant to be expandable — its population can grow over the course of play and across time branches. Two facts already established constrain how this can work:

1. **Creatures cannot be morphed.** Because a creature carries a soul, it is exempt from the morphing that artifacts undergo (see above and [doors.md](doors.md)). So new creatures cannot simply be morphed into existence the way objects can.
2. **Creatures multiply by duplication across time.** The way a creature comes to exist in more than one place is the time mechanic: it travels back to a time it was present at, but arrives in a *different* location than its original self occupied. The original instance stays where it was; the arriving creature becomes a second, separate, independent instance. Both are now real. This is the same mechanism that, per [world/time.md](../world/time.md), the primordial creator used to populate the entire world — and, like all such divergence, it forks the timeline and is the sin of splitting time.

On top of those, this proposal adds a roster-and-variation model, mirroring how objects work:

- **A fixed set of base creatures (templates).** Just as the world has a fixed set of object types, it has a fixed set of base creatures. Every creature in the world is either one of these base templates or a **variation** derived from one. This keeps the creature space authorable and consistent while still allowing the population to expand.
- **Each duplicate may be a variation, not an exact copy.** When duplication produces a new instance, that instance need not be identical to its origin. It can differ — and the variation should be able to reach beyond appearance into **character** (personality attributes, behavior), not looks alone.

**The open question (carried over from the original thoughts):** *how* is a duplicate altered, given that a creature cannot be morphed? Morphing is the artifact mechanism and is explicitly forbidden for soul-bearing things, so variation must come from somewhere else. Candidate sources to explore:

- Variation arising naturally from **divergent state**: a duplicate created at a different place, time, and history accumulates a different set of experiences, and its [automated behavior](#automated-behavior) therefore diverges from its origin's. The two instances "do not share state" (per [world/time.md](../world/time.md)), so they can drift apart through what happens to them rather than through any morph.
- Variation seeded at the **template** level: base creatures define a space of allowed variants (appearance ranges, attribute ranges, behavior-tree parameters), and each instance is one point in that space.

Whether either, both, or some other source is correct is undecided. What is fixed is the boundary: this must not become creature-morphing, which the soul rules forbid.

## Automated Behavior

> **Status: proposed.** This is the design direction for the open item "Uncontrolled Creatures and Automated Behavior" in [ideas.md](../ideas.md). It is grounded in the determinism already stated in [world/time.md](../world/time.md): "a given world state plus a given set of actions always produces the same next state."

Creatures the Outer God is not currently controlling still act. Their actions are driven by the creature's **mind** (its own cognition, see above) and are **deterministic** — the same situation always yields the same decision. This is what makes the whole world reproducible across time travel: stepping back and repeating the same inputs re-creates the same future, so no branch forms unless something genuinely differs (see [world/time.md](../world/time.md)).

**Proposed model:**

- **Input state.** At a given time value, a creature decides based on (a) the current state of the room it is in, and (b) the **last-known** state of the other rooms it has previously visited — not their true current state, only what that creature last observed. A creature acts on its own limited, possibly stale picture of the world.
- **Decision.** From that input state the creature makes a deterministic choice via a **decision tree** (movement, combat, picking up or using artifacts, passing doors, etc.). Dialogue is handled by the same idea applied to speech: the branched **conversation trees** already defined in [conversations/index.md](../conversations/index.md) are the talking subset of this behavior, forking on world state, soul soundness, and what the creature has been told.
- **Transition.** The chosen actions advance the creature from its state at one time value to its state at the next. Because every step is deterministic, the sequence is fully reproducible.
- **Consequence — the game can run itself.** With every uncontrolled creature governed this way, the world can progress on its own: creatures move, talk, and change state without the designer (or the player) scripting each beat. The Outer God's control is then one deterministic agent among many, layered over a world that would otherwise keep running.

This connects to several existing constraints and open questions:

- It does not change godly perception: the Outer God still only knows what its current vessel can observe (see [world/gods.md](../world/gods.md) and [world/time.md](../world/time.md)). Whether the god *passively observes* known-but-uncontrolled creatures, or they are simply absent from its perception until interacted with, remains the open question flagged in [ideas.md](../ideas.md).
- Act 4 requires past, uncontrolled historical figures to be "running" coherently at past time values so the player can investigate Uskar's death. Deterministic behavior is what makes replaying and observing the past well-defined.
- The `Mind` faculty is where this logic conceptually lives; in code it is currently an empty stub.

## Naming Convention

Creature names follow a consistent phonetic pattern for this world — harsh consonants and unusual vowel combinations (e.g. *Silarmousch*, *Sekmidorgue*, *Bournache*). New creatures should be named to match. The roster of named and placeholder creatures lives in [story/characters.md](story/characters.md).

---

## Conversations

Creatures speak. A creature's dialogue can branch on what it is told and on the state of the world and the player's soul. Conversation scripts are large enough to live in their own package — see [conversations/index.md](conversations/index.md).
