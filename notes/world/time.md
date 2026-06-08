# Time

## Fundamentals

Time in this world is discrete and integer-valued. It starts at T=0 when the game begins.

Time does not progress automatically. It only changes when a creature passes through a door that affects time. While a creature is inside a room, time is frozen from the outside world's perspective. No other time-based events occur inside a time instance; they are already "set" at the start of each time value.

## Time as a Tree Structure

Time is modeled as a directed tree (graph). Each node represents one integer time value and contains the full state of the world at that point.

- Each node has exactly one parent (the preceding time value) and can have multiple children (future branches).
- When a creature passes through a time-incrementing door, a new child node is created.
- When a creature goes back in time (via a decrementing door), it moves to the parent node. If the creature then moves forward again, a new child branch is created. The old branch is permanently unreachable.
- A creature can only go back by one time increment at a time.

## Branching Time

Branching — splitting the timeline into a new branch — is a cardinal sin. It damages the soul of the creature responsible. See [world/souls.md](world/souls.md) for how soul damage is tracked and manifested.

New branches can have different world states from the branch they diverged from: different artifact positions, different creature locations, and duplications.

### Duplication

If a creature travels back in time and then forward again on a new branch, it creates a second copy of itself in the new timeline. The original version of the creature remains in the abandoned branch; the new branch contains a fresh instance of that creature. These two instances are separate entities and do not share state.

The entire world was created this way: a primordial creator morphed artifacts and creatures, went back in time, and created multiple instances of reality.

## Time and Inventories

If a creature carries artifacts and passes through a time-decrementing door:

- The artifacts disappear from the creature's inventory upon arrival in the past.
- The artifacts belong to the future time value they came from, not the past one.
- This rule prevents duplication exploits via carrying items backward.

### Chronos Locks

Artifacts locked with a Chronos Lock are bound to a specific time value. They are only accessible when the world is at that exact time value. In all other time values, those artifacts are inaccessible — as if they do not exist.

## Door-Time Interactions

Doors are the sole mechanism by which time changes. All doors are inherently magical constructs built into the world's architecture. See [mechanics/doors.md](mechanics/doors.md) for full door mechanics and rules.

| Door Type | Effect on Time | Tree Effect |
|---|---|---|
| Incrementing (+1) | Advances time by one | Creates a new child node |
| Decrementing (-1) | Retreats time by one | Returns to parent node; next forward move creates a new branch |
| Neutral (±0) | No change | No new node |

## Perception of Time

Time is subjective. A creature inside a room experiences a sequence of events at a given time value — conversation, combat, puzzle — without the integer time value advancing. The time value acts as a save-state of the entire world. Events within that state have order and causality, but do not advance the integer.

Three concepts govern how creatures relate to time:

- **Causality**: the enforced order of phenomena within a single time value.
- **Sensibility**: the labeling of phenomena to their respective time values.
- **Understanding**: how a creature gathers and comprehends those phenomena across time values.

## Godly Perception

The Outer God (the player) perceives time exclusively through the vessel they currently control. What that vessel cannot observe, the Outer God cannot know.

If something occurs entirely outside the bounds of time — truly free from causality — it is imperceptible and uncontrollable by any god. This is the ultimate form of freedom: to exist without a time value, without causality, without any god having purchase over you.
