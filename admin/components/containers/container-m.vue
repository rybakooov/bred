<template>
  <v-container>
    <h2 v-if="title" class="text-h5 font-weight-medium">{{ title }}</h2>
    <slot />
  </v-container>
</template>

<script>
  export default {
    name: 'ProjectSectionContainerM',
    props: {
      title: {
        type: String,
        default: ''
      }
    }
  }
</script>

<style module lang="scss">

</style>
