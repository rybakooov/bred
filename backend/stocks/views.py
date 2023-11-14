import feedparser
import requests
from rest_framework import generics, permissions
from rest_framework.response import Response

from stocks.serializers import BaseFeedSerializer, TickerSerializer


class TickerView(generics.RetrieveAPIView):
    permission_classes = (permissions.IsAuthenticated,)
    serializer_class = TickerSerializer

    def retrieve(self, request, *args, **kwargs):
        code = kwargs['code'].lower()
        ticker = kwargs['ticker'].upper()
        resp = requests.get(f"https://juststocks.ru/api/stocks/ticker/{code}/code/{ticker}?code=52A81CD8D34AC22991272A6C244F9")
        if not resp.ok:
            return Response(data=resp.json(), status=resp.status_code)
        else:
            return Response(resp.json())


class FeedView(generics.ListAPIView):
    """
    Available source are:
    `forbes` - https://www.forbes.com/money/feed/
    `wsj` - https://feeds.a.dj.com/rss/RSSMarketsMain.xml
    """
    serializer_class = BaseFeedSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        forbes_feeds = feedparser.parse("https://www.forbes.com/money/feed/")['entries']
        wsj_feeds = feedparser.parse("https://feeds.a.dj.com/rss/RSSMarketsMain.xml")['entries']

        return sorted(
            [*forbes_feeds, *wsj_feeds],
            key=lambda item: item['published'],
            reverse=True
        )[:20]

    def get_serializer_class(self):
        return BaseFeedSerializer
