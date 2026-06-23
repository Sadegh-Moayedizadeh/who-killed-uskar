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

Every sword has two kinds of attack: a **light attack** and a **heavy attack**. The light attack is quick but deals less damage. The heavy attack deals more damage but takes longer to wind up and commit, leaving the attacker exposed for a longer window. Strikes always go forward — the player faces the target and attacks; there is no directional aiming.

### Shields

The primary defensive tool. A shield has two moves: **block** and **parry**.

- **Block** holds the shield up against an incoming hit, reducing the damage that gets through to a certain percentage. It does not stop the hit entirely.
- **Parry** deflects an incoming hit entirely — no damage gets through — and leaves the attacker open for a certain amount of time, creating a window to counterattack.

Shields come in physical, magical, and demonic classes, following the same soul scaling rules as their sword counterparts.

---

## Combat Moves

### Hit

Costs stamina. The player faces the target and presses either the light or heavy attack; strikes always go forward.

A heavy attack costs more stamina and takes longer to land than a light attack, but deals more damage. While committing to a heavy attack, the attacker is exposed for longer.

If a hit is parried by the opponent, the attacker's guard opens for a brief window, leaving them vulnerable to a counterattack.

### Block

Holding the shield up to absorb an incoming hit.

- Reduces the incoming damage to a certain percentage rather than stopping it entirely. Some damage still gets through.
- Costs significantly more stamina than other moves.

### Parry

A precise defensive move executed within a very short time window.

- A successful parry deflects the incoming hit entirely — the defender takes no damage.
- It also leaves the attacker open for a certain amount of time, giving the defender a window to counterattack.
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

Former mages who destroyed their souls. Slow and predictable attack patterns make them ideal practice targets for the player to drill the Training Blade and parry timing.

### Armored Husk (Room 9)

An animated suit of plate with no creature inside — pure ambient magic in the shape of a soldier, and enormously durable. Physical and demonic weapons land, but deal so little damage against it that they can never realistically wear it down; the player exhausts their stamina before making a dent.

Only a magical weapon wielded by a sufficiently pure soul deals enough damage to break it — the Blade of the Zealous in a purified hand. This encounter forces the player to engage with soul purity mechanics. See [mechanics/artifacts.md](mechanics/artifacts.md) for weapon details and [world/souls.md](world/souls.md) for how to raise soul soundness before the encounter.
