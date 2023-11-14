<template>
  <v-card class="mt-6">
    <project-section-container-s title="Повторная отправка юзеру письма">
      <v-form @submit.prevent="onSubmit">
        <v-text-field
          v-model="email"
          label="E-Mail"
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
  name: 'SectionUsersEmail',
  components: {
    ProjectSectionContainerS
  },
  data() {
    return {
      email: ''
    }
  },
  methods: {
    ...mapActions('notifications', ['addNotify']),
    async onSubmit() {
      const res = await this.$axios.$put('/admin/regenerate-passwords/', [{
        email: this.email
      }])
      console.log(res)
      this.addNotify({
        type: 'success',
        text: res.msg
      })
    }
  }
}
</script>

<style scoped>

</style>
