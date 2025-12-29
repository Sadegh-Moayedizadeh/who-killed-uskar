from collections.abc import Iterable

from models.room import Room
from models.door import Door
from models.creature import Creature
from models.key import Key


class Time:
    def __init__(
        self,
        value: int,
        rooms: Iterable[Room],
        doors_to_destination: dict[Door, Room]
    ) -> None:
        self.proceeding_times: list[Time] = []
        self._value = value
        self._rooms = list(rooms)
        self._doors_to_destination = doors_to_destination

    @property
    def value(self) -> int:
        return self._value

    def pass_through_door(
        self,
        door: Door,
        creature: Creature,
        room: Room,
        key: Key
    ) -> None:
        assert creature in room._creatures
        assert door in room._doors
        assert door.is_visible_to(creature)
        assert key in creature.inventory
        if door.lock.unlocks(key):
            room.leave(creature)
            new_room = self._doors_to_destination[door]
            new_room.enter(creature)
