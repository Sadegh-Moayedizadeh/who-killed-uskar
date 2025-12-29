# Doors
There are different kinds of doors. Their primary function is to block or filter access and change time.

## Functions and attributes

### Block access
A door can be locked. A locked door blocks access for all creatures who don't have a key to that lock. Each door has its own lock. Some doors can be locked with an external lock.

### Filter access
A door can filter access of creatures in different circumstances. For example if a creature is bearing arms then they won't be allowed to pass.

### Change time
If a character passes a door the time changes. It can be different for each kind of a door. For example one kind of door will cause time to increment by one, the other makes it decrease by one, and the other won't change time.
Since time is continuous then a door can change time in three ways:
- Not at all.
- Increment by one.
- Decrement by one.

Since door changes time and time is the higher most structure, then the door should be visible and controlled by time. Therefore the mapping between doors and their destination is defined in time. Since this mapping is defined in time then doors are something prebuilt and probably by the gods or whoever built the rooms and all other stuff.

### Direction
A door can only be one-way. You can pass a door and get into a room but necessariliy back.

### Visibility
A door can have certain levels of visibility. Some characters won't even be able to see a door if they don't pass their visibility criteria.

### Morphing
A door can morph into another door with different abilities. For example there can be a door that opens to another location but with proper magic it can morph into another kind of door that may open to another destination or affect on time in a different way. A locked door obviously cannot be morphed.

### Destination
A door should have one and only one destination where a creature gets after passing.

### Magic
All doors are magic. If a creature has soul soundness of zero then it is completely trapped and can never leave any room.
