# Doors

All doors in "Who Killed Uskar?" are magical constructs built into the architecture of the world — almost certainly by the gods or primordial creators. They are not merely physical passages but metaphysical mechanisms that govern movement, time, and access throughout the world.

Understanding a door requires knowing both its physical properties (lock, direction) and its metaphysical properties (soul constraint, time effect). A creature that fails to grasp either dimension will find itself trapped.

See also: [world/time.md](world/time.md), [world/souls.md](world/souls.md), [mechanics/artifacts.md](mechanics/artifacts.md).

---

## Fundamental Constraint

A creature with a soul soundness of 0 is completely trapped. It cannot pass any door, regardless of type, key possession, or time value. This is the absolute floor of the door system.

---

## Door Properties

### Access (Lock)

A door can be locked with a lock. A locked door blocks all creatures that do not possess the correct key type. Locked doors have one additional hard constraint: **a locked door cannot be morphed**. The lock freezes the door's properties entirely.

Key types are distinct artifacts — possessing one key does not grant access to doors requiring a different type. See [mechanics/artifacts.md](mechanics/artifacts.md) for key and lock behavior.

### Filter (Soul Constraint)

A door can filter creatures based on their properties. Four known filter conditions:

- **Soul soundness above threshold**: only creatures whose soul soundness meets or exceeds a defined divine threshold may interact with the door.
- **Soul soundness below threshold**: only creatures whose soul soundness is at or below a defined demonic threshold may interact with the door.
- **Carrying weapons**: the door refuses entry to armed creatures.
- **Known mage status**: the door admits only creatures recognized as mages.

When a creature fails a filter, the outcome depends on the door's visibility setting — it may be unable to see the door at all, or it may see the door but find it impassable.

For soul soundness mechanics, see [world/souls.md](world/souls.md).

### Visibility

Some doors are invisible to certain creatures. A creature that cannot see a door cannot interact with it in any way — it cannot touch it, pass through it, or morph it.

Visibility can be gated by soul thresholds (a sinner cannot see a divine door; a pure soul cannot see a demonic door), by knowledge, or by the current time value.

### Time Effect

Each door produces exactly one of three time effects when a creature passes through it:

1. **No change (0)**: Time remains the same on the other side.
2. **Increment (+1)**: Time advances by one unit. This creates a new child node in the time-tree.
3. **Decrement (-1)**: Time steps back by one unit. If the creature subsequently moves forward from that earlier point, a new branch is created rather than returning to the original timeline.

The time effect is fixed as a property of the door, not a choice made at the moment of passage. See [world/time.md](world/time.md) for the structure of the time-tree and branching behavior.

### Direction

A door can be one-way (unidirectional) or two-way.

- **One-way**: a creature can pass through in one direction only. It cannot return through the same door.
- **Two-way**: passage is permitted in both directions.

Direction is independent of time effect and soul constraint.

### Destination

A door has exactly one destination at any given time value. Because the destination mapping is defined over time, the same door can lead to different places depending on when it is used. A morphed door or a time-split may resolve to a destination that was not reachable before.

### Morphing

A non-locked door can be morphed: its destination, time effect, or other properties can be altered by a creature with sufficient magical soul strength.

Morphing has two modes with different moral weight:

- **Temporary morphing** (the door reverts after one use): not a sin.
- **Permanent morphing**: a cardinal sin.

The distinction matters because soul soundness affects which doors a creature can use. A creature that permanently morphs a door may find that the act itself closes other doors to them. See [world/souls.md](world/souls.md).

---

## Door Types

### Divine Door

- Filter: soul soundness must exceed the divine threshold.
- Visibility: invisible to creatures below the threshold. Sinners cannot see or interact with it.
- Intended for pure-soul travelers only.

### Demonic Door

- Filter: soul soundness must be at or below the demonic threshold.
- Visibility: invisible to creatures above the threshold. Pure souls cannot see or interact with it.
- Intended for sinners only.

### Locked Door

- Access: requires a specific key type.
- Not soul-constrained by default.
- Cannot be morphed while locked.

### Time Door

- Specifically designed to produce a non-zero time effect (increment or decrement).
- Can be one-way.
- Used to construct loops, advances, and retreats in the time-tree.

### Two-Way Neutral Door

- Passes in both directions.
- Time effect: no change.
- No soul constraint, no lock.
- Used as corridors between rooms — particularly in tutorial sections.

---

## Design Principle

Doors are the primary mechanism for both progression and time manipulation. A creature must understand both the physical dimension (key type, direction) and the metaphysical dimension (soul threshold, time effect) of a door to use it strategically.

The recurring room challenge — "How should I get out?" — reflects this. The exit is rarely just a matter of finding the door. It is a matter of being the right kind of creature, at the right time, with the right soul.
