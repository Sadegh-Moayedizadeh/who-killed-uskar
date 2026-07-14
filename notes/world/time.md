# Time

## Fundamentals

Time in this world is discrete and integer-valued. T=0 is the moment the entire world comes into being — the origin of everything. At T=0 the world is a single room (the First Room — the Room Form itself) containing exactly one instance of every object Form and the base creature Forms; see [world/forms.md](forms.md) for the full account of the world's ontology and creation. The game itself does not begin at T=0: play starts at a later time value T₀, whose exact figure will be fixed in a future design. From the player's perspective, the world already has a history behind it when control begins.

Time does not progress automatically. It only changes when a creature passes through a door that affects time. While a creature is inside a room, time is frozen from the outside world's perspective. No other time-based events occur inside a time instance; they are already "set" at the start of each time value.

## Time as a Tree Structure

Time is modeled as a directed tree (graph). Each node represents one integer time value and contains the full state of the world at that point.

- Each node has exactly one parent (the preceding time value) and can have multiple children (future branches).
- When a creature passes through a time-incrementing door for the first time at that point, a child node is created to hold the resulting state.
- When a creature goes back in time (via a decrementing door), it moves to the parent node. Moving forward again does **not** automatically create a new branch — see [Branching Time](#branching-time) below. It only branches if the world arrives at a state that differs from the state that already exists at that future time value.
- A creature can only go back by one time increment at a time.

## Branching Time

Branching — splitting the timeline into a new branch — is a cardinal sin. It damages the soul of the creature responsible. See [world/souls.md](world/souls.md) for how soul damage is tracked and manifested.

Crucially, **going back in time is not itself a sin, and does not by itself branch the timeline.** Every action in the world is deterministic: a given world state plus a given set of actions always produces the same next state. So if a creature steps back from time t1 to t0 and then performs the exact same set of actions and steps forward again, the world arrives at t1 in precisely the state it was already in. No new branch is created — the creature simply re-enters the existing t1 node.

A branch is created only when a creature arrives at a time value in a state that **differs** from the state already recorded there. The difference is what forks the tree, not the act of travelling. New branches can therefore carry different world states from the branch they diverged from: different artifact positions, different creature locations, and duplications. Producing such a divergence by travelling backward is what counts as the sin of splitting time.

When a branch is instantiated, the world mints new copies of the Room Form as needed to hold the divergent state — branching allocates rooms the way a memory system allocates pages. See "How the World Multiplies" in [world/forms.md](forms.md).

### Duplication

Duplication is one way a returning creature can force a divergent state — and therefore a branch.

If a creature travels back to a past time but arrives in a **different place** than it originally occupied at that time, the original instance still exists where it was, and the arriving creature becomes a second, separate instance of itself. Both instances are now real, distinct entities that do not share state. This populates the world with a new copy of the creature — a way to expand the world and increase its population — but because it diverges the state and branches time, it is a sin.

The entire world was populated this way. There was no single primordial creator: the base creature Forms themselves — one instance of each at T=0 — expanded the world through duplication, item carry-back, and frontier minting of new rooms, each expansion paid for in soul damage. Creation itself is transgression. The full creation history, told from Uskar's perspective on the branch the game is played on, is in [world/forms.md](forms.md).

## Time and Inventories

A creature may carry artifacts backward through a time-decrementing door, and those artifacts arrive in the past along with it:

- The artifacts remain in the creature's inventory upon arrival in the past.
- The copy of those artifacts that originally belonged to the past time value still exists there. The world now holds two of each carried artifact.
- This is a deliberate way to duplicate items and expand the world.

Because the duplicated artifacts make the past state differ from the state already recorded at that time value, carrying items backward forces the timeline to branch — and so it is the sin of splitting time. The expanded inventory is the reward; the soul damage is the cost.

### Chronos Locks

Artifacts locked with a Chronos Lock are bound to a specific time value. They are only accessible when the world is at that exact time value. In all other time values, those artifacts are inaccessible — as if they do not exist.

A Chronos Lock also anchors its artifact against time travel. While a creature carries a Chronos-locked artifact, it cannot pass through any door that increments or decrements time. To use such a door, the creature must first drop the locked artifact and leave it behind; it may then travel freely. (Doors with no time effect are unaffected.)

## Door-Time Interactions

Doors are the sole mechanism by which time changes. All doors are inherently magical constructs built into the world's architecture. See [mechanics/doors.md](mechanics/doors.md) for full door mechanics and rules.

| Door Type | Effect on Time | Tree Effect |
|---|---|---|
| Incrementing (+1) | Advances time by one | Enters the existing child node, or forks a new branch if the resulting state differs |
| Decrementing (-1) | Retreats time by one | Returns to the parent node; a later forward move re-enters the same node if its state matches, or branches if it differs |
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
