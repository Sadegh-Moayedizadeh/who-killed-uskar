# Souls

## Overview

A soul is the metaphysical link between a creature and the gods. It is the mechanism through which gods perceive, reach, and control the creatures of the world. Without a soul, a creature is invisible to divine influence — and severed from the gods entirely.

A soul is not a collection of separate parts. It is a single, indivisible whole that can be **corrupted** or **purified**. Corruption weakens the soul's connection to the gods and lets demonic tendencies emerge; purification strengthens that connection. How much of a soul has been corrupted or purified is captured by its *soundness* (below).

See [world/gods.md](world/gods.md) for how gods exercise control through souls, and [world/time.md](world/time.md) for how time interacts with soul damage and restoration.

## The Soul as Form-Link

Ontologically, a soul **is** the creature's link to its Form (see [world/forms.md](world/forms.md)). This definition explains, rather than merely asserts, the rules below:

- A creature cannot be morphed because morphing would violate its form-link — the thing that makes it what it is.
- A monster is not a damaged creature but a **formless** one: soundness 0 means the link is severed, and identity *is* form-participation.
- Gods perceive and possess creatures *through* their form-links; a soulless creature is invisible to the divine because there is no link to see it by.
- Souls differ in **size** because each generation of duplication produces a fainter participation in the Form. Soul capacity shrinks with distance from the Form. Uskar — a Form itself — held the largest soul the world has ever contained.
- A willing sacrifice transfers participation: the giver's form-share passes to the recipient.

---

## Soul Soundness

Every soul has a **soundness** value that measures how much of it remains pure rather than corrupted. The higher the soundness, the purer the soul and the stronger its connection to the gods.

The numbers below are **only examples**. In practice soundness values vary, and there is no fixed scale — what matters is relative position, not the exact figure. Souls also differ in **size** from one creature to another, so the same soundness can correspond to very different amounts of soul. A creature whose soul is at **maximum soundness is a mage**.

| Soundness (example) | Meaning |
|---------------------|---------|
| 100 | Fully intact, pure soul |
| 1–99 | Partially corrupted soul |
| 0 | No soul — the creature is a monster |

Soundness tracks how pure the soul remains. As it decreases, the soul is corrupted: its divine connection weakens and demonic tendencies emerge to fill the void.

---

## Soul Classification

Creatures fall along a spectrum based on their soul soundness.

### Wizards and Mages

Wizards sit at the high end of the spectrum. Their souls are strong, pure, and deeply connected to the gods. This connection is not a burden to them — they embrace it. Being divine and controlled is desirable to wizards. Mages are the easiest for gods to control, and the most capable of wielding magical power.

### Common Creatures

Most creatures occupy the middle of the spectrum. Their soul soundness is moderate and their divine connection is average. They can be controlled by gods but with less precision and completeness than wizards.

### Sinners

Creatures who have committed cardinal sins carry corrupted souls. Their connection to the gods is partial and weakened. As corruption sets in and demonic tendencies emerge, sinners gain access to abilities unavailable to the faithful — but at a cost to their morality and divine access.

### Monsters

Monsters have a soul soundness of zero. They have no connection to gods whatsoever. Most monsters were once creatures who deliberately destroyed their own souls in pursuit of absolute freedom from divine control. The cost is total: with the soul gone, nothing remains to carry a self. Monsters act on instinct alone, and they cannot be controlled by any god.

---

## Cardinal Sins

Cardinal sins corrupt the soul. Each act of sin reduces its soundness. The sins are:

1. **Murder** — killing a living creature that possesses a soul.
2. **Lying** — deliberately deceiving another creature.
3. **Deceit** — broader manipulation, false pretenses, and deception by omission.
4. **Permanently morphing an object** — altering an object's fundamental nature irreversibly. Temporary morphing is not a sin; only permanent, irreversible alteration is.
5. **Splitting time** — traveling backward in time in a way that creates a new branch of the time-tree. See [world/time.md](world/time.md) for a full account of how time branching works.
6. **Using a doll demonically** — harming a creature through its doll effigy.

