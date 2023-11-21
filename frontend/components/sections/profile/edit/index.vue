<template>
  <section :class="$style.container">
    <section-profile-edit-header />
    <div :class="$style.grid">
      <section-profile-edit-form v-if="form.about" @submit="onSubmitAbout" title="О себе" :disabled="disabledAboutBtn">
        <ui-input type="email" v-model="form.about.email" label="E-mail" :class="$style.input" />
        <ui-input type="text" v-model="form.about.first_name" label="Имя" :class="$style.input" />
        <ui-input type="text" v-model="form.about.last_name" label="Фамилия" :class="$style.input" />
      </section-profile-edit-form>
      <section-profile-edit-form @submit="onSubmitPass" title="Смена пароля" :disabled="disablePassBtn">
        <ui-input type="text" password v-model="form.password.current_password" required label="Старый пароль" :class="$style.input" />
        <ui-input type="text" password v-model="form.password.new_password" required label="Новый пароль" :class="$style.input" />
        <ui-input type="text" password v-model="form.password.confirm_new_password" required label="Повторите новый пароль" :class="$style.input" />
      </section-profile-edit-form>
    </div>
    <ui-button :class="$style.logout" @click.native="logout">
      <span :class="$style.content">
        <icon-exit :class="$style.icon" />
        <span :class="$style.t">Выход</span>
      </span>
    </ui-button>
  </section>
</template>

<script>
  import SectionProfileEditHeader from '~/components/sections/profile/edit/header'
  import SectionProfileEditForm from '~/components/sections/profile/edit/form'
  import UiInput from '~/components/ui/input'
  import UiButton from '~/components/ui/button'
  import IconExit from '~/components/icons/exit'

  export default {
    name: 'SectionProfileEdit',
    components: {
      IconExit,
      UiButton,
      UiInput,
      SectionProfileEditForm,
      SectionProfileEditHeader
    },
    data() {
      return {
        disabledAbout: true,
        loading: false,
        form: {
          oldForm: null,
          about: null,
          password: {
            current_password: '',
            new_password: '',
            confirm_new_password: ''
          }
        }
      }
    },
    computed: {
      disablePassBtn() {
        return (
          (this.form.password.confirm_new_password === '') ||
          (this.form.password.new_password === '') ||
          (this.form.password.new_password !== this.form.password.confirm_new_password) ||
          (this.form.password.current_password === '') ||
          (this.form.password.current_password === this.form.password.confirm_new_password) || this.loading
        )
      },
      disabledAboutBtn() {
        return (
          (this.form.about.first_name === this.$auth.user.first_name) &&
          (this.form.about.last_name === this.$auth.user.last_name) &&
          (this.form.about.email === this.$auth.user.email)
        ) ||
        this.form.about.first_name === '' || this.form.about.last_name === '' || this.form.about.email === '' ||
        !this.emailValid || this.loading
      },
      emailValid() {
        return /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/.test(this.form.about.email)
      }
    },
    methods: {
      async onSubmitAbout() {
        this.loading = true
        try {
          const res = await this.$axios.$patch(`/users/${this.$auth.user.id}/`, this.form.about)
          this.$auth.setUser(res)
          this.$root.$emit('add-notification', {
            message: 'Данные успешно изменены',
            type: 'success'
          })
        } catch (e) {
          this.$root.$emit('add-notification', {
            message: 'Упс. Что-то пошло не так',
            type: 'error'
          })
        } finally {
          this.loading = false
        }
      },
      onSubmitPass() {
        this.loading = true
        try {
          this.$axios.$put(`/users/${this.$auth.user.id}/change-password/`, this.form.password)
          this.form.password.current_password = ''
          this.form.password.new_password = ''
          this.form.password.confirm_new_password = ''
          this.$root.$emit('add-notification', {
            message: 'Данные успешно изменены',
            type: 'success'
          })
        } catch (e) {
          this.$root.$emit('add-notification', {
            message: 'Упс. Что-то пошло не так',
            type: 'error'
          })
        } finally {
          this.loading = false
        }
      },
      logout() {
        const rememberExpires = this.$auth.$storage.getCookie('remember_expires')
        if (rememberExpires) {
          this.$auth.options.cookie.options.expires = null
        }
        this.$auth.logout()
        if (!this.$auth.loggedIn) {
          this.$router.push('/auth')
        }
      }
    },
    mounted() {
      this.$set(this.form, 'about', {
        email: this.$auth.user.email,
        first_name: this.$auth.user.first_name,
        last_name: this.$auth.user.last_name
      })
    }
  }
</script>

<style module lang="scss">
  .container {
    padding: 6.4em 28em 9.2em;
    width: 100%;
    @include down(xxl) {
      padding: 6.4em 16em 9.2em;
    }
    @include down(lg) {
      padding: 4em var(--root-layout-offset) 2.4em;
    }
    @include down(md) {
      padding: 2.4em var(--root-layout-offset) 2.4em;
    }
  }
  .grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 1.6em;
    margin-top: 3.2em;
    align-items: flex-start;
    @include down(md) {
      grid-template-columns: 1fr;
    }
  }
  .input {
    overflow: hidden;
  }
  .logout {
    margin: 2.4em auto 0;
    color: var(--root-color-blue);
    display: none;
    @include down(md) {
      display: block;
    }
    .content {
      display: flex;
      align-items: center;
    }
    .icon {
      width: 1.6em;
      height: auto;
      display: block;
      margin-right: 0.8em;
    }
    .t {
      color: var(--root-color-blue);
      font-size: 1.6em;
      line-height: 1.12;
    }
  }
</style>
