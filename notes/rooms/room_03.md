# Room 3

## Label
What knowledge is more accurate?

## Description
> **Setting TBD — to be redesigned.** This room was previously conceived as a grand library; that concept has been removed from the game. The room's branching machinery below (`Bournache`, his note, the painting `The Great Dawn`, the adjoining `Antechamber`, and the doors) does not depend on the old setting. A new setting will be designed later.

This is exactly what `Silarmousch` intended the player to walk into. The demonic path from `Room 2` leads here, and the room is the first full staging ground of that path. The player arrives already carrying the weight of `Lisspeg`'s murder. Their soul is weakened. `Door 6` — the demonic continuation — is visible to them. `Door 5` — the divine path — is not.

But the room is not wholly `Silarmousch`'s. `Bournache`, a divine mage, has been here too. He discovered what `Silarmousch` was doing with this place and altered it through a magical painting, which hangs in the adjoining `Antechamber`. His note sits prominently on a central stand, glowing and unmissable. For any player who reads the note and understands its contents, `Room 3` becomes a crossroads: between `Silarmousch`'s demonic intentions and `Bournache`'s offer of purification.

The label hangs in the air. The question is which answer the player reaches for.

## Contents

### Creatures

#### Bournache
A divine mage. He does not appear on first entry. He arrives at T+1 relative to the player's first entry into this room — but only after the player has used the painting `The Great Dawn`, in the adjoining `Antechamber`, to signal him.

Because time is discrete and integer-valued, a creature is either present in a room at a given time value or it is not; `Bournache` cannot arrive partway through the player's visit. The signal-and-return mechanism (see Entry Flows) is what places `Bournache` and the player in `Room 3` at the same time value, T+1.

`Bournache` offers his soul to purify the player's corrupted soul. This is a true sacrifice: he does not ask permission and he does not bargain — he offers. The player, as the recipient, can only accept or reject what is given. **Either way, `Bournache` dies** — a sacrifice, once offered, claims the one who gives it, whether or not it is received. What differs is what the player is left with:

- **Accept the offer.** The sacrifice is received. The player's soul is purified completely. `Bournache` dies, `Door 6` disappears, `Door 5` becomes visible, and the divine path opens.
- **Reject the offer.** The sacrifice is refused. `Bournache` dies anyway, but the player's soul is not purified. `Door 6` remains; `Door 5` stays invisible. The player continues on `Silarmousch`'s path having cost `Bournache` his life for nothing.
- **Kill him.** Rather than let the offer resolve, the player murders `Bournache` outright — a second deliberate cardinal sin that drives the player's soul deeper into corruption. This is the darkest available branch at this stage of the game. `Door 6` remains the only forward path.

### Artifacts

#### Bournache's Note
A glowing parchment on the central stand. Visually unmissable — placed so that any player entering the room will notice it. It explains: the mechanics of soul soundness and how it governs door visibility, `Silarmousch`'s true intentions and the trap the player has already walked into, and how to summon `Bournache` — pass into the adjoining `Antechamber` through `Door 4`, use the painting `The Great Dawn` to signal him, and return to `Room 3` through `Door 7`, which advances time by one unit so that `Bournache` is present on arrival. Signed by `Bournache`.

This note is designed so that the vast majority of players read it before doing anything else in the room.

### Doors

#### Door 4 — to the Antechamber
A plain passage into the adjoining `Antechamber`, the signal room. Visible to the player, with no soul filter and no time effect on crossing. It is the route to `The Great Dawn`.

#### Door 5 — Divine Door
Leads to `Room 4`. Requires a pure soul to become visible. On the player's initial arrival — soul corrupted by murder — this door is completely invisible.

It becomes visible only after the player's soul is fully purified, which at this point in the game requires accepting `Bournache`'s offered sacrifice.

#### Door 6 — Demonic Door
Continues `Silarmousch`'s dark path. Visible to the player on arrival due to their weakened soul. Leads to a darker branch of the game (destination TBD).

## The Antechamber (Signal Room)

A small side room reachable from `Room 3` through `Door 4`. Its only purpose is to let the player signal `Bournache` and advance time by one unit in a single, controlled step. There is no route from here back to `Room 2`.

### Artifacts

#### The Great Dawn (Painting)
A magical painting hanging in the `Antechamber`. `Bournache` altered it to function as a signal: interacting with it tells him to come, and he appears in `Room 3` one time increment later. The painting itself produces no time change — it only signals. See [mechanics/artifacts.md](../mechanics/artifacts.md) for how magical paintings function.

### Doors

#### Door 7 — back to Room 3
Leads from the `Antechamber` to `Room 3`. Increments time by +1 on crossing, and carries no soul filter. This single increment is what synchronises the player with `Bournache`: the player signals from the `Antechamber` at the current time value, then steps through `Door 7` into `Room 3` at T+1 — the same time value at which the summoned `Bournache` appears.

> The number 7 previously labelled a two-way return door to `Room 2`, which has been removed; it is reused here for the `Antechamber`'s return door. There is no longer any way back to `Room 2`.

## Entry Flows

### Regular Entry
The player enters `Room 3` from `Room 2` via `Door 3` (the Hidden Demonic Door), soul weakened by the murder of `Lisspeg`. On arrival, `Door 6` is visible and glowing, `Door 5` is invisible, and `Bournache` is not present.

The player notices `Bournache`'s Note on the central stand. They read it. They learn the mechanics of soul soundness and door visibility, the truth of `Silarmousch`'s manipulation, and the method for summoning `Bournache`.

Following the note, the player passes through `Door 4` into the `Antechamber` and uses `The Great Dawn` to signal `Bournache`. Nothing changes immediately — the signal only marks `Bournache` to arrive at the next time value.

The player returns to `Room 3` through `Door 7`. Crossing it advances time to T+1. `Bournache`, summoned, is now present in `Room 3`: the player and `Bournache` arrive at the same time value.

`Bournache` offers his soul. The player accepts. `Bournache` dies. The player's soul is purified. `Door 6` disappears. `Door 5` becomes visible for the first time. The player passes through `Door 5` into `Room 4`.

### Alternate Paths

**Demonic continuation (never summon Bournache):** The player reads the note but chooses `Silarmousch`'s path anyway, passing through `Door 6` without ever entering the `Antechamber` or using the painting. `Bournache` is never summoned and does not die. The player descends further into the demonic branch.

**Sacrifice rejected:** The player summons `Bournache` and waits for him to appear, then rejects the offered sacrifice. `Bournache` dies regardless — a given sacrifice claims the giver — yet the player's soul is not purified. `Door 5` stays invisible and `Door 6` remains the only way forward. The player continues the demonic path having cost `Bournache` his life for nothing.

**Deepest corruption (kill Bournache):** The player summons `Bournache` and murders him instead of letting the offer resolve. A second deliberate murder. The player's soul is driven deeper into corruption. This is the darkest branch available at this point in the game. `Door 6` remains the only forward path.

**Blind demonic path (skip the note):** A small fraction of players may enter `Room 3`, ignore `Bournache`'s Note entirely, and walk directly through `Door 6`. They proceed on `Silarmousch`'s path without ever learning the mechanics of soul soundness or knowing that `Bournache`'s offer existed.

**Return visits:** On any subsequent visit with a still-corrupted soul, `Door 6` remains visible and `Door 5` does not. If the player returns later with a sufficiently purified soul obtained by other means (monster-slaying or other received sacrifices), `Door 5` may become visible without needing `Bournache`'s sacrifice — though if `Bournache` has already died, he is gone.
