<template>
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <circle cx="12" cy="12" r="12" :fill="fill"/>
    <path d="M12.7869 16.6957V12.7062H16.6956V11.1881H12.7869V7.30444H11.213V11.1881H7.30432V12.7062H11.213V16.6957H12.7869Z" :fill="color"/>
  </svg>
</template>

<script>
export default {
  name: 'IconPlus',
  props: {
    fill: {
      type: String,
      default: "#FFFFFF"
    },
    color: {
      type: String,
      default: "#000000"
    }
  }
}
</script>
