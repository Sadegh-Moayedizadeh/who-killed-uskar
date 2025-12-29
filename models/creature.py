from collections.abc import Iterable
from models.soul import Soul
from models.key import Key
from models.mind import Mind
from models.inventory import Inventory


class Creature:
    def __init__(self):
        self._inventory = Inventory()

    @property
    def inventory(self) -> Inventory:
        return self._inventory

    @property
    def mind(self) -> Mind:
        raise NotImplemented()

    @property
    def soul(self) -> Soul:
        raise NotImplemented()

    def add_key(self, key: Key) -> None:
        self._keys.append(key)