### Why These Are the Sins

The list is not arbitrary. Read against the god-layer, every cardinal sin is a creature performing a **divine operation**: splitting time *creates* instances of creatures and objects; permanent morphing *creates* rooms (frontier minting — see [world/forms.md](world/forms.md)); murder *destroys* an instance of a Form; lying and deceit *control* another creature by corrupting the inputs of its deterministic decision tree — soft possession; demonic doll use is remote action on a creature — a god's reach. Sin is trespass on the god-layer. A creature's form-link is not rated for those operations, and carrying them out damages it.

---

## Soul Purification Acts

Some acts strengthen and restore the soul.

### Slaying Monsters

Destroying a soulless creature that threatens the world is an act of purification. The soul soundness of the slayer increases. Divine paths are often lined with monsters — not by accident. It is worth asking who placed them there and why.

### Receiving a Willing Sacrifice

When a creature willingly offers its soul to another — a deliberate, uncoerced act — the recipient's soul is significantly strengthened. The one who sacrifices dies in the process. This is the most powerful form of soul purification available. It cannot be taken; it must be freely given.

---

## Gameplay Effects of Soul Soundness

Soul soundness determines which parts of the world a creature can interact with.

### Artifacts

| Artifact Type | Constraint |
|---------------|-----------|
| Magical artifact | Usable only if soul soundness **exceeds** a threshold |
| Demonic artifact | Usable only if soul soundness **falls below** a threshold |
| Physical artifact | No soul constraint — usable by anyone |

### Weapons

- **Magical weapons** deal more damage as soul soundness increases.
- **Demonic weapons** deal more damage as soul soundness decreases.

### Doors

- **Divine doors** are only visible and passable above a soul soundness threshold.
- **Demonic doors** are only visible and passable below a soul soundness threshold.
- If soul soundness reaches **0**, the creature cannot pass any door at all. It is completely trapped.

---

## Souls and Divine Control

A god can only control a creature if it has a soul. When a god takes a creature, possession is total: the creature loses all will and consciousness and cannot act on its own, and it is never released until the vessel dies. Soul soundness shapes how good a vessel the creature makes:

- **Strong soul** — a clean channel for the god's will, with full access to magical abilities.
- **Weak soul** — a poorer conduit. Magical abilities become diminished or inaccessible, and the connection is rougher.

The precise mechanics of how a weak-souled vessel differs from a strong-souled one remain an open design question. See [world/gods.md](world/gods.md) for the full account of divine control.

---

## The Freedom Paradox

Creatures who desire freedom from the gods face a contradiction.

The only way to sever the divine link is to destroy the soul. But the soul is the seat of personality, moral instinct, and independent thought. A creature who destroys its soul gains freedom from gods — and loses the capacity to use that freedom. It becomes a monster: instinct-driven, mindless, trapped in its own body.

This is not freedom. It is a different kind of imprisonment.

### True Freedom

There is a deeper secret that very few creatures understand. A god's perception — like any creature's perception — is ordered by time. Gods comprehend the world through temporal structure. Anything that exists outside of time entirely is beyond their understanding and therefore beyond their control.

True freedom does not come from destroying the soul. It comes from existing outside the bounds of time itself. Such a state is incomprehensible to gods. They cannot perceive it, model it, or reach into it.

Mechanically, the exit is **unindexing**: a god perceives form-links *at time values* — the link is indexed by time — and the exit removes the link's time index. The creature still participates in its Form, but at no time value. It is not dead (the link has not snapped) and not a monster (the link has not severed). It is unaddressable, forever.

This is also why the exit **requires maximum purity**. Pulling a form-link whole out of the time index is only possible if the link is unwounded; a corroded link tears, and the creature simply dies. This is the error of the cult of mass suicide — they pull the link by dying, and it snaps. The difference is provable inside the game: dolls of the cult's dead show corpses; the doll of a truly exited creature shows **nothing**.

This is the real secret of the game.
