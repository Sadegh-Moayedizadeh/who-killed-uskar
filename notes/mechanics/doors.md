# Doors

Doors in "Who Killed Uskar?" are not all alike. Some are mundane physical passages, but many are metaphysical mechanisms — built into the architecture of the world, almost certainly by the gods or primordial creators — that govern movement, time, and access. A door may be a simple corridor between two rooms, or a construct that bends time and admits only a particular kind of soul.

Not every door is even visible to every creature. Some doors only reveal themselves to creatures whose soul soundness exceeds a certain value; others only reveal themselves to creatures whose soul corruption exceeds a certain value. A door a pure soul walks past unseen may be plainly visible to a sinner, and vice versa.

Understanding a door requires knowing both its physical properties (lock, direction) and its metaphysical properties (soul constraint, time effect). A creature that fails to grasp either dimension will find itself trapped.

See also: [world/time.md](world/time.md), [world/souls.md](world/souls.md), [world/forms.md](world/forms.md), [mechanics/artifacts.md](mechanics/artifacts.md).

---

## Origin: The Door Form

There is exactly one Door Form (see [world/forms.md](world/forms.md)); divine, demonic, time, locked, and neutral doors are variations of it, not separate kinds. Two consequences:

- **Doors never multiply independently.** The Door Form participates in the Room Form — a room *includes* its doors — so every minted room comes into being with its doors already instantiated. There is no way to create a door except by creating a room, or by morphing an existing door.
- **A door is a crystallized passage.** The first crossing defines its only direction. This is the origin of the one-directionality rule below.

A door's destination can be morphed. Permanently morphing a door to point at a place that does not exist, then passing through it, forces the world to mint a new room to receive the traveler (**frontier minting** — see [world/forms.md](world/forms.md)). This is how the world's map has grown since T=0, and because permanent morphing is a cardinal sin, every room in the world cost its maker a piece of their soul. The first door, at T=0, was a loop: it led back into the First Room, incrementing time — the primordial world was a one-room time loop until Uskar committed the first sin and minted the second room.

---

## Fundamental Constraint

A creature with a soul soundness of 0 is completely trapped. It cannot pass any door, regardless of type, key possession, or time value. This is the absolute floor of the door system.

---

## Door Properties

### Access (Lock)

A door can be locked with a lock. A locked door blocks all creatures that do not possess the correct key type.

Key types are distinct artifacts — possessing one key does not grant access to doors requiring a different type. See [mechanics/artifacts.md](mechanics/artifacts.md) for key and lock behavior.

### Filter (Soul Constraint)

A door can filter creatures based on their properties. Three known filter conditions:

- **Soul soundness above threshold**: only creatures whose soul soundness meets or exceeds a defined divine threshold may interact with the door.
- **Soul corruption above threshold**: only creatures whose soul corruption meets or exceeds a defined demonic threshold may interact with the door.
- **Carrying weapons**: the door refuses entry to armed creatures.

When a creature fails a filter, the outcome depends on the door's visibility setting — it may be unable to see the door at all, or it may see the door but find it impassable.

For soul soundness mechanics, see [world/souls.md](world/souls.md).

### Visibility

Some doors are invisible to certain creatures. A creature that cannot see a door cannot interact with it in any way — it cannot touch it or pass through it.

Visibility can be gated by soul thresholds — a door may require soul soundness above a value to reveal itself, or soul corruption above a value — as well as by knowledge or by the current time value.

### Time Effect

Each door produces exactly one of three time effects when a creature passes through it:

1. **No change (0)**: Time remains the same on the other side.
2. **Increment (+1)**: Time advances by one unit, into the existing child node in the time-tree — or into a new branch if the world arrives in a differing state.
3. **Decrement (-1)**: Time steps back by one unit. If the creature subsequently moves forward from that earlier point, it re-enters the same node when the resulting state matches, or forks a new branch when the state differs. Because the world is deterministic, repeating the identical actions returns to the original timeline rather than branching.

The time effect is fixed as a property of the door, not a choice made at the moment of passage. See [world/time.md](world/time.md) for the structure of the time-tree and branching behavior.

### Direction

All doors are one-directional. A creature can pass through a door in one direction only; it cannot return through the same door. To go back, a creature must find another door leading the other way.

Direction is independent of time effect and soul constraint.

### Destination

A door has exactly one destination at any given time value. Because the destination mapping is defined over time, the same door can lead to different places depending on when it is used. A time-split may resolve to a destination that was not reachable before.

---

## Door Types

### Divine Door

- Filter: soul soundness must exceed the divine threshold.
- Visibility: invisible to creatures below the threshold. Sinners cannot see or interact with it.
- Intended for pure-soul travelers only.

### Demonic Door

- Filter: soul corruption must exceed the demonic threshold.
- Visibility: invisible to creatures below that corruption level. Pure souls cannot see or interact with it.
- Intended for sinners only.

### Locked Door

- Access: requires a specific key type.
- Not soul-constrained by default.

### Time Door

- Specifically designed to produce a non-zero time effect (increment or decrement).
- Used to construct loops, advances, and retreats in the time-tree.

### Neutral Door

- Time effect: no change.
- No soul constraint, no lock.
- Used as corridors between rooms — particularly in tutorial sections. Because all doors are one-directional, a corridor connecting two rooms is typically built from a pair of neutral doors, one for each direction.

---

## Design Principle

Doors are the primary mechanism for both progression and time manipulation. A creature must understand both the physical dimension (key type, direction) and the metaphysical dimension (soul threshold, time effect) of a door to use it strategically.

The recurring room challenge — "How should I get out?" — reflects this. The exit is rarely just a matter of finding the door. It is a matter of being the right kind of creature, at the right time, with the right soul.
