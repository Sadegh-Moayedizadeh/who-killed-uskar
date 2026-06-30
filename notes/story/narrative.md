# Who Killed Uskar? — Master Narrative Document

This document is the canonical narrative reference for the game. It covers the central mystery, the antagonistic and rescuing forces, the philosophical core, the act structure, and the game's deepest thematic concern. It is intended for developers and AI agents building or extending the game.

**Status notation used throughout:** sections marked **[CONFIRMED]** describe what is fixed and designed; sections marked **[TBD]** describe what is still open and must be resolved later.

---

## The Central Mystery

### The Title Question **[CONFIRMED]**

The game opens with the label of Room 1: "Who killed Uskar?"

The player does not know who Uskar is. They have no context for the question. It hangs there, unanswered, as the player's only directive. The entire game is, at one level, the process of earning the right to answer it.

The answer is not given until the player returns to Room 1 with full knowledge of the world: who they are, how time works, what souls are, what gods can and cannot perceive, and what true freedom costs. Only then does the room — unchanged from its first appearance — yield its answer.

### Who Was Uskar **[CONFIRMED]**

Uskar was a being of exceptional significance. The exact nature of Uskar is held back from the player in the early game and disclosed gradually through clues scattered in notes, dialogues, and room details across Acts 3 and 4.

What is established: Uskar's death was not incidental. It set in motion the chain of events that brought the Outer God (the player) into this world. The death was either the cause of the player's summoning, the mechanism for it, or both. Uskar was not killed randomly. Someone with significant power and intent arranged it, and that arrangement is the engine of the entire game.

**Note on the character name:** The character file uses the spelling "Uskerr." This document uses "Uskar" consistently as the canonical form per the game's title. If this is resolved otherwise, update both files.

### The Three Possible Answers **[TBD — open for development]**

These three candidate answers are not mutually exclusive. The game should be designed so that each appears credible for a sustained stretch of Act 4 before the truth is resolved. The final answer may collapse all three into one or may select among them.

**Candidate 1: Silarmousch killed Uskar to trap the Outer God.**
Uskar's death created the circumstances that summoned a specific Outer God into Room 1. Silarmousch, who is the architect of the demonic trap in Rooms 1 through 3, may have engineered or commissioned that death. His motive in this reading: he wants the Outer God on the demonic path. Whether that serves a personal agenda, a faction's agenda, or something darker is itself a further mystery.

**Candidate 2: Uskar killed themselves.**
Uskar understood something that very few creatures have ever understood: that the only real freedom from divine control is to exist outside of time entirely. Such a state is imperceptible to all gods. Uskar may have arranged their own death as a deliberate act — a trigger for a chain of events designed to demonstrate to gods that such freedom is possible and to help other creatures achieve it. In this reading, Uskar is not a victim. They are the architect of a liberation project, and the Outer God is both its instrument and its subject.

**Candidate 3: The Outer God themselves killed Uskar.**
Time in this world is a tree, not a line. Future branches exist. A version of the Outer God, possessing full knowledge of all that the game teaches, may have traveled to the moment before the game begins and killed Uskar to initiate the very chain of events that created them. This is the most philosophically vertiginous answer: the mystery is self-caused. The investigation leads back to the investigator.

### Proposed Synthesis — Silarmousch's Escape Plan **[TBD — PROPOSED]**

This is a design proposal that unifies Candidate 1 and Candidate 3 and supplies Silarmousch's missing motive. It is recorded here to develop from, not yet confirmed.

**The proposed thread:**

- **Uskar caused Silarmousch's creation.** Whatever Uskar was, their existence is the cause from which Silarmousch came to be. This gives Uskar a concrete causal weight in the world's history (consistent with "Uskar's death set an entire chain of metaphysical events in motion") without yet fixing Uskar's nature, which remains deliberately ambiguous (see [characters.md](characters.md)).
- **Silarmousch's true goal is not corruption for its own sake — it is to become unreachable.** The whole trap of Rooms 1–3 is the opening of a longer design whose endpoint is to get the Outer God to travel back in time and kill Uskar. Because Uskar is the cause of Silarmousch's creation, killing Uskar forces the world into a branch in which Silarmousch was never created.
- **The win condition for Silarmousch is the branch, not the death.** Time is a tree: going back and producing a divergent state does not erase the parent — it forks a new branch (see [world/time.md](../world/time.md)). The Outer God, having committed the act, is left on / directed toward the branch where Silarmousch never existed. Silarmousch's own branch remains intact, and from the god's branch it is **out of reach** — a creature that does not exist on the branch the god can perceive cannot be located, perceived, or possessed by that god.

