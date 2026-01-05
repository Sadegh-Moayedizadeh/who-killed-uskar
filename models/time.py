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
        preceeding_time: Time | None,
        rooms: Iterable[Room],
        doors_to_destination: dict[Door, Room],
        door_to_effect: dict[Door, DoorEffect],
    ) -> None:
        self._preceeding_time = preceeding_time
        self._value = value
        self._rooms = list(rooms)
        self._doors_to_destination = doors_to_destination
        self._doors_to_effect = door_to_effect

    @property
    def value(self) -> int:
        return self._value

    def pass_through_door(
        self,
        door: Door,
        creature: Creature,
        current_room: Room,
        key: Key
    ) -> Time:
        assert creature in current_room._creatures
        assert door in current_room._doors
        assert door.is_visible_to(creature)
        assert key in creature.inventory
        if door.lock.unlocks(key):
            door_effect = self._doors_to_effect.get(door)
            assert door_effect is not None
            if door_effect == DoorEffect.NO_EFFECT:
                current_room.leave(creature)
                new_room = self._doors_to_destination[door]
                new_room.enter(creature)
                return self
            elif door_effect == DoorEffect.DECREMENT_TIME:
                if self._preceeding_time is None:
                    raise RuntimeError("There is no preceeding time.")
                preceeding_time = self._preceeding_time
                current_room_in_preceeding_time = next(
                    room for room in preceeding_time._rooms
                    if creature in list(room.creatures)
                )
                current_room_in_preceeding_time.leave(creature)
                new_room = preceeding_time._doors_to_destination[door]
                new_room.enter(creature)
                return preceeding_time
            elif door_effect == DoorEffect.INCREMENT_TIME:
                new_time = Time(
                    value=self._value + 1,
                    preceeding_time=self,
                    rooms=[room.copy() for room in self._rooms],
                    doors_to_destination=self._doors_to_destination,
                    door_to_effect=self._doors_to_effect,
                )
                current_room_in_new_time = next(
                    room for room in new_time._rooms
                    if room.label == current_room.label
                )
                current_room_in_new_time.leave(creature)
                new_room = new_time._doors_to_destination[door]
                new_room.enter(creature)
                return new_time

    def new(self) -> Time:
        return Time(
            value=self._value + 1,
            rooms=[room.copy() for room in self._rooms],
            doors_to_destination=self._doors_to_destination,
        )
