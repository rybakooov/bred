from rest_framework import serializers

FORBES = "forbes"
WSJ = "wsj"
VEDOMOSTI = "vedomosti"
KOMMERSANT = "kommersant"
MOS_KOM = "mk"

URLS_MAPPING = {
    FORBES: "www.forbes.com",
    WSJ: "www.wsj.com",
    VEDOMOSTI: "www.vedomosti.ru",
    KOMMERSANT: "www.kommersant.ru",
    MOS_KOM: "www.mk.ru",
}


class MovingAverageSerializer(serializers.Serializer):
    period = serializers.CharField(allow_null=True)
    simple_value = serializers.CharField(allow_null=True)
    simple_value_decision = serializers.CharField(allow_null=True)
    exponential = serializers.CharField(allow_null=True)
    exponential_decision = serializers.CharField(allow_null=True)


class MovingAveragesSerializer(serializers.Serializer):
    moving_averages = MovingAverageSerializer(many=True, allow_null=True)
    buy = serializers.IntegerField(allow_null=True)
    sell = serializers.IntegerField(allow_null=True)
    summary = serializers.CharField(allow_null=True)


class IndicatorSerializer(serializers.Serializer):
    name = serializers.CharField(allow_null=True)
    value = serializers.CharField(allow_null=True)
    action = serializers.CharField(allow_null=True)


class TechnicalIndicatorsSerializer(serializers.Serializer):
    indicators = IndicatorSerializer(many=True, allow_null=True)
    buy = serializers.IntegerField(allow_null=True)
    sell = serializers.IntegerField(allow_null=True)
    neutral = serializers.IntegerField(allow_null=True)
    summary = serializers.CharField(allow_null=True)


class TechnicialInfoSerializer(serializers.Serializer):
    id = serializers.IntegerField(allow_null=True)
    moving_averages = MovingAveragesSerializer(allow_null=True)
    technical_indicators = TechnicalIndicatorsSerializer(allow_null=True)


class StockEarningsSerializer(serializers.Serializer):
    release_date = serializers.CharField(allow_null=True)
    period_end_date = serializers.CharField(allow_null=True)
    eps_original = serializers.CharField(allow_null=True)
    eps_forecast = serializers.CharField(allow_null=True)
    revenue_original = serializers.CharField(allow_null=True)
    revenue_forecast = serializers.CharField(allow_null=True)


class InsiderTradingSerializer(serializers.Serializer):
    id = serializers.IntegerField(allow_null=True)
    ticker = serializers.CharField(allow_null=True)
    company_name = serializers.CharField(allow_null=True)
    transaction_date = serializers.DateField(allow_null=True)
    reported_date = serializers.DateField(allow_null=True)
    insider_name = serializers.CharField(allow_null=True)
    shares_traded = serializers.IntegerField()
    average_price = serializers.FloatField()
    total_amount = serializers.IntegerField(),
    shares_owned = serializers.IntegerField(),
    operation_type = serializers.CharField(allow_null=True)
    stock_id = serializers.IntegerField(allow_null=True)


class TickerSerializer(serializers.Serializer):
    ticker = serializers.CharField(max_length=4)
    last_update_date = serializers.DateField(allow_null=True)
    technical_info = TechnicialInfoSerializer(allow_null=True)
    stock_earnings = StockEarningsSerializer(many=True, allow_null=True)
    id = serializers.IntegerField(allow_null=True)
    last_updated_price_earnings = serializers.FloatField(allow_null=True)
    last_updated_price_sales = serializers.FloatField(allow_null=True)
    last_updated_price_balance_price = serializers.FloatField(allow_null=True)
    last_updated_EPS = serializers.CharField(allow_null=True)
    last_updated_EVEBITDA = serializers.FloatField(allow_null=True)
    last_updated_debt_equity = serializers.FloatField(allow_null=True)
    last_updated_operating_margin = serializers.CharField(allow_null=True)
    last_updated_clear_margin = serializers.CharField(allow_null=True)
    last_updated_ROE = serializers.FloatField(allow_null=True)
    last_updated_ROA = serializers.FloatField(allow_null=True)
    last_updated_revenue_growth_in_3years = serializers.CharField(allow_null=True)
    last_updated_earnings_per_share_growth = serializers.CharField(allow_null=True)
    naked_short_report_JSON = serializers.CharField(allow_null=True)
    insider_tradings = InsiderTradingSerializer(many=True, allow_null=True)
    k8_report_link = serializers.URLField(allow_null=True)
    quarter_report_link = serializers.URLField(allow_null=True)
    simplywall_link = serializers.URLField(allow_null=True)
    perf_week = serializers.CharField(allow_null=True)
    perf_month = serializers.CharField(allow_null=True)
    perf_quarter = serializers.CharField(allow_null=True)
    perf_half_year = serializers.CharField(allow_null=True)
    perf_year = serializers.CharField(allow_null=True)
    finbull_source_link = serializers.URLField(allow_null=True)
    nakedshort_report_source_link = serializers.URLField(allow_null=True)
    sec_form_source_link = serializers.URLField(allow_null=True)
    investing_api_source_url = serializers.URLField(allow_null=True)


class BaseFeedSerializer(serializers.Serializer):
    link = serializers.URLField()
    title = serializers.CharField()
    summary = serializers.CharField()
    published = serializers.DateTimeField()
    source = serializers.SerializerMethodField()
    thumbnail = serializers.SerializerMethodField()

    def get_source(self, obj):
        link = obj["link"]

        for source_name, source_url in URLS_MAPPING.items():
            if source_url in link:
                return source_name

        return ""

    def get_thumbnail(self, obj):
        source = self.get_source(obj)

        if source == FORBES and (media := obj.get('media_thumbnail')):
            return media[0]['url']

        elif source in (VEDOMOSTI, KOMMERSANT, MOS_KOM):
            for link in obj.get("links", []):
                if link.get("rel") == "enclosure":
                    return link["href"]

        return None
