<template>
  <div>
    <nuxt />
    <containers-notification />
  </div>
</template>
<script>
  import ContainersNotification from '~/components/containers/notification'

  export default {
    components: {
      ContainersNotification
    }
  }
</script>
