<template>
  <div :class="$style.container">
    <div :class="$style.code">{{ code }}</div>
    <h1 :class="$style.message">{{ translates.message }}</h1>
    <ui-button to="/" theme="red" size="large" :class="$style.link">
      <span :class="$style.text">{{ $t('home') }}</span>
    </ui-button>
  </div>
</template>

<i18n lang="i18n">
  {
    "ru": {
      "404": {
        "title": "Страница не найдена",
        "description": "Страница не найдена",
        "message": "Страница не найдена"
      },
      "other": {
        "title": "Произошла ошибка",
        "description": "Произошла ошибка",
        "message": "Упс, что-то пошло не так"
      },
      "home": "На главную"
    },
    "en": {
      "404": {
        "title": "Page not found",
        "description": "Page not found",
        "message": "Page not found"
      },
      "other": {
        "title": "An error occurred",
        "description": "An error occurred",
        "message": "An error occurred"
      },
      "home": "Home page"
    }
  }
</i18n>

<script>
import UiButton from '../components/ui/button/index'

export default {
  components: {
    UiButton
  },
  props: {
    error: {
      type: Object,
      required: true
    }
  },
  layout: 'error',
  head () {
    return {
      title: this.translates.title,
      meta: [
        { hid: 'description', name: 'description', content: this.translates.description }
      ]
    }
  },
  computed: {
    code () {
      if (this.error.statusCode === 404) {
        return 404
      } else {
        return 500
      }
    },
    translates () {
      return (this.code === 404) ? this.$t('404') : this.$t('other')
    }
  }
}
</script>

<style lang="scss" module>
  .container {
    height: calc(100 * var(--vh) - var(--root-header-height) - var(--root-footer-height));
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 100%;
    @include down(md) {
      font-size: 6px;
    }
  }
  .code {
    font-size: 26em;
    font-family: var(--root-font-family-header);
  }
  .message {
    margin-bottom: 2em;
    font-size: 1.6em;
    text-transform: uppercase;
  }
</style>
