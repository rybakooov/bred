<template>
  <v-container>
    <h1 class="text-h3 font-weight-medium">
      Пользователи
    </h1>
    <section-users-table />
    <v-row>
      <v-col>
        <section-users-check-payment />
      </v-col>
      <v-col>
        <section-users-email />
        <v-btn @click="lowerEmails" class="primary mt-4">lowerEmails</v-btn>
        <v-btn @click="deleteCopies" class="primary mt-4">delete Copies</v-btn>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
  import SectionUsersTable from '~/components/sections/users/table'
  import SectionUsersCheckPayment from '~/components/sections/users/check-payment'
  import SectionUsersEmail from '~/components/sections/users/email'
  import { mapActions } from 'vuex'

  export default {
    name: 'SectionUsers',
    components: {
      SectionUsersEmail,
      SectionUsersCheckPayment,
      SectionUsersTable
    },
    methods: {
      ...mapActions('notifications', ['addNotify']),
      async lowerEmails() {
        try {
          const res = await this.$axios.$post('/users/lower-emails/')
          console.log(res)
          this.addNotify({
            type: 'success',
            text: 'Все отправилось'
          })
        } catch (e) {
          console.log(e)
          console.log(e.message)
          this.addNotify({
            type: 'error',
            text: 'Отрыгнуло: ' + e.message
          })
        }
      },
      async deleteCopies() {
        try {
          const res = await this.$axios.$delete('/users/delete-duplicates/')
          console.log(res)
          this.addNotify({
            type: 'success',
            text: 'Лишних ебнули'
          })
        } catch (e) {
          console.log(e)
          console.log(e.message)
          this.addNotify({
            type: 'error',
            text: 'Отрыгнуло: ' + e.message
          })
        }
      }
    }
  }

</script>

<style lang="scss">
</style>
