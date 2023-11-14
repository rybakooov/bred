<template>
  <div :class="$style.wrapper">
    <div :class="$style.frame" id="frame">
      <div class="tradingview-widget-container">
        <div :class="[$style.tradingwidget, 'tradingview-widget-container__widget']"></div>
        <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-symbol-info.js" async>
          {
          "height": 250,
          "symbol": {{ currentFrame }},
          "locale": "ru",
          "colorTheme": "light",
          "isTransparent": false
          }
        </script>
      </div>
      <div :class="$style.secondFrame">
        <div class="tradingview-widget-container">
          <div class="tradingview-widget-container__widget"></div>
          <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-symbol-profile.js" async>
            {
            "symbol": {{ currentFrame }},
            "colorTheme": "light",
            "isTransparent": false,
            "locale": "ru"
            }
          </script>
        </div>
      </div>
    </div>

    <screener-block :class="$style.indicators" :title="response.ticker" desc="Анализ компании" :size="true">
      <table :class="$style.table">
        <thead :class="$style.thead">
          <tr>
            <th><span :class="$style.t">Основные показатели компании</span></th>
            <th><span :class="$style.t">Значение</span></th>
          </tr>
        </thead>
        <tbody :class="$style.tbody">
          <tr :class="$style.tr" v-for="(item, i) in (usa? indicatorsUsa : indicatorsRus)" :key="i + '_item'">
            <td><span :class="$style.t">{{ item.title }}</span></td>
            <td>
              <span :class="$style.t" v-if="item.value">{{ item.value }}</span>
              <span :class="$style.t" v-if="!item.value">—</span>
            </td>
          </tr>
        </tbody>
      </table>
      <ui-button :href="response.investingApiSourceUrl">
        <span :class="$style.blockLink">
          <icon-ex-link :class="$style.icon"/>
          <span :class="$style.t">Перейти на источник</span>
        </span>
      </ui-button>
    </screener-block>

    <screener-block subtitle="Технический анализ компании на месяц" title="Скользящие средние компании" v-if="movingAverages">
      <table :class="$style.table">
        <thead :class="$style.thead">
          <tr>
            <th v-for="(title, i) in techAnalyzeTitles" :key="i + '_title'"><span :class="$style.t">{{ title }}</span></th>
          </tr>
        </thead>
        <tbody :class="$style.tbody">
          <tr :class="$style.tr" v-for="(item, i) in movingAverages.movingAverage" :key="i + '_item'">
            <td><span :class="$style.t">{{ item.period }}</span></td>
            <td :class="$style.value">
              <span :class="$style.t">{{ item.simpleValue }}</span>
              <div :class="[$style.status, {[$style.status_sold]: (item.exponentialDecision === 'Продавать')}, {[$style.status_buy]: (item.exponentialDecision === 'Покупать')}]">
                <span :class="$style.t">{{ item.simpleValueDecision }}</span>
              </div>
            </td>
            <td :class="$style.value">
              <span :class="$style.t">{{ item.exponential }}</span>
              <div :class="[$style.status, {[$style.status_sold]: (item.exponentialDecision === 'Продавать')}, {[$style.status_buy]: (item.exponentialDecision === 'Покупать')}]">
                <span :class="$style.t">{{ item.exponentialDecision }}</span>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
      <div :class="$style.resume">
        <div :class="[$style.status, $style.status_buy]"><span :class="$style.t">Покупать: {{ movingAverages.buy }}</span></div>
        <div :class="[$style.status, $style.status_sold]"><span :class="$style.t">Продавать: {{ movingAverages.sell }}</span></div>
        <div :class="[$style.status, $style.status_summary]"><span :class="$style.t">Резюме: <span style="whiteSpace: nowrap">{{ movingAverages.summary }}</span></span></div>
      </div>
      <ui-button :href="response.investingApiSourceUrl">
        <span :class="$style.blockLink">
          <icon-ex-link :class="$style.icon"/>
          <span :class="$style.t">Перейти на источник</span>
        </span>
      </ui-button>
    </screener-block>

    <screener-block subtitle="Технический анализ компании на месяц" title="Технические показатели" v-if="technicalIndicators">
      <table :class="$style.table">
        <thead :class="$style.thead">
          <tr>
            <th v-for="(title, i) in techAnalyzeTitles" :key="i + '_title'"><span :class="$style.t">{{ title }}</span></th>
          </tr>
        </thead>
        <tbody :class="$style.tbody">
          <tr v-for="(item, i) in technicalIndicators.indicatorList" :key="i + '_item'">
            <td><span :class="$style.t">{{ item.name }}</span></td>
            <td :class="$style.value">
              <span :class="$style.t">{{ item.value }}</span>
            </td>
            <td :class="$style.value">
              <div :class="[$style.status, {[$style.status_sold]: (item.action === 'Продавать')}, {[$style.status_buy]: (item.action === 'Покупать')}]">
                <span :class="$style.t">{{ item.action }}</span>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
      <div :class="$style.resume">
        <div :class="[$style.status, $style.status_buy]"><span :class="$style.t">Покупать: {{ technicalIndicators.buy }}</span></div>
        <div :class="[$style.status, $style.status_sold]"><span :class="$style.t">Продавать: {{ technicalIndicators.sell }}</span></div>
        <div :class="[$style.status]"><span :class="$style.t">Нейтрально: {{ technicalIndicators.neutral }}</span></div>
        <div :class="[$style.status, $style.status_summary]"><span :class="$style.t">Резюме: <span style="whiteSpace: nowrap">{{ technicalIndicators.summary }}</span></span></div>
      </div>
    </screener-block>

    <screener-block :class="$style.fullPage" title="Последние инсайдерские сделки" v-if="insiderTradings && insiderTradings.length">
      <table :class="$style.table">
        <thead :class="$style.thead">
          <tr>
            <th v-for="(title, i) in fullPageTitles" :key="i + '_title'"><span :class="$style.t">{{ title }}</span></th>
          </tr>
        </thead>
        <tbody :class="$style.tbody">
          <tr v-for="(item, i) in insiderTradings" :key="i + '_item'">
            <td><span :class="$style.t">{{ item.operationType }}</span></td>
            <td><span :class="$style.t">{{ item.companyName }}</span></td>
            <td><span :class="$style.t">{{ item.transactionDate }}</span></td>
            <td><span :class="$style.t">{{ item.reportedDateTime }}</span></td>
            <td><span :class="$style.t">{{ item.insiderName }}</span></td>
            <td><span :class="$style.t">{{ item.sharesTraded }}</span></td>
            <td><span :class="$style.t">{{ item.averagePrice }}</span></td>
            <td><span :class="$style.t">{{ item.totalAmount }}</span></td>
            <td><span :class="$style.t">{{ item.sharesOwned }}</span></td>
          </tr>
        </tbody>
      </table>
      <ui-button :href="response.secFormSourceLink">
        <span :class="$style.blockLink">
          <icon-ex-link :class="$style.icon"/>
          <span :class="$style.t">Перейти на источник</span>
        </span>
      </ui-button>
    </screener-block>

    <screener-block :class="$style.fullPage" title="Ссылки на репорты">
      <ui-button :class="$style.reportLink" v-for="(link, i) in reportLinks" :key="i + '_link'" :href="link.link">
        <span :class="$style.t">{{ link.name }}</span>
      </ui-button>
    </screener-block>

    <screener-block :class="$style.fullPage" title="Технический график">
      <div :class="$style.graphic">
        <div class="tradingview-widget-container">
          <div id="tradingview_bdc59"></div>
          <script type="text/javascript" v-if="isMounted">
            new TradingView.widget(
              {
                "width": "100%",
                "height": "100%",
                "symbol": {{ currentFrame }},
                "interval": "D",
                "timezone": "Etc/UTC",
                "theme": "light",
                "style": "1",
                "locale": "ru",
                "toolbar_bg": "#f1f3f6",
                "enable_publishing": false,
                "allow_symbol_change": true,
                "container_id": "tradingview_bdc59"
              }
            );
          </script>
        </div>
      </div>
    </screener-block>
  </div>