**Why this fits the established themes:**

- It makes Silarmousch a seeker of the game's *third freedom* (see "The Third Freedom" below) by a different route: not by exiting time entirely, but by branching the timeline so that he is absent from — and therefore imperceptible within — the only branch the Outer God occupies. The god "cannot know whether they are dead, transformed, or free."
- It makes the Outer God the literal killer of Uskar (Candidate 3) *because* Silarmousch engineered it (Candidate 1) — the two candidates are the same act seen from two ends.
- The act requires the player to split time, which is a cardinal sin (see [world/souls.md](../world/souls.md) and [world/time.md](../world/time.md)). So the plan still corrupts the god's soul, preserving Silarmousch's previously-stated aim of producing a compromised Outer God — corruption is now the *means*, and self-erasure into an unreachable branch is the *end*.

**Open questions this proposal raises (to resolve before Act 4/5):**

- Does branching alone make Silarmousch unreachable, or must the god be *bound* to the new branch somehow (e.g. unable to step back across the fork that erased him)? The mechanics of "stranding" the god on the Uskar-killed branch need design.
- If Uskar's death is what summons the Outer God in the first place, and the god is the one who kills Uskar, the loop is total (the self-caused mystery). Is this loop the intended final answer, or one credible reading the game later complicates?
- What does Silarmousch gain on his intact branch once the god is gone — simple survival, freedom from divine control, or something more?
- Where in the world is the evidence for "Uskar caused Silarmousch" planted, and is it discoverable in Act 4 (a text, a painting, a witness) without giving the synthesis away early?

---

## The Three Antagonistic Forces

### 1. Silarmousch **[CONFIRMED in structure; motives TBD]**

Silarmousch is an old mage who engineered the sequence of events in Rooms 1 through 3 as a trap. He positioned Lisspeg in Room 1 with a key and a story. He placed the Sinner's Dagger in Room 2 where the player would find it. He designed Room 3 as a demonic destination reachable only after the player's soul had been corrupted by murder. The trap is sophisticated, premeditated, and largely successful: most players who reach Room 3 carry a weakened soul and see only the demonic door.

His goal, as currently understood, is to steer the Outer God onto the demonic path. Why he wants this is not yet fully designed.

**Open questions about Silarmousch:**
- Is he trying to protect creatures from divine control by ensuring the arriving god becomes demonic (and therefore less capable, slower to act, more corruptible)?
- Is he serving a higher power — another god, a faction of gods, or something else — that benefits from a compromised Outer God?
- Does he know who Uskar is and what the Outer God is ultimately investigating? Does he know the investigation threatens him?
- Is he capable of being reasoned with, redeemed, or turned? Or is he a committed adversary throughout?

These questions are to be resolved in Act 4 design. What is confirmed: Silarmousch is the dominant antagonistic intelligence in the early game, and his architecture — the trap of Rooms 1 through 3 — is the first crisis the player navigates.

### 2. The Corrupting Path **[CONFIRMED in architecture]**

The demonic path is not a person. It is the structure Silarmousch built. Its components are:

- The Sinner's Dagger in Room 2 — a weapon placed to facilitate the first murder.
- The demonic door in Room 2 (Door 3) — visible only after the soul is corrupted.
- Room 3, with its demonic door forward (Door 6) accessible to a weakened soul.
- All demonic doors, artifacts, and creatures accessible through the continuation of Door 6 and beyond.

Following this path deepens corruption progressively. Each step down it makes the next step easier (demonic doors become more visible) and the way back harder (the soul requires significant purification acts to recover). The end state of this path is monsterdom: a creature with no soul, no identity, no access to magic, no possibility of divine control. It is the game's equivalent of a death that the player survives as a diminished shell.

