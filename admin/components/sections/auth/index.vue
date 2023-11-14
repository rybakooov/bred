<template>
  <v-container :class="$style.container">
    <v-card min-width="360">
      <v-card-title>
        Админка
      </v-card-title>
      <v-card-text>
        <v-form
          @submit.prevent="onsubmit"
          ref="form"
          v-model="valid"
          lazy-validation
        >
          <v-text-field
            label="E-Mail"
            v-model="email"
            :rules="[rules.required, rules.emailRules]"
          />
          <v-text-field
            label="Password"
            v-model="password"
            :rules="[rules.required]"
          />
          <v-btn class="mt-4" type="submit">Войти</v-btn>
        </v-form>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script>
  import { mapActions } from 'vuex'

  export default {
    name: 'SectionAuth',
    data() {
      return {
        valid: true,
        email: '',
        password: '',
        rules: {
          required: value => !!value || 'Обязятельно для заполнения',
          emailRules: v => /.+@.+\..+/.test(v) || 'Неверная форма'
        }
      }
    },
    methods: {
      ...mapActions('notifications', ['addNotify']),
      redirect() {
        if (this.$auth.loggedIn && this.$auth.user.is_staff) {
          this.$router.push('/users')
        }
      },
      validate () {
        this.$refs.form.validate()
      },
      async onsubmit() {
        this.validate()
        if (this.valid) {
          try {
            await this.$auth.loginWith('local', {
              data: {
                email: this.email,
                password: this.password
              }
            })
            this.redirect()
          } catch (e) {
            this.addNotify({
              type: 'error',
              text: e.message
            })
          }
        }
      }
    }
  }
</script>

<style module lang="scss">
  .container {
    display: flex;
    align-items: center;
    justify-content: center;
    height: vh(100);
  }
</style>
