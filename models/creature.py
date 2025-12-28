from collections.abc import Iterable
from models.soul import Soul
from models.key import Key
from models.mind import Mind


class Creature:
    def __init__(self):
        self._keys: list[Key] = []

    @property
    def keys(self) -> Iterable[Key]:
        return self._keys

    @property
    def mind(self) -> Mind:
        raise NotImplemented()

    @property
    def soul(self) -> Soul:
        raise NotImplemented()

    def add_key(self, key: Key) -> None:
        self._keys.append(key)
