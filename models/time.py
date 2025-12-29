from __future__ import annotations

from collections.abc import Iterable
from enum import Enum

from models.room import Room
from models.door import Door
from models.creature import Creature
from models.key import Key


class DoorEffect(Enum):
    INCREMENT_TIME = 1
    DECREMENT_TIME = 2
    NO_EFFECT = 3


class Time:
    def __init__(
        self,
        value: int,
        rooms: Iterable[Room],
        doors_to_destination: dict[Door, Room],
        door_to_effect: dict[Door, DoorEffect],
    ) -> None:
        self.proceeding_times: list[Time] = []
        self._value = value
        self._rooms = list(rooms)
        self._doors_to_destination = doors_to_destination
        self._door_to_effect = door_to_effect

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
            door_effect = self._door_to_effect.get(door)
            assert door_effect is not None
            if door_effect == DoorEffect.NO_EFFECT:
                room.leave(creature)
                new_room = self._doors_to_destination[door]
                new_room.enter(creature)
            else:
                raise NotImplemented()

    def new(self) -> Time:
        return Time(
            value=self._value + 1,
            rooms=[room.copy() for room in self._rooms],
            doors_to_destination=self._doors_to_destination,
        )
