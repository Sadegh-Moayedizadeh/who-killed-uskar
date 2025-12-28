from models.key import Key


class Lock:
    def unlocks(self, key: Key) -> bool:
        raise NotImplemented()
