from collections.abc import Callable
from models.creature import Creature
from models.lock import Lock


class Door:
    def __init__(
        self,
        required_soul_soundness: float,
        lock: Lock,
        side_effect: Callable[[], None],
    ) -> None:
        self._locked = True
        self._room
        self._destination
        self._required_soul_soundness = required_soul_soundness
        self._lock = lock
        self.side_effect = side_effect

    @property
    def lock(self) -> Lock:
        return self._lock

    def is_visible_to(self, creature: Creature) -> bool:
        return creature.soul.soundness > self._required_soul_soundness