### 3. The Mystery of Uskar as Antagonistic Force **[CONFIRMED as structure]**

The unsolved question is itself a pressure. The player cannot complete the game without understanding who Uskar was and why they died. Every encounter in Act 4 will be filtered through this question. Clues will contradict each other. Witnesses will have incomplete knowledge. Some sources will be unreliable. The investigation will produce interpretations before it produces facts.

The mystery functions antagonistically because it resists resolution. It keeps pulling the player further into the world's history, further into encounters with characters who have their own agendas, and further into confrontations with the game's deepest philosophical content. Solving it requires not just finding the right evidence but understanding what the evidence means within the world's cosmology.

---

## The Rescuing Force

### Bournache **[CONFIRMED]**

Bournache is a divine mage who discovered what Silarmousch was doing with Room 3 and intervened. He altered the room through a magical painting ("The Great Dawn"), placed a conspicuous glowing note on the central stand — designed so that nearly every player reads it before anything else — and set up the mechanism by which a player can contact him.

When contacted via the painting, Bournache arrives at T+1. He explains Silarmousch's trap, explains the mechanics of soul soundness and door visibility, and offers the player's vessel a willing sacrifice: his own soul, given freely, to purify the vessel's corrupted soul from the murder of Lisspeg.

This sacrifice is the central rescuing act of Act 1. Bournache dies in the act. The player's soul is restored to purity. The demonic door disappears. The divine door (Door 5) becomes visible for the first time. The path forward is now the divine path.

Bournache's sacrifice is also the game's first demonstration of the most powerful form of soul purification: a willing act, freely given, by a creature who chooses to give their soul to another. It cannot be taken. It must be chosen. This is important: the mechanism that rescues the player in Act 1 is precisely the mechanic that will recur in later acts as the game's most significant acts of love and commitment are performed.

Bournache is also the designer of Room 4. He placed Bol there with specific instructions and the poison nectar before he sacrificed himself. His design ensures the Outer God revelation in Room 4 — the player discovering they are not the vessel but the god — is not accidental. Bournache understood what was arriving in Room 1 and built a path for it.

### The Divine Path **[CONFIRMED in early acts; TBD beyond Room 10]**

The divine path, once opened by Bournache's sacrifice, leads through:

- Door 5 to Room 4 ("Who am I?") — the identity revelation.
- Door 8 to Room 5 ("How does magic work?") — the Altar of Mages, the tutorial hub.
- Rooms 6 through 10 — the five tutorial disciplines: combat and soul purification, magical paintings, notes and written records, magical weapons, temporal locks and time manipulation.
- Door 14, unlocked by Sekmidorgue after the tutorial is complete, into Act 4.

The divine path is not merely a safer route. It is the path through which the player acquires the conceptual framework needed to investigate Uskar's death. Every tutorial room teaches something that will be load-bearing later: combat and soul mechanics, how to read magic paintings, how written notes function as mechanical objects, how weapons scale with soul strength, and — most critically — how Chronos Locks work and how to navigate around temporal bindings. The Chronos Lock mechanic in Room 10 is specifically called out in that room's design notes as load-bearing for the main mystery.

---

## The Philosophical Core

### Kant's Third Antinomy **[CONFIRMED as the game's organizing tension]**

Kant's third antinomy poses thesis and antithesis:

- **Thesis (Freedom):** There is genuine freedom. Not everything is determined by prior causes. There are acts that begin a new causal chain, free of what came before.
- **Antithesis (Determinism):** Everything is determined by prior causes. There is no freedom. What appears as free action is itself the effect of causes that came before it.

The game translates this antinomy directly into its mechanics:

- **Determinism in this world:** Creatures with intact souls are subject to divine control. Their actions are, to some degree, the actions of the gods who guide them. The stronger the soul, the more completely controlled. The wizard, the most magically capable creature, is also the one most fully governed by divine will. Agency and power are inversely related.
- **Freedom in this world:** Creatures who destroy their souls sever the divine connection. They act freely of any god. But they have also destroyed the seat of their personality, their moral instincts, and their independent thought. The monster is free — and mindless. It has achieved freedom by ceasing to be a self that can use it.

