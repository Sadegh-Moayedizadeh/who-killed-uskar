from collections.abc import Iterable

from models.key import Key


class Inventory:
    def __init__(self) -> None:
        self._keys: list[Key] = []

    @property
    def keys(self) -> Iterable[Key]:
        return self._keys

    def __contains__(self, item: Key) -> bool:
        # NOTE Adding an new type of item should update here.
        return item in self._keys

    def add(self, item: Key) -> None:
        # NOTE Adding an new type of item should update here.
        if isinstance(item, Key):
            self._keys.append(item)
