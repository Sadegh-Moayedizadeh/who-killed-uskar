from models.key import Key


class Lock:
    def __init__(self, key: Key):
        self._key = key

    def unlocks(self, key: Key) -> bool:
        return key is self._key