Neither path is presented as satisfying. Neither path is correct. The antinomy is real and unresolved.

### "Is Freedom Really Desirable?" **[CONFIRMED as recurring question]**

This question recurs throughout the game in multiple forms.

The wizard who embraces divine control is described as experiencing bliss — a sense of alignment, of being exactly the instrument they were made to be. For them, control is not a cage; it is completion. The mythology of Gounargoun — a creature who surrendered fully to divine control and achieved nirvana — expresses this position without irony.

The sinner who destroys their soul gains abilities unavailable to the pure: demonic weapons, demonic doors, freedoms of movement and perception that divine creatures cannot access. But they are losing themselves in the same process. What they gain in capability they lose in identity.

The player is not outside this tension. Once the Outer God takes a vessel, it is bound to that vessel until the vessel dies. The god is constrained: they cannot act without a vessel, cannot possess what they have not encountered, cannot perceive what exists outside of time. The god who seems to hold power over creatures is also held by the structure of time and by the fundamental nature of divine perception. The game does not let the player feel like an unconstrained sovereign. The player is also being controlled — by what they do not yet know.

### The Outer God's Constraints **[CONFIRMED]**

The Outer God is powerful relative to creatures but constrained in ways that mirror what creatures feel:

- They can only act through a vessel. Without a vessel, they have no presence in the world.
- They can only possess creatures they have encountered. Unknown creatures are beyond their reach.
- Once a god takes a vessel, it is bound to that vessel until the vessel dies. Committing to a creature is a lasting choice, not a momentary one — the god cannot freely abandon it.
- They cannot perceive anything outside the bounds of time. The game's deepest form of freedom — existing outside time entirely — is a blind spot for the Outer God. They cannot see it, model it, or reach into it.

This last constraint is not incidental. It is the game's central revelation.

---

## The Freedom Paradox (The Game's Deepest Theme)

### The Two Insufficient Freedoms **[CONFIRMED]**

The game presents two routes creatures take toward freedom:

**Route 1 — Soul destruction (becoming a monster).** Technically achieves severance from divine control. Costs: identity, thought, moral capacity, magic, the ability to use any freedom gained. The monster is free in the same way a corpse is free: nothing can control it because there is nothing left to control.

**Route 2 — Soullessness through sin.** The same as Route 1 approached gradually rather than all at once. The demonic path is the slow version of this journey. Each sin brings more demonic ability and less of the self.

Neither route is real freedom. Both are presented in the game's texts, by the game's characters, and through the game's mechanics as failed answers to the question.

### The Third Freedom **[CONFIRMED as the game's ultimate secret]**

There is a form of freedom that almost no creature in this world understands.

A god's perception — like any creature's perception — is structured by time. Gods comprehend the world through temporal sequence. They perceive what exists at a time value. They act on what they can locate in the tree of time.

Anything that exists entirely outside of time has no position in the time tree. It cannot be found. It cannot be controlled. It cannot even be perceived as absent — from a temporal vantage point, it simply is not a thing that can be encountered.

A creature that achieves this state does not die and does not become a monster. It exits the framework in which gods operate. It is not destroyed. It is elsewhere — in a place the gods cannot follow because gods are defined by their relationship to time.

This is the real secret. The creatures who achieve it do not appear in the game's time tree. They cannot be encountered. They are not recorded anywhere within the god's perceivable world. From the Outer God's perspective, they simply ceased to exist. The god cannot know whether they are dead, transformed, or free.

### How This Connects to Uskar **[TBD — the payoff of the investigation]**

The deepest suggestion — drawn from the game's `ideas.md` — is that Uskar's death and the player's summoning were engineered by creatures who understood this third freedom and chose to pursue it.

The mechanism: by setting the Outer God in motion through a specific chain of antinomies — forced to kill, forced to choose, forced to investigate, forced to confront the limits of divine perception — the engineers of this chain are arranging for the Outer God to understand, through direct experience, that their own perception has boundaries. They are teaching the god what the god cannot teach itself.

The goal: creatures who are fully understood by a god — whose positions in the time tree are known — cannot escape. But if a god's understanding is disrupted, if the god is placed into paradoxes that exhaust its model of reality, then creatures can move through that disrupted understanding and exit time entirely.