</template>

<script>
import ScreenerBlock from '~/components/sections/screener/block'
import UiButton from '~/components/ui/button'
import IconExLink from '~/components/icons/ex-link'
export default {
  name: 'ScreenerContent',
  components: {
    IconExLink,
    UiButton,
    ScreenerBlock
  },
  props: {
    response: {
      type: Object,
      required: true
    },
    usa: {
      type: Boolean,
      required: true
    }
  },
  data() {
    return {
      isMounted: false,
      fullPageTitles: [
        "Операция",
        "Название компании",
        "Дата транзакции",
        "Дата опубликования репорта",
        "Имя инсайдера",
        "Количество акций",
        "Средняя цена",
        "Общая сумма",
        "Кол. акций во владении"
      ],
      techAnalyzeTitles: [
        "Период",
        "Простая",
        "Экспоненциальная"
      ]
    }
  },
  computed: {
    currentFrame() {
      return JSON.stringify(this.response.ticker)
    },
    indicatorsUsa() {
      return [
        { title: "Чистая прибыль (P/E)", value: this.response.lastUpdatedPriceEarnings },
        { title: "Цена/Выручка (P/S)", value: this.response.lastUpdatedPriceSales },
        { title: "Балансовая стоимость (P/B)", value: this.response.lastUpdatedPriceBalancePrice },
        { title: "Рост прибыли на акцию в ближайший год", value: this.response.lastUpdatedEPS },
        { title: "Стоимость компании (EV / EBITDA)", value: this.response.lastUpdatedEVEBITDA },
        { title: "Долг / капитал (Debt / Equity)", value: this.response.lastUpdatedDebtEquity },
        { title: "Операционная маржа", value: this.response.lastUpdatedOperatingMargin },
        { title: "Чистая маржа", value: this.response.lastUpdatedClearMargin },
        { title: "Рентабельность капитала (ROE)", value: this.response.lastUpdatedROE },
        { title: "Рентабельность активов (ROA)", value: this.response.lastUpdatedROA },
        { title: "Рост выручки в течение 3 лет (за год)", value: this.response.lastUpdatedRevenueGrowthIn3Years },
        { title: "Рост прибыли на акцию в течение 3 лет", value: this.response.lastUpdatedEarningsPerShareGrowth }
      ]
    },
    indicatorsRus() {
      return [
        { title: "Средний объем", value: this.response.avgVolume || this.response.zalupa },
        { title: "Бета", value: this.response.beta },
        { title: "Изменение за 1 год", value: this.response.changedPerYear },
        { title: "Акции в обращении", value: this.response.countOfStocks },
        { title: "Дивиденты", value: this.response.dividends },
        { title: "Доход", value: this.response.earnings },
        { title: "EPS", value: this.response.lastUpdatedEPS },
        { title: "Рыночная капитализация", value: this.response.marketCapitalization },
        { title: "Дата следующего отчета", value: this.response.nextReportDate },
        { title: "Коэффициент P / E", value: this.response.priceEarnings },
        { title: "Объем", value: this.response.volume }
      ]
    },
    movingAverages() {
      return this.response.technicalInfo.movingAverages
    },
    technicalIndicators() {
      return this.response.technicalInfo.technicalIndicators
    },
    insiderTradings() {
      return this.response.insiderTradings
    },
    reportLinks() {
      return [
        { link: this.response.quarterReportLink, name: "Перейти на последний квартальный отчет" },
        { link: this.response.k8ReportLink, name: "Перейти на последний отчет k8" },
        { link: this.response.simplywallLink, name: "Перейти на simplywall.st анализ" }
      ]
    }
  },
  mounted() {
    setTimeout(() => {
      this.isMounted = true
    }, 1000)
  }
}
</script>

