from collections.abc import Iterable

from models.room import Room


class Time:
    def __init__(
        self,
        value: int,
        rooms: Iterable[Room],
    ) -> None:
        self.proceeding_times: list[Time] = []
        self._value = value
        self._rooms = list(rooms)

    @property
    def value(self) -> int:
        return self._value