Uskar may not have been a victim. Uskar may have been the initiating actor in a project of liberation — for themselves, for other creatures, and possibly for the Outer God as well. The murder is then not a murder in the ordinary sense. It is the first move in a philosophical proof.

**The game's ultimate message:** Control is an illusion on both sides. Gods control creatures, but gods are also bound — to the vessels they take until those vessels die, by the structure of time, by their own nature as temporal perceivers. Freedom is not about breaking chains within the framework. It is about transcending the framework entirely. The creatures who achieve true freedom are not visible to gods. They do not appear in the game as characters. They are the absence at the center of the mystery.

---

## The Act Structure

### Act 1 — The Trap (Rooms 1 through 3) **[CONFIRMED]**

The player wakes in Room 1 as an unnamed creature with no knowledge of who they are or who Uskar is. They meet Lisspeg, receive the Ward Key from him, proceed to Room 2, find the Sinner's Dagger, and return to Room 1 to kill Lisspeg. This is the first cardinal sin: murder. The soul is corrupted. Door 3 (the hidden demonic door in Room 2) becomes visible.

The player enters Room 3 with a weakened soul and Door 6 (the demonic continuation) clearly visible. Bournache's Note is on the central stand, glowing and unmissable. It explains soul soundness, door visibility, Silarmousch's trap, and how to contact Bournache through the painting "The Great Dawn."

The player contacts Bournache, advances time to T+1, receives Bournache's willing sacrifice, and the soul is purified. Door 6 disappears. Door 5 becomes visible. The player proceeds to Room 4.

Most players follow this path. There are three alternate branches: ignoring Bournache and taking Door 6 (demonic continuation), killing Bournache (deepest corruption available at this stage), or missing Bournache's Note entirely and taking Door 6 without ever knowing the rescue was possible.

### Act 2 — The Revelation (Room 4) **[CONFIRMED]**

Room 4 is labeled "Who am I?" It was designed by Bournache. Bol is present. He offers the poison nectar and truthfully states that drinking it will make the door visible. The original vessel drinks the nectar and dies.

The player is shown the full ledger of known souls: the original vessel (dead), Lisspeg (dead), Bournache (dead), Bol (alive). The only available vessel is Bol. The player takes control of Bol. Door 8 to Room 5 becomes visible — it was always invisible to the original vessel because that vessel was not a known mage. The player, as Bol, passes through.

The revelation is mechanical. No dialogue announces "you are a god." The player is removed from the body they have inhabited since T=0, shown a ledger of souls, and forced to choose a new one. They are the one choosing. They were always the one choosing. The label pays off.

### Act 3 — The Education (Rooms 5 through 10) **[CONFIRMED]**

The player, as Bol, arrives at the Altar of Mages (Room 5). Sekmidorgue, Bol's new mentor after Bournache's sacrifice, recognizes that Bol is now guided by an Outer God and treats this as a sacred circumstance requiring careful instruction.

Five tutorial rooms radiate from Room 5:

- **Room 6** ("What becomes of the soulless?"): Combat and soul purification tutorial. Two former mages, now soulless monsters, chained in the annex below the Altar. Killing them purifies Bol's soul and demonstrates the combat system.
- **Room 7** ("What does a painting see?"): Tutorial on magical paintings, how to read them, and how a mage can alter the place a painting depicts.
- **Room 8** ("What is written and what is real?"): Tutorial on notes as mechanical objects — how written records function in the game world, what authority they carry, and how they can alter states.
- **Room 9** ("What can a weapon remember?"): Tutorial on magical weapons, their soul-scaling properties, and how weapon power relates to the wielder's soul strength.
- **Room 10** ("Can a moment be caged?"): Tutorial on Chronos Locks and temporal binding. The player solves a puzzle in which the Purified Chalice is locked to time T, the trap protecting it is dormant at T+1, and the solution requires moving between time values to disarm the trap and retrieve the key before returning to T to open the lock. This mechanic is explicitly load-bearing for the main mystery.

