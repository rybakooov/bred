<template>
  <div :class="$style.container">
    <form :class="$style.form" @submit.prevent="onSubmit">
      <label :class="$style.remember">
        <input type="checkbox" v-model="usa" />
        <span :class="$style.mark">
          <icon-mark :class="$style.mark__svg" />
        </span>
        <p :class="$style.text">
          <span :class="$style.t">
            Анализ по USA
          </span>
        </p>
      </label>
      <div :class="$style.row">
        <ui-input v-model="ticker" :class="$style.input" placeholder="Введите тикер компании">
        </ui-input>
        <ui-button :class="$style.button" size="large">
          <span :class="$style.text">Получить данные</span>
          <search-icon :class="$style.icon" slot="before"/>
        </ui-button>
        <ui-spinner :class="$style.spinner" v-if="loading"/>
      </div>
    </form>
  </div>
</template>

<script>
  import UiInput from '~/components/ui/input'
  import UiButton from '~/components/ui/button'
  import SearchIcon from '~/components/icons/search'
  import IconMark from '~/components/icons/mark'
  import UiSpinner from '~/components/ui/spinner'

  export default {
    name: 'ScreenerSearch',
    components: {
      UiSpinner,
      IconMark,
      SearchIcon,
      UiButton,
      UiInput
    },
    data() {
      return {
        usa: true,
        ticker: '',
        loading: false
      }
    },
    methods: {
      async onSubmit() {
        try {
          this.loading = true
          this.$emit('input', null)
          const res = await this.$axios.$get(`/stocks/${this.usa ? 'usa' : 'rus'}/${this.ticker}/`)
          this.$emit('input', { response: res, usa: this.usa })
        } catch (e) {
          // console.log(e)
          this.$emit('input', null)
        } finally {
          this.loading = false
        }
      }
    }
  }
</script>

<style lang="scss" module>
  .container {
    width: 100%;
  }
  .form {

  }

  .row {
    display: flex;
    align-items: center;
    max-height: 5.8em;
    width: 100%;
    margin-top: 2.4em;
  }

  .input {
    width: 100%;
    display: flex;
    align-items: center;
    flex-direction: row;
    margin-right: -2em;
    background-color: var(--root-color-base-0);
    span {
      width: 100%;
    }
    .icon {
      margin-right: .94em;
      width: 1.7em;
      height: 1.7em;
    }
  }

  .button {
    background: var(--root-color-red-500);
    color: var(--root-color-base-0);
    max-width: 20.2em;
    width: 100%;
    border-radius: 0 .8em .8em 0;
    @include down(md) {
      width: 5.8em;
      padding: 0;
    }
    .text {
      white-space: nowrap;
      @include down(md) {
        display: none;
      }
    }
    .icon {
      width: 2em;
      height: auto;
      display: block;
      @include up(md) {
        display: none;
      }
    }
  }
  .spinner {
    flex-shrink: 0;
    margin-left: 1em;
  }

  .remember {
    display: flex;
    cursor: pointer;
    .mark {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 1.6em;
      height: 1.6em;
      border-radius: 0.2em;
      border: 1px solid var(--root-color-base-300);
      transition: .3s;
      &__svg {
        display: block;
        width: 1.2em;
        height: auto;
        color: var(--root-color-base-0);
      }
    }
    input {
      display: none;
      &:checked + .mark {
        background-color: var(--root-color-red-500);
        border-color: var(--root-color-red-500);
      }
    }
    .text {
      margin-left: 0.8em;
      color: var(--root-color-base-700);
      .t {
        font-size: 1.6em;
        line-height: 1.12;
      }
    }
  }
</style>
