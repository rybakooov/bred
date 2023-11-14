<template>
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <circle r="12" transform="matrix(4.37114e-08 -1 -1 -4.37114e-08 12 12)" :fill="fill"/>
    <path d="M8.99928 11.7759L10.0728 10.7024L12.8189 7.95623L13.9318 9.06913L11.1857 11.8153L13.9495 14.5791L12.8761 15.6526L10.1122 12.8888L8.99928 11.7759Z" :fill="color"/>
  </svg>
</template>

<script>
export default {
  name: 'IconArrowControl',
  props: {
    fill: {
      type: String,
      default: "#F4F4F4"
    },
    color: {
      type: String,
      default: "#8E9DAF"
    }
  }
}
</script>
