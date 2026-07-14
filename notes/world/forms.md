# The Forms

**Status: CONFIRMED design decision (2026-07-14).** This file is the canonical account of the world's ontology and creation. Where older notes conflict with it, this file and [index.md](../index.md) take precedence.

The world of "Who Killed Uskar?" is built on Plato's theory of forms. For every fundamental kind of thing there is exactly one **Form** — a perfect original — and everything else of that kind is a copy of it, or a copy of a copy. At T=0 the world contains exactly one instance of each Form and nothing else. Everything that exists later descends from that first inventory.

See [world/time.md](time.md) for the time-tree, [world/souls.md](souls.md) for the soul system, and [story/characters.md](../story/characters.md) for the creature Forms as characters.

---

## The Object Forms

There is one Form per fundamental kind of object: Room, Door, Key, Lock, Sword, Shield, Poison, Inventory, Note, Painting, Doll. The "kinds" within a category — divine doors, demonic doors, time doors — are **variations** of the single Form, not separate Forms.

This is why the morphing rule in [mechanics/artifacts.md](../mechanics/artifacts.md) holds: morphing adjusts an instance's *participation* in its Form (its characteristics — destination, time effect, appearance) but can never change *which* Form it participates in. "Objects cannot change their fundamental kind" is not an arbitrary rule; the kind is the Form, and the Form is untouchable.

