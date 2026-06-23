# Artifacts

The player can drop any artifact they carry, leaving it at a specific location and time value. A dropped artifact remains where it was left until something or someone moves it, and can be picked up later — by another creature, or by the player in a future vessel.

## Classes

Artifacts are divided into three classes based on their relationship with soul soundness. If a creature fails to meet the soul constraint of a magical or demonic artifact, that artifact behaves as a physical one.

### Physical

A physical artifact has no magical or demonic properties and can be used by any creature regardless of soul soundness.

### Magical

A magical artifact's abilities are activated when the using creature's soul soundness exceeds a specified threshold (a more-than constraint). The further the creature's soul soundness is above the threshold, the more effective the artifact's abilities.

### Demonic

A demonic artifact's abilities are activated when the using creature's soul soundness falls below a specified threshold (a less-than constraint). The further the creature's soul soundness is below the threshold, the more effective the artifact's abilities.

Demonic potency is not merely the absence of soul soundness. Darkness in this world is not simply the lack of light — it is a substance with its own character. Every soul has a fixed capacity N. If a soul is pure by an amount p (its soul soundness), the remaining N − p is filled with **demonic energy**. The two always sum to the soul's capacity. A deed that purifies a soul by an amount p raises its soul soundness by p and reduces its demonic energy by the same p; a corrupting deed does the reverse. A demonic artifact draws on this demonic energy, so the more of a creature's capacity is given over to darkness, the more potent the artifact.

---

## Kinds

### Key

Keys open locks. Keys have no magical properties of their own.

The relationship between keys and locks is not one-to-one: a single key can open multiple locks, and a single lock can be opened by multiple keys. However, the relationship between key types and lock types is one-to-one — a Type A lock can only be opened by a Type A key.

Keys carry evocative names that reflect their history or origin (e.g., "Silarmousch's Ward Key", "The Pilgrim's Pass").

### Lock

Locks block access to doors, inventories, and other lockable objects. A lock must be acquired together with its corresponding key.

A lock has three optional capabilities, each of which may or may not be present on a given lock:

1. **Access blocking.** Prevents creatures without the correct key from passing through or opening the locked object.
2. **Spatial lock.** Prevents the locked object from being moved.
3. **Temporal lock (Chronos Lock).** Binds the locked object to a specific time value T. The object only exists and is accessible at T. At any other time value it is inaccessible, as if it were never there.

A locked door cannot be morphed.

### Sword

Swords are used to attack creatures in combat. See [mechanics/combat.md](combat.md) for full combat rules.

- Physical swords deal a fixed amount of damage.
- Magical swords scale damage with the wielder's soul soundness.
- Demonic swords scale damage with the wielder's demonic energy.

### Shield

Shields are used to block or parry in combat. See [mechanics/combat.md](combat.md) for full combat rules.

Shields can be physical, magical, or demonic.

### Poison

A creature that drinks poison dies. Its only function is to kill the current vessel — one of the ways the player can intentionally end their vessel in order to switch to a new one.

Poisons are rare and difficult to acquire. They are associated with a cult of mass suicide and are not available through ordinary means.

### Inventory

An inventory holds the artifacts a creature carries. It is itself an artifact and can be locked.

#### Time Behavior

If a creature is carrying artifacts in their inventory and travels backward in time through a decrement door, all artifacts acquired after the destination time value disappear from the inventory. Each artifact reverts to its last known state at that time value.

A locked inventory prevents other creatures from accessing its contents.

### Note

Notes are written messages placed throughout the world. All notes are signed by their author.

Notes can be read, collected, destroyed, altered, or encoded. An encoded note appears as gibberish and requires a cipher or the appropriate magical knowledge to decode. Multiple distinct decodings may exist for the same encoded note, reflecting different interpretations.

The player can also leave notes. Notes placed by the player can alter the course of the game. Notes are a primary mechanism for world-building and for communicating with characters across time.

### Painting

Paintings depict specific places. Physical paintings are static and informational only.

Magical paintings carry an active binding to the place they depict:

- A creature with sufficient soul soundness can alter the place shown in a painting. Because the painting is magically bound to that location, alterations made to the painting affect the real place.
- If the real place changes, the painting updates to reflect it.
- A painting always shows the depicted place at the beginning of an integer time value.

Magical paintings can also function as long-range communication devices, allowing a creature to signal its presence to someone in another room.

### Doll

Dolls depict specific creatures, in the same way that paintings depict specific places. A doll shows the state of the depicted creature at the beginning of an integer time value.

- Physical dolls are informational only and have no effect on the depicted creature.
- Demonic dolls allow a creature with sufficient demonic energy to harm or otherwise affect the depicted creature through its doll. Using a demonic doll in this way is a cardinal sin.

---

## Morphing

Any object that does not contain a soul can be morphed. Morphing changes an object's characteristics — its destination, its time effect, its appearance, and so on — but cannot change its fundamental type. Objects that contain souls (creatures) cannot be morphed. A locked door cannot be morphed.

### Temporary Morphing

The object reverts to its original state after use. Temporary morphing is not a sin.

### Permanent Morphing

The object's change is irreversible. Permanently morphing an object is a cardinal sin.
