# Artifacts

## Classes

### Physical
A physical artifact is the one that contains to magical or demonic constraint. If a creature does not pass a magical or demonic constraint, then that artifact will act like a physical one.

### Magical
The magical abilities are activated by creatures having strong souls. The constraint on magical artifact are of type more-than constraint. A magical artifact or ability will be activated only if the creature using it has a soul stronger and more pure than the specified amount for that artifact or action.

### Demonic
Demonic artifacts are the ones whose constraint on the soul is a less-than constraint. A deminic artifact or ability will be activated only if the creature using it has a soul weaker and less pure than the specified amount for that artifact or action.

## Kinds

### Key
Keys can open locks. Keys don't have magical properties. There are just pairs of keys and locks. The relationship between keys and locks is not one to one. A key can open multiple locks and a lock can be opened by multiple keys. But the relationship between the type of keys and locks is one to one. A type A lock can only be opened by a type A key. We can come up with cool and meaningful names for them.

### Sword
You can hit enemies with swords.

### Shield
You can block or parry with shields.

### Poison
A creature can die by drinking poison. In the game there may arise a situation where you need to kill the creature you are controlling. Using poisons is also a way that you can kill certain creatures. You can put poison on your sword to make it deadlier to certain enemies.

### Inventory
An inventory is where you hold artifacts. The only scenario that requires a more careful design is when a creature picks up an artifact and puts it in its inventory and the goes back in time. There are two possible outcomes. One is the artifact staying in the inventory and the other is for it to be gone. A more logical choice would be the second one because if the artifact stays in the inventory and keeps on being gone from its original place then it will have to undo whatever action that lead to this item being there which seems impossible. If we keep the artifact in both places then it will be duplicated. If we choose to remove the artifact from the inventory then we should be careful about the stuff that depend on each other.

### Lock
A player can use a lock and lock stuff like doors, inventories and so on. A lock needs to be aquired along with its key. A lock not only blocks access to an object but can also lock it in a place or a time. If the lock has an ability to lock an item to a place then it won't be moved. If a lock has the ability to lock an item to a time then it is only accessible in that certain time. If you come back in another time it won't be there.

### Note
There are some notes all over the place. All notes are signed. You can also leave notes which may change the course of the game. Notes can also be encoded. There may be different decodings. A note can also be destroyed, collected, or altered.

### Painting
A painting is somewhat similar to a note in a sense that they contain a clue or a message. But they are not encoded. They are visual.
Paintings are of places. If you posess strong magic you may affect the place that a painting shows. If a place changes that painting changes too. The painting shows that place at the begining of an integer time value.
Paintings can be physical or magical. Physical paintings are simply showing some static thing with no abilities mantioned above. They may only contain some information.
Magical paintings on the other hand are the ones that are described above as the ones that can affect remote places.

### Doll
Dolls are like paintings but they are of creatures. A doll shows the state of a creature at the begining of a time integer value. If you are demonic to a certain degree you are able to affect a creature or harm it via its doll. This act is a sin.
Dolls are physical or demonic. Physical dolls have no affect but demonic ones' abilities are described above.
