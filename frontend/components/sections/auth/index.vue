<template>
  <section :class="$style.container">
    <form :class="$style.form" @submit.prevent="onSubmit">
      <h1 :class="$style.title">
        <span :class="$style.t">
          {{ forget ? 'Восстановление пароля' : 'Вход' }}
        </span>
      </h1>
      <div :class="$style.inputs">
        <ui-input :class="$style.input" label="E-Mail" v-model="email" />
        <ui-input :class="$style.input" label="Пароль" password v-model="password" v-if="!forget" />
      </div>
      <div :class="$style.row">
        <label :class="$style.remember" v-if="!forget">
          <input type="checkbox" v-model="remember" />
          <span :class="$style.mark">
            <icon-mark :class="$style.mark__svg" />
          </span>
          <p :class="$style.text">
            <span :class="$style.t">
              Запомнить меня
            </span>
          </p>
        </label>
        <ui-button tag="span" :class="$style.forget" @click="forget = !forget">
          <span :class="$style.t">{{ forget ? 'Я помню пароль' : 'Не помню пароль' }}</span>
        </ui-button>
      </div>
      <ui-button :disabled="loading" type="submit" theme="red" size="md" :class="$style.submit">{{ forget ? 'Восстановить пароль' : 'Войти' }}</ui-button>
    </form>
    <img :src="require('~/assets/images/auth_bg.svg')" alt="Векторное изображение с человечком:)" :class="$style.img" />
  </section>
<!--  <section v-else :class="$style.cont">-->
<!--    <h1 :class="$style.timerTitle">-->
<!--      <span :class="$style.t">Ведутся технические работы</span>-->
<!--    </h1>-->
<!--&lt;!&ndash;    <ui-date :class="$style.timer" :value="endDate" update :timeout="1000">&ndash;&gt;-->
<!--&lt;!&ndash;      <slot slot-scope="{ time }">&ndash;&gt;-->
<!--&lt;!&ndash;        <span :class="$style.t"><span v-if="time.future.days.value" :class="$style.day">{{ time.future.days.value }}:</span>{{ time.future.hours.string }}:{{ time.future.minutes.string }}:{{ time.future.seconds.string }}</span>&ndash;&gt;-->
<!--&lt;!&ndash;      </slot>&ndash;&gt;-->
<!--&lt;!&ndash;    </ui-date>&ndash;&gt;-->
<!--&lt;!&ndash;    <p :class="$style.timerText">&ndash;&gt;-->
<!--&lt;!&ndash;      <span :class="$style.t">Не уходите далеко:)</span>&ndash;&gt;-->
<!--&lt;!&ndash;    </p>&ndash;&gt;-->
<!--  </section>-->
</template>

<script>
  import UiInput from '~/components/ui/input'
  import IconMark from '~/components/icons/mark'
  import UiButton from '~/components/ui/button'
  // import UiDate from '~/components/ui/date'

  export default {
    name: 'SectionAuth',
    components: {
      // UiDate,
      UiButton,
      IconMark,
      UiInput
    },
    data() {
      return {
        loading: false,
        isSecret: false,
        isDev: process.env.NODE_ENV === 'development',
        email: '',
        password: '',
        remember: false,
        forget: false,
        endDate: new Date('2021-12-14T20:00:00+0000').getTime()
      }
    },
    methods: {
      redirectOnProfile() {
        if (this.$auth.loggedIn) {
          this.$router.push('/profile')
        }
      },
      async onSubmit() {
        if (this.forget) {
          await this.resetPass()
        } else {
          await this.logIn()
        }
      },
      async logIn() {
        this.loading = true
        try {
          await this.$auth.loginWith('local', {
            data: {
              email: String(this.email).toLowerCase(),
              password: this.password
            }
          })
          if (this.remember) {
            this.$auth.$storage.setCookie('remember_expires', 7, { expires: 7 })
          } else {
            this.$auth.$storage.removeCookie('remember_expires')
          }
          this.redirectOnProfile()
        } catch (e) {
          // console.log(e)
          this.$root.$emit('add-notification', {
            message: 'Упс. Что-то пошло не так',
            type: 'error'
          })
        } finally {
          this.loading = false
        }
      },
      async resetPass() {
        this.loading = true
        try {
          await this.$axios.$post('/users/forgot/', { email: this.email })
          this.$root.$emit('add-notification', {
            message: 'Письмо с новым паролем отправлено вам на почту',
            type: 'success'
          })
          this.forget = false
        } catch (e) {
          // console.log(e)
          this.$root.$emit('add-notification', {
            message: 'Упс. Что-то пошло не так',
            type: 'error'
          })
        } finally {
          this.loading = false
        }
      }
    },
    mounted() {
      this.redirectOnProfile()
      this.isSecret = this.$route.query.secret === '000'
    }
  }
</script>

<style module lang="scss">
  .container {
    padding: 0 var(--root-layout-offset);
    display: flex;
    flex: 1;
    align-items: center;
    justify-content: center;
  }

  .form {
    padding: 3.2em;
    background-color: var(--root-color-base-0);
    border-radius: 1.2em;
    border: 1px solid var(--root-color-base-200);
    width: 43.2em;
    @include down(lg) {
      width: 53.6em;
    }
    @include down(md) {
      width: 100%;
      padding: 2.4em 1.6em;
    }
  }

  .title {
    font-weight: 500;
    display: block;
    padding-bottom: 2.4em;
    border-bottom: 1px solid var(--root-color-base-200);
    font-family: var(--root-font-family-header);
    margin-bottom: 2.4em;
    .t {
      font-size: 2.4em;
      line-height: 1.08;
    }
  }

  .img {
    margin-left: 19.5em;
    height: auto;
    display: block;
    @include down(xxl) {
      margin-left: 4.8em;
      width: 38vw;
    }
    @include down(lg) {
      display: none;
    }
  }

  .input {
    overflow: hidden;
    &:not(:last-child) {
      margin-bottom: 1.2em;
    }
  }

  .row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: 2.4em;
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
        background-color: var(--root-color-blue-500);
        border-color: var(--root-color-blue-500);
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
  .forget {
    color: var(--root-color-base-400);
    .t {
      font-size: 1.6em;
      line-height: 1.12;
    }
  }

  .submit {
    margin-top: 2.4em;
    width: 16.8em;
    @include down(md) {
      width: 100%;
    }
  }

  .cont {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100%;
  }

  .timerTitle {
    font-family: var(--root-font-family-header);
    font-weight: 500;
    display: block;
    .t {
      font-size: 3.2em;
      @include down(md) {
        font-size: 2.4em;
      }
    }
  }

  .timer {
    font-family: var(--root-font-family-header);
    font-weight: 500;
    display: block;
    margin: 1.6em 0;
    .t {
      font-size: 8.6em;
      @include down(md) {
        font-size: 4.8em;
      }
    }
  }

  .timerText {
    display: block;
    .t {
      font-size: 2.4em;
      @include down(md) {
        font-size: 1.6em;
      }
    }
  }
</style>