After all five rooms are completed and the Purified Chalice is returned to Sekmidorgue, Door 14 is unlocked. Act 4 begins.

### Act 4 — The Investigation (Rooms 11 and beyond) **[TBD]**

The player, as Bol, exits the tutorial phase and begins active investigation of Uskar's death. This act is not yet designed in detail. What is established as the intended content:

- The player encounters Silarmousch directly. The nature of this encounter — whether as a confrontation, a dialogue, an evasion, or some combination — is TBD.
- The player encounters other mages with partial knowledge of Uskar, the events before the game began, and the nature of the gods.
- Time-travel puzzles become primary investigation tools. The player uses their accumulated knowledge of the time tree to visit moments before the game began or to observe past events that cast light on Uskar's death.
- Moral dilemmas accumulate. Each sin committed to advance the investigation damages the player's ability to see divine paths forward. Each purification act bought through monster-slaying or received sacrifice costs time and resources. The investigation is itself a test of the philosophical content the tutorial taught.
- The three candidate answers for "who killed Uskar" are introduced, developed, and (partially) undermined over the course of this act.

### Act 5 — The Answer (Return to Room 1) **[TBD]**

The player returns to Room 1 — physically the same stone chamber where the game began — with full knowledge of the world. Lisspeg is here at T=0. The Ward Key is here. The locked door is here. The paintings on the walls, which were environmental lore on the first visit, are now legible as specific historical records.

The question "Who killed Uskar?" is answered. The mechanism for the answer is not yet designed, but the design principle is confirmed: the answer is already present in Room 1. It was always present. The room does not change. The player changes.

The possibility of playing as Lisspeg in this return visit — taking control of his soul, proceeding through a wholly different path using Lisspeg's specific characteristics and access — is flagged as a late-game option with significant branching implications. Its full scope is TBD.

---

## Key Narrative Facts Confirmed for Development Reference

The following are confirmed and should be treated as fixed constraints:

1. The player is an Outer God inhabiting vessels, not the vessels themselves.
2. Uskar's death initiated the chain of events that brought the Outer God into Room 1.
3. Silarmousch engineered the trap of Rooms 1 through 3 to corrupt the player's soul.
4. Lisspeg was Silarmousch's unknowing instrument. He committed no sin. He is a victim of the trap.
5. Bournache intervened in the trap, altered Room 3, and sacrificed himself to give the player the divine path.
6. Bournache also designed Room 4 and placed Bol there with the poison nectar.
7. Bol committed no sin in Room 4. His statement about the door was technically true.
8. Soul strength governs which doors, artifacts, and actions are available. This is a mechanical and narrative constraint simultaneously.
9. Cardinal sins: murder, lying, deceit, permanent morphing, time-splitting, demonic doll use.
10. Soul purification: monster-slaying, receiving a willing sacrifice.
11. True freedom requires existing outside of time entirely — a state imperceptible to all gods, including the Outer God.
12. The Chronos Lock mechanic from Room 10 is load-bearing for the main mystery.
13. The answer to "who killed Uskar?" is not given until the player returns to Room 1 with full knowledge.
14. The three candidate answers for Uskar's death are open and should all appear credible through Act 4.

---

## Open Questions for Future Development

These are not yet resolved and must be addressed before Acts 4 and 5 can be written:

- Which of the three candidate answers for Uskar's death is correct (or how they combine)? See the proposed synthesis above, which combines Candidates 1 and 3.
- What are Silarmousch's full motives? See the proposed "Silarmousch's Escape Plan" above for one candidate motive (self-erasure into an unreachable branch).
- Are there other Outer Gods acting on this world, and what do they want?
- What was Uskar's nature specifically — god, mage, creature, or something else?
- What happens on the demonic path continuation through Door 6? What is in Room TBD beyond it?
- What does Door 4 in Room 2 (the hidden divine door visible only to a very pure soul) lead to?
- What is the full Lisspeg playthrough? Which rooms can Lisspeg enter that others cannot?
- How does the player encounter Silarmousch in Act 4, and is he redeemable?
- What creatures have achieved true freedom (exited time entirely), and how does the player discover this?
- What is the precise ending mechanic — what does returning to Room 1 and answering the question look like in practice?
