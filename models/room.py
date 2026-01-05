from __future__ import annotations

from collections.abc import Iterable

from models.door import Door
from models.creature import Creature


class Room:
    def __init__(
        self,
        doors: Iterable[Door],
        creatures: Iterable[Creature],
        label: str,
    ) -> None:
        self._doors = list(doors)
        self._creatures = list(creatures)
        self._label = label

    @property
    def creatures(self) -> Iterable[Creature]:
        return self._creatures

    @property
    def _doors(self) -> Iterable[Door]:
        return self._doors

    @property
    def label(self) -> str:
        return self._label

    def enter(self, creature: Creature) -> None:
        self._creatures.append(creature)

    def leave(self, creature: Creature) -> None:
        self._creatures.remove(creature)

    def copy(self) -> Room:
        raise NotImplemented()
