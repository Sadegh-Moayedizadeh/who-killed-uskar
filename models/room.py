from collections.abc import Iterable
from models.door import Door
from models.creature import Creature


class Room:
    def __init__(
        self,
        doors: Iterable[Door],
        creatures: Iterable[Creature],
    ) -> None:
        self._doors = list(doors)
        self._creatures = list(creatures)

    @property
    def creature(self) -> Iterable[Creature]:
        return self._creatures

    @property
    def _doors(self) -> Iterable[Door]:
        return self._doors

    def enter(self, creature: Creature) -> None:
        self._creatures.append(creature)

    def leave(self, creature: Creature) -> None:
        self._creatures.remove(creature)
