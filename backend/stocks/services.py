import logging
from typing import Iterable, Mapping, Optional

import feedparser

logger = logging.getLogger(__name__)


class RSSFeedsParser:

    def __init__(self, feeds: Iterable[str]):
        self.feeds = feeds
        self.__internal_storage: list[dict] = []

    def parse(self, default_limit: int = 10, feed_limit: Optional[Mapping[str, int]] = None):
        feed_limit = feed_limit or {}

        for feed in self.feeds:
            logger.info('parsing feed: %s ...', feed)
            result = feedparser.parse(feed)
            self.__internal_storage += result["entries"][:feed_limit.get(feed, default_limit)]

        logger.info('got %s feed items', len(self.__internal_storage))
        return self

    def sort_by(self, field: str = "published_parsed", asc: bool = True):
        self.__internal_storage.sort(key=lambda item: item[field], reverse=asc)
        return self

    def limit(self, n: int = 20):
        return self.__internal_storage[:n]
