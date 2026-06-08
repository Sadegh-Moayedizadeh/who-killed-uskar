# Combat

## Core Concept

Combat is weapon-based only. The player uses physical, magical, or demonic weapons. Weapons have built-in techniques and abilities — the creature does not need to level up or learn moves. Abilities are inherent to the weapon itself.

Weapon effectiveness scales with soul strength (magical weapons) or soul weakness and corruption (demonic weapons). See [world/souls.md](world/souls.md) for how soul soundness is defined and tracked.

---

## Weapon Types

### Swords

The primary offensive weapon. Deals damage on successful hits.

- **Physical swords:** Fixed damage, no soul scaling. Usable by any creature.
- **Magical swords:** Damage scales with soul soundness. The higher the soul, the sharper and more effective.
- **Demonic swords:** Damage scales with soul corruption. The lower the soul, the more potent.

**Example — Blade of the Zealous:** Dull and ineffective in a sinner's hands. Razor-sharp for a creature with a pure soul. See [mechanics/artifacts.md](mechanics/artifacts.md).

Poison can be applied to a sword to add poison damage on top of base damage.

Strikes are directional: 8 directions of attack. The player must specify direction before pressing the hit button.

### Shields

The primary defensive tool, used for blocking and parrying.

- **Physical shields:** Fixed defensive value.
- **Magical and demonic shields:** Follow the same soul scaling rules as their sword counterparts.

---

## Combat Moves

### Hit

Costs stamina. The player specifies one of 8 directions, then presses the hit button.

If a hit is parried by the opponent, the attacker's guard opens for a brief window, leaving them vulnerable to a counterattack.

### Block

Holding the shield up to absorb an incoming hit.

- Blocks any direction of incoming strike — direction does not matter.
- Costs significantly more stamina than other moves.
- A successful block negates or greatly reduces damage.

### Parry

A precise defensive move executed within a very short time window.

- Direction matters — the parry direction must match the incoming hit's direction.
- A successful parry opens the attacker's guard.
- Costs less stamina than blocking.

### Fake

Feinting a hit to bait the enemy into parrying prematurely.

- Opens the enemy's guard for a follow-up real hit.
- Costs minimal stamina.

### Roll

A dodge move to evade attacks entirely. Costs stamina.

---

## Creature Characteristics

### Stamina

All moves (hit, block, parry, roll) cost stamina.

If stamina depletes fully, the creature cannot perform any stamina-costing action until it partially refills. This leaves them fully open and vulnerable.

Stamina refills automatically over time within a time instance. Refill speed is proportional to current health.

### Health

A creature dies when health reaches 0.

Low health reduces:
- Maximum stamina capacity
- Stamina refill speed
- Damage output

### Soul Soundness

See [world/souls.md](world/souls.md) for the full definition of soul soundness and how it changes.

In combat, soul soundness has the following effects:

- Higher soul soundness increases the damage of magical weapons and abilities.
- Lower soul soundness increases the effectiveness of demonic weapons.
- If the creature uses a physical weapon, soul soundness has no combat effect.

---

## Special Enemies

### Chained Monsters (Room 6)

Former mages who destroyed their souls. Slow and predictable attack patterns.

Weak to the Training Blade. Useful encounters for practicing parry timing.

### Armored Husk (Room 9)

Completely immune to physical and demonic damage.

Can only be damaged by magical weapons, specifically the Blade of the Zealous. This encounter forces the player to engage with soul purity mechanics. See [mechanics/artifacts.md](mechanics/artifacts.md) for weapon details and [world/souls.md](world/souls.md) for how to raise soul soundness before the encounter.
