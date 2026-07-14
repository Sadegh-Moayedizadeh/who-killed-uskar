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

## Lineages: The Creature Forms and Variation

> **Status: CONFIRMED (2026-07-14).** Grounded in the Platonic-forms cosmology — see [world/forms.md](../world/forms.md), which is the canonical account.

The world's population is built on a fixed roster of **creature Forms** — the base creatures, one instance of each at T=0: Uskar, Gounargoun, Pyutkah, Zortaug, Daghal, Sinali (roster detailed in [world/forms.md](../world/forms.md) and [story/characters.md](../story/characters.md)). Every creature in the world belongs to a **lineage**: it is a duplicate-of-a-duplicate of one Form.

Two established facts constrain how the population grows:

1. **Creatures cannot be morphed.** A creature's soul is its form-link ([world/souls.md](../world/souls.md)); morphing would violate it. New creatures cannot be morphed into existence.
2. **Creatures multiply by duplication across time.** A creature travels back to a time it was present at but arrives in a *different* location than its original self occupied. The original instance stays; the arriving creature becomes a second, separate, independent instance. This forks the timeline and is the sin of splitting time ([world/time.md](../world/time.md)). It is how the Forms themselves populated the world.

**How a duplicate varies without being morphed — resolved.** Variation is **degraded participation** in the Form, not alteration of the instance. The Form is untouched, so no soul rule is violated. Concretely, a duplicate differs from its origin in two ways, and both established candidate sources turn out to be true:

- **A smaller soul.** Each generation of duplication produces a fainter participation in the Form — soul capacity shrinks with distance from the Form. (This is why souls "differ in size," per [world/souls.md](../world/souls.md), and why the Forms held the largest souls in history.)
- **A perturbed decision tree, plus divergent history.** The duplicate inherits a variant of its ancestor's tree (seeded variation at the lineage level) and then drifts further through its own separate experiences, since the two instances share no state (divergent-state variation). Both sources operate together.

**Lineage is personality.** To identify a creature's Form is to know the shape of its choices — its tree is a perturbation of the Form's root tree. Named characters' lineages are recorded in [story/characters.md](../story/characters.md) (e.g. Lisspeg and Sekmidorgue of Gounargoun's line, Bournache of Pyutkah's, Bol of Sinali's, Silarmousch a direct duplicate of Uskar himself). In Act 4 this becomes an investigation tool: the player who learns to read lineages can predict NPC behavior — and steer it by shaping its inputs, truthfully or sinfully.

## Automated Behavior

> **Status: CONFIRMED in structure (2026-07-14); richness/emergence granularity still open.** Grounded in the determinism already stated in [world/time.md](../world/time.md): "a given world state plus a given set of actions always produces the same next state."

Creatures the Outer God is not currently controlling still act. Their actions are driven by the creature's **mind** (its own cognition, see above) and are **deterministic** — the same situation always yields the same decision. This is what makes the whole world reproducible across time travel: stepping back and repeating the same inputs re-creates the same future, so no branch forms unless something genuinely differs (see [world/time.md](../world/time.md)).

Decision trees are inherited by lineage: each creature Form has a root tree (its essence), and every descendant runs a perturbed variant of it — see "The Form Trees" in [world/forms.md](../world/forms.md), which specifies Uskar's tree in full. One structural fact is load-bearing for the whole game: **Uskar's tree is the only tree in the world with a terminal (halt) node.** Every other tree is a loop. The lie a creature tells corrupts another creature's tree inputs — which is why lying is a cardinal sin: it is soft possession, a creature usurping the god's role of steering another creature ([world/souls.md](../world/souls.md)).

**The model:**

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

Names drift across generations: a duplicate diverges from its origin and takes (or is given) a new name. The canonical example is Silarmousch, who began as a duplicate of Uskar (see [world/forms.md](../world/forms.md)).

---

## Conversations

Creatures speak. A creature's dialogue can branch on what it is told and on the state of the world and the player's soul. Conversation scripts are large enough to live in their own package — see [conversations/index.md](conversations/index.md).
