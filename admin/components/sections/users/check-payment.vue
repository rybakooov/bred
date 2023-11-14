<template>
  <v-card class="mt-6">
    <project-section-container-s title="Проверка платежа  добавка в базу если че">
      <v-form @submit.prevent="onSubmit">
        <v-text-field
          v-model="token"
          label="Номер заказа"
        />
        <v-text-field
          v-model="email"
          label="E-Mail, на который придет письмо, в том случае, если он действительно оплатил"
        />
        <v-text-field
          v-model="first_name"
          label="Имя пользователя, на тот случай, если он действительно оплатил"
        />
        <v-btn type="submit">Проверить</v-btn>
      </v-form>
    </project-section-container-s>
  </v-card>
</template>

<script>
  import ProjectSectionContainerS from '~/components/containers/container-s'
  import { mapActions } from 'vuex'

  export default {
    name: 'SectionUsersCheckPayment',
    components: {
      ProjectSectionContainerS
    },
    data() {
      return {
        token: '',
        email: '',
        first_name: ''
      }
    },
    methods: {
      ...mapActions('notifications', ['addNotify']),
      async onSubmit() {
        const res = await this.$axios.$post('/check_payments', {
          email: this.email,
          first_name: this.first_name,
          token: this.token
        })
        if (res.success) {
          await this.get()
          this.addNotify({
            type: 'success',
            text: 'Такой платеж есть, пользователь добавлен в базу'
          })
        } else {
          this.addNotify({
            type: 'error',
            text: 'Такого платежа нет'
          })
        }
      }
    }
  }
</script>

<style scoped>

</style>
