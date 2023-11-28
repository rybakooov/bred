import requests
from django.utils.decorators import method_decorator
from django.views.decorators.cache import cache_page
from rest_framework import generics, permissions
from rest_framework.response import Response

from stocks.serializers import BaseFeedSerializer, TickerSerializer
from stocks.services import RSSFeedsParser


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
    Return last 20 feed entries from several RSS channels
    """
    page_size = 20
    _often_posting_feeds = (
        "https://www.kommersant.ru/RSS/section-economics.xml",
        "https://www.mk.ru/rss/economics/index.xml",
    )
    feed_urls = _often_posting_feeds + (
        "https://www.vedomosti.ru/rss/rubric/economics/global.xml",
        "https://www.vedomosti.ru/rss/rubric/economics/state_investments.xml",
        "https://www.vedomosti.ru/rss/rubric/finance/banks.xml",
        "https://www.vedomosti.ru/rss/rubric/finance/markets.xml",
        "https://www.vedomosti.ru/rss/rubric/personal_finance.xml",
    )
    feed_limit = dict.fromkeys(_often_posting_feeds, page_size // (len(_often_posting_feeds) + 1))

    serializer_class = BaseFeedSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return RSSFeedsParser(self.feed_urls).parse(feed_limit=self.feed_limit).sort_by().limit()

    @method_decorator(cache_page(60 * 30))  # 30 min cache
    def list(self, request, *args, **kwargs):
        return super().list(request, *args, **kwargs)