<style lang="scss" module>
  .wrapper {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: auto;
    gap: 1.6em;
    margin-top: 3.2em;
    @include down(xxl) {
      grid-template-columns: 1fr;
    }
    @include down(md) {
      grid-template-columns: 1fr;
    }
  }

  .bots {
    margin-bottom: 4em;
    & + & {
      margin-left: 1.6em;
      @include down(md) {
        margin-left: 0.8em;
      }
    }
  }
  .title {
    font-family: var(--root-font-family-header);
    font-weight: 500;
    margin-bottom: 1.6em;
    .t {
      font-size: 2.4em;
      line-height: 1.08;
    }
  }
  .frame {
    max-height: 74em;
    align-self: stretch;
  }
  .secondFrame {
    height: 44.8em;
    @include down(md) {
      height: 35.8em;
    }
  }
  .graphic {
    height: vh(80);
  }
  .table {
    width: 100%;
    text-align: left;
    border-collapse: collapse;
    tr {
      border-bottom: 1px solid #EBEBEB;
    }
    .t {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }
  .thead {
    th {
      padding: 1.6em 1.6em;
      color: #000000;
      &:first-child {
        padding: 1.6em 1.6em 1.6em 0;
      }
      &:last-child {
        padding: 1.6em 0 1.6em 1.6em;
      }
    }
  }
  .tbody {
    td {
      padding: 1.2em 1.6em;
      color: #505050;
      &:first-child {
        padding: 1.2em 1.6em 1.2em 0;
      }
      &:last-child {
        padding: 1.2em 0 1.2em 1.6em;
      }
    }
  }
  .indicators {
    tr {
      &:last-child {
        border-bottom: none;
      }
    }
  }
  .value {
    white-space: nowrap;
    .t + .status {
      margin-left: 1.6em;
    }
  }
  .status {
    padding: .5em 1em;
    border-radius: .4em;
    background: #EBEBEB;
    display: inline-block;
    .t {
      font-size: 1.2em;
      line-height: 1.17;
      color: #505050;
    }
    &_sold {
      background: rgba(235, 87, 87, 0.1);
      .t {
        color: #EB5757;
      }
    }
    &_buy {
      background: rgba(39, 174, 96, 0.1);
      .t {
        color: #27AE60;
      }
    }
  }
  .resume {
    display: flex;
    align-items: center;
    margin-top: 2.4em;
    & > div {
      margin-left: 0;
      margin-right: .8em;
    }
    .status_summary {
      background: #27AE60;
      .t {
        color: #FFF;
      }
    }
  }
  .blockLink {
    display: flex;
    align-items: center;
    margin-top: 2.4em;
    .icon {
      margin-right: .8em;
      width: 1.6em;
      height: 1.6em;
    }
    .t {
      font-size: 1.6em;
      line-height: 1.12;
      color: #505050;
    }
  }
  .fullPage {
    grid-column: 1 / -1;
  }
  .reportLink {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 5em;
    background: #27AE60;
    border-radius: .8em;
    &:not(:last-child) {
      margin-bottom: 1.6em;
    }
    .t {
      font-size: 1.6em;
      line-height: 1.12;
      color: #FFFFFF;
    }
  }

  .tradingwidget {
    width: 100% !important;
    height: 100% !important;
  }
  :global(.tradingview-widget-container) {
    width: 100% !important;
    & > iframe {
      width: 100% !important;
    }
  }
</style>
