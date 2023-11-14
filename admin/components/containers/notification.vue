<template>
  <div>
    <v-snackbar
      v-for="(notify, index) in notifications"
      v-model="notify.status"
      :key="index + '_notify'"
      :timeout="-1"
      fixed
      top
      :color="notify.type"
      right
      :style="`margin-top: ${notifications.indexOf(notify) * 4}em`"
    >
      {{ notify.text }}
    </v-snackbar>
  </div>
</template>

<script>
  import { mapState } from 'vuex'

  export default {
    name: 'ContainersNotification',
    computed: {
      ...mapState('notifications', {
        notifications: 'list'
      })
    }
  }
</script>

<style module lang="scss">

</style>
