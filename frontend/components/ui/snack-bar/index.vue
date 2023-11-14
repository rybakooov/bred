<template>
  <div :class="$style.notificationsList">
    <transition-group :name="$style.listComplete" tag="div" :class="$style.wrap">
      <snack-item
        v-for="{id, message, type, autoClose} in notifications"
        :id="id"
        :key="id"
        :message="message"
        :type="type"
        :auto-close="autoClose"
        @remove="removeNotification"
      />
    </transition-group>
  </div>
</template>

<script>
  import SnackItem from '~/components/ui/snack-bar/snack'

  export default {
    name: 'UiSnackBar',
    data() {
      return {
        notifications: []
      }
    },
    components: {
      SnackItem
    },
    methods: {
      addNotification(message, type = 'success', autoClose = true) {
        const id = Date.now()
        this.notifications.push({ message, type, id, autoClose })
      },
      removeNotification(idToRemove) {
        this.notifications = this.notifications.filter(({ id }) => id !== idToRemove)
      },
      clearNotifications() {
        this.notifications = []
      }
    },
    mounted() {
      this.$root.$on('add-notification', ({ message, type, autoClose }) => {
        this.addNotification(message, type, autoClose)
      })
      this.$root.$on('clear-notifications', () => {
        this.clearNotifications()
      })
    }
  }
</script>

<style lang="scss" module>
  .notificationsList{
    position: fixed;
    z-index: 100;
    text-align: center;
    width: auto;
    bottom: 0;
    right: 0;
    margin-right: 1.5em;
    pointer-events: none;
    @include down(md) {
      top: 1em;
      margin: 0;
      left: 0;
      width: 100%;
      padding: 0 5vw;
    }
  }

  .wrap {
    position: relative;
    @include up(md) {
      min-width: 40em;
    }
  }

  .listComplete {
    &:global(-leave-active) {
      position: absolute;
      width: 100%;
    }
    &:global(-leave-active) {
      opacity: 0;
      transform: translateY(3em);
      @include down(md){
        transform: translateY(-3em);
      }
    }
    &:global(-enter) {
      opacity: 0;
      transform: translateY(3em);
      @include down(md) {
        transform: translateY(-3em);
      }
    }
    &:global(-leave-to) {
      opacity: 0;
      transform: translateY(3em);
      @include down(md) {
        transform: translateY(-3em);
      }
    }
  }

</style>
