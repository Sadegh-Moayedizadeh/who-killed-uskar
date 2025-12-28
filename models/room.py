from collections.abc import Iterable
from models.door import Door
from models.creature import Creature


class Room:
    def __init__(
        self,
        doors: Iterable[Door],
        creatures: Iterable[Creature]
    ) -> None:
        self._doors = list(doors)
        self._creatures = list(creatures)

    def enter(self, creature: Creature) -> None:
        self._creatures.append(creature)

    def go_through_door(self, door: Door, creature: Creature) -> bool:
        assert door in self.doors
        assert door.is_visible_to(creature)

        for key in creature.keys:
            if door.lock.unlocks(key):
                raise NotImplemented()
        return False