There is one Room Form — which is why every room in the world is a stone chamber, and why there is no outdoors. No outdoors Form exists. (One apparent exception is discussed under [The Meadow](#the-meadow) below.)

## The Creature Forms

There is a fixed roster of base creatures — the Forms from which every creature in the world descends. The figures the world's NPCs know as myth (see the Forms section of [story/characters.md](../story/characters.md)) are not legends about the past. They *are* the past. The Forms:

| Form | Essence (root of its decision tree) | Primordial deed |
|------|-------------------------------------|-----------------|
| **Uskar** | Inquiry — investigate what the model cannot explain | The first sin; the first notes; the exit |
| **Gounargoun** | Surrender — accept what is greater | First vessel ever possessed by an Outer God |
| **Pyutkah** | Devotion — seek connection to the divine | First willing sacrifice; revealed purification |
| **Zortaug** | Refusal — submit to nothing | Destroyed his own soul; the first monster |
| **Daghal** | Exploitation — extract advantage from any rule | Discovered duplication-farming; told the first lie |
| **Sinali** | Making — bind image to reality | First magical painting; living windows onto T=0 |

Every creature in the game belongs to a **lineage**: it is a duplicate-of-a-duplicate of one Form, carrying a variant of that Form's decision tree and a soul smaller than its ancestor's. See [mechanics/creatures.md](../mechanics/creatures.md) for lineage mechanics.

The roster size is fixed but its exact membership may still grow by one: a lost or nameless seventh Form is reserved as a possible late-game mystery hook. **[TBD]**

---

## The Soul as Form-Link

A soul **is** a creature's link to its Form. This single definition turns several long-standing rules into theorems:

- **Souled beings cannot be morphed.** Morphing an ensouled thing would violate its form-link — the very thing that makes it what it is.
- **A monster is "beyond identity."** Soul soundness 0 means the form-link is severed. A monster is not a damaged creature; it is a **formless** one. Identity *is* form-participation.
- **Gods cannot perceive or possess the soulless.** Gods do not see matter; they see the form-layer, and a creature is visible to them only through its form-link. No link, no perception, no possession.
- **Souls differ in size.** Each generation of duplication produces a smaller soul — a fainter participation in the Form. Soul capacity shrinks with distance from the Form. Uskar, a Form itself, held the largest soul the world has ever contained. This is why his death "drew the direct attention of an Outer God."
- **Willing sacrifice transfers participation.** A freely given soul passes its form-share to the recipient ("a soul that is freely given does not disappear — it passes into whoever receives it" — Bournache).
- **The cardinal sins are divine trespass.** Read the list in [world/souls.md](souls.md) against the god-layer: splitting time *creates* instances; permanent morphing *creates* rooms (below); murder *destroys* an instance; lying and deceit *control* another creature by corrupting the inputs of its deterministic decision tree — soft possession; demonic doll use is remote action on a creature — a god's reach. Every cardinal sin is a creature performing a divine operation. A creature's form-link is not rated for those operations, and carrying them damages it.
- **Exiting time is unindexing, not destruction.** A god perceives form-links *at time values* — the link is indexed by time. The exit removes the link's time index. The creature still participates in its Form, but at no time value: unaddressable by any god, forever. This is why the exit is neither death (the link snaps) nor monsterdom (the link severs). And it is why the exit **requires maximum purity**: pulling a form-link whole out of the time index is only possible if the link is unwounded. A corroded link tears — the creature simply dies. This is the error of the cult of mass suicide, and it is provable inside the game: dolls of the cult's dead show corpses; the doll of a truly exited creature shows **nothing**.

---

## How the World Multiplies

At T=0 there is one of everything. The world's growth is driven entirely by the choices of its creatures.

### Creatures and objects

Already established in [world/time.md](time.md): a creature that travels back and arrives displaced from its original self becomes a second, independent instance (duplication); artifacts carried backward through a decrement door double. Both force a divergent state, fork the timeline, and are the sin of splitting time.

A duplicate is not an exact copy. It is a new, lesser participation in the same Form: a smaller soul and a perturbed variant of the ancestral decision tree, diverging further through its own separate history. Variation is *degraded participation*, not morphing — the Form itself is never touched, so no rule about the unmorphability of souled beings is violated. This resolves the open question in [mechanics/creatures.md](../mechanics/creatures.md).

### Rooms

A new room is **minted** — instantiated as a fresh copy of the Room Form — in two ways:

1. **Divergence minting.** When time-travel produces a state that contradicts the recorded state, the world needs somewhere to hold the contradiction. The new branch is instantiated with new copies of the Room Form to contain the divergent state. Rooms are the world's memory pages; branching allocates pages.
2. **Frontier minting.** Doors can be morphed, including their destination. Permanently morph a door to point at *a place that does not exist* and walk through it, and the world back-fills: a fresh instance of the Room Form is minted to receive the traveler. This is how the map grows outward. Because permanent morphing is a cardinal sin, **every room in the world cost its maker a piece of their soul. Creation itself is transgression.** The world was built by sinners, starting with Uskar.

### Doors

Doors never multiply independently. The Door Form participates in the Room Form — a room *includes* its doors — so every minted room comes into being with its doors, each a variation of the one Door Form (time effect, filter, lock). A door's one-directionality has an origin too: **a door is a crystallized passage.** The first crossing defines its only direction.

### Room labels

A minted room is **stamped with the question its creator's decision tree was evaluating at the moment of creation.** This is why every room in the world is labeled with a question: the map is a record of what its makers were asking. Room 2's "How should I get out?" is the question Silarmousch built the room to force. Room 4's "Who am I?" is the question Bournache was asking — about the being he knew was coming — while he built it. The room-question convention is not a stylistic choice. It is physics.

---

## The Creation History

This is the history of **the branch the game is played on** — the branch of Uskar's own expansion — told as Uskar experienced it.

### The loop era

Uskar wakes at T=0 in the **First Room** — the Room Form itself — with the five other creature Forms and one instance of every object Form. There is one door, and it can only lead to the only room that exists: it loops back into the First Room, incrementing time. The primordial world is a one-room time loop — pure duration, no space. The six Forms cycle through the loop; each crossing is a heartbeat of the young world.

(Ages later, Silarmousch — born remembering this — will build the Room 1–2 trap as a mockery of the primordial loop.)

### The first sin

Uskar's tree cannot tolerate an unexplained boundary. The door's destination is the room he is already in — so what is *not* the room? His tree's FRONTIER rule fires: if investigation requires a place that does not exist, create it. Uskar permanently morphs the door's destination toward nowhere and steps through. The world mints a second room. The first expansion of the universe is an act of curiosity that is also its first transgression, and the largest soul in existence takes the first wound. Uskar is simultaneously the purest being in the world and its first sinner; the rest of his existence is one long purification.

### The exploitation era

Daghal, watching, extracts the general rule: passage makes places, and returning makes *copies*. He morphs a door's time effect to −1, carries the Key backward, and arrives holding a key in a world that already contains one. Duplication-farming begins — Daghal fills the young world with objects, splitting time again and again, shredding his own soul and not caring. Eventually he duplicates *himself*, and the first lie in history is Daghal deceiving his own copy. The world's material abundance is built on the trickster's greed.

### The first possession

An Outer God finds the world. Gods arrive through the First Room — the Room Form is the world's port, the place where the outside first touches the inside (this is why, ages later, the player's first vessel wakes *there*). The god takes Gounargoun, who surrenders utterly and performs wonders; his story ends in nirvana — dissolution into the divine. The other Forms witness what possession is. Two of them are broken by it, in opposite directions.

### The first monster

Zortaug refuses ever to be taken. He corrodes his own soul deliberately, sin by sin, until the link severs — and the first monster stands in the world's halls, free and empty. The Form of Refusal becomes the archetype every future monster repeats.

### The first sacrifice

Pyutkah wants what Gounargoun has. She pilgrimages across the growing map for a lifetime without ever touching the divine. In the end she gives her soul freely to another creature — and in the giving, finally makes contact. The first willing sacrifice reveals purification physics to the world, and to the watching gods.

### The first painting

Sinali binds an image to a place and discovers the Painting Form's kinship with the Room Form. Her earliest canvases are bound to the First Room *at the dawn values of time* — living windows onto T=0 that will hang, ages later, on the walls of Room 1, legible to no one until the player.

### The duplication of Uskar

Uskar missed the arrival of the god — he was elsewhere in the growing map when Gounargoun was taken. His tree cannot leave the world's most important phenomenon unobserved: he travels back to witness it, and arrives in a different room than his past self occupied. The timeline forks; the world now contains two of Uskar. The copy — smaller soul, same tree — diverges, takes a new name, and becomes **Silarmousch**.

This is the fact at the bottom of the game: *Silarmousch exists because Uskar wanted to see a god with his own eyes.* And Silarmousch's inherited founding memory is the thing Uskar went back to see: **a god taking a creature.** His entire later architecture — the traps, the corruption of gods, the hatred of divine control — grows from that single witnessed possession.

### The generations

Duplicates of duplicates. Souls shrink with each generation's distance from the Forms; variation compounds; names drift; the map sprawls into the castle-world of the game. The Forms recede into myth — which is why the game's NPCs know Gounargoun, Pyutkah, and Zortaug as legends. The legends are accurate. They are just old.

### Uskar's purification and the exit

Uskar spends ages repairing his wounded link — slaying monsters (canonically including Zortaug himself: the first seeker giving the first refuser the only mercy left). He reaches maximum soundness — the first mage, the template of all mages — and completes his model of the world. Every phenomenon inside time: explained. His tree reaches the node no other creature's tree contains, and he sees three things at once: the exit exists; the gods themselves are trapped (vessel-bound, time-bound, perceiving only through the form-layer); and no creature is safe while any god can perceive it.

So before halting, he builds the liberation engine: stages his "death" at T_d, Chronos-locks his testament to that single moment, returns to the First Room, stamps it with a question that presupposes a murder that never happened — **"Who killed Uskar?"** — and exits.

### The label is the summoning mechanism

A question no god can answer, stamped on the room where gods arrive, is bait no god can ignore. The player was not sent into Room 1 — the player was *caught* by it. Uskar's question is the hook; Silarmousch's trap (Lisspeg, the dagger, the demonic path) is the machine he bolted onto Uskar's hook, to catch what it summoned. Room 1 is a palimpsest of two architects of the same Form — which is why the game's first room contains both the question and the trap.

---

## The Form Trees

Every creature's behavior is governed by a deterministic decision tree (see [mechanics/creatures.md](../mechanics/creatures.md)). Each Form has its own root tree — the tree *is* the Form's essence — and every descendant carries a perturbed variant of its ancestor's tree. Lineage is personality: to identify a creature's Form is to know the shape of its choices.

### Uskar's tree

Deterministic, priority-ordered, evaluated against the exposed state S = (current room, last-known states of visited rooms, known creatures, own soul, own world-model M):

```
USKAR — Form of Inquiry
1. ANOMALY:    if S contains a phenomenon not derivable from M
               → move to observe it; incorporate into M.
2. FRONTIER:   if observation requires a place that does not exist
               → create access (morph the nearest door; accept the cost).
3. CORRECTION: if a known creature is acting on false inputs
               → supply true inputs. (No deceive-branch exists in this
               tree. Uskar is structurally incapable of lying.)
4. REPAIR:     if own soundness < maximum and a purification is reachable
               → purify. (The tree maintains its own instrument.)
5. BOUNDARY:   if M is complete over everything reachable (rules 1–4
               silent) → the only remaining anomaly is the frame itself:
               time. M cannot model its own boundary from inside.
6. HALT:       exit time.
```

**Rule 6 is the design's center of gravity: Uskar's tree is the only tree in the world with a terminal node.** Every other Form's tree is a loop — Gounargoun serves forever, Daghal exploits forever, the world runs forever. Uskar's halts, and the halt was determined from T=0: given the Form of Inquiry and a finite world, the tree provably reaches node 6.

This is Kant's third antinomy implemented in code. The exit is simultaneously the most determined event in history (every step caused) and the one event outside causality entirely (what lies past the halt has no time index). The two registers do not contradict because they do not share a domain. The player will *prove* this, not read it — see Act 5 in [story/narrative.md](../story/narrative.md).

### Silarmousch: the clamped variant

Silarmousch carries the same tree with a smaller soul. Duplication cost him capacity: rule 4 can never reach the maximum his exit would require, so rule 5 is *permanently unreachable* — yet his model M contains the exit, because he is made of Uskar's essence and reconstructed the proof. He is a mind holding the proof of its own imprisonment: a seeker who cannot halt.

Run his tree forward and his plan falls out as a theorem: *if I cannot become unindexed by exiting, I must become unindexed by not existing on the branch the perceiving god occupies.* And he cannot do the deed himself — if he kills Uskar, the god remains on the original branch beside him and nothing is gained. Only the god's own act, plus a Chronos-locked anchor in the god's inventory, strands the god on the Silarmousch-less branch. He must manipulate, never act. See [story/narrative.md](../story/narrative.md) for the full plan.

### Other Form trees **[TBD]**

Root trees for Gounargoun, Pyutkah, Zortaug, Daghal, and Sinali are to be specified in the same format as lineage design proceeds — each one a small, legible loop expressing its Form's essence. NPC decision trees are then derived by perturbation.

---

## The Meadow

Sinali's chest painting in Room 7 depicts a bronze chest *in a sunlit meadow* — in a world where no outdoors Form exists. This is deliberate: the meadow is Sinali's glimpse of outside-time, the game's one recurring image of the exit. It hangs disguised in a tutorial room and again among Room 1's paintings, and when the true ending's final door opens, it opens onto the meadow — empty to every eye the player has, and, the player finally understands, crowded.

---

## Open Questions

- The exact membership of the Form roster: is there a lost or nameless seventh Form? If so, is its lineage the source of any known character?
- Full root trees for the five non-Uskar Forms.
- What determines *which* variation a duplicate receives — pure divergent-history drift, template parameter ranges, or both (see [mechanics/creatures.md](../mechanics/creatures.md)).
- Whether the Outer God that took Gounargoun is an entity the game ever names or encounters again.
