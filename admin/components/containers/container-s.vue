<template>
  <v-col>
    <v-card-title v-if="title" class="text-h6 font-weight-medium">{{ title }}</v-card-title>
    <v-card-subtitle v-if="subtitle">{{ subtitle }}</v-card-subtitle>
    <slot />
  </v-col>
</template>

<script>
  export default {
    name: 'ProjectSectionContainerS',
    props: {
      title: {
        type: String,
        default: ''
      },
      subtitle: {
        type: String,
        default: ''
      }
    }
  }
</script>

<style module lang="scss">

</style>
