<template>
  <div>
    <div :class="$style.accordeon" v-for="(item, i) in source" :key="i + '_item'" ref="accord">
      <accordeon-item :source="item" :icon="icon" :font-style="fontStyle"/>
    </div>
  </div>
</template>

<script>
import AccordeonItem from '~/components/common/accordeon/item'
export default {
  name: 'CommonAccordeon',
  components: {
    AccordeonItem
  },
  props: {
    source: {
      type: Array,
      required: true
    },
    icon: {
      type: String,
      default: "#FFFFFF"
    },
    fontStyle: {
      type: Object,
      default() {
        return {
          fontSize: '1.6em',
          fontWeight: 450,
          lineHeight: 1.5,
          letterSpacing: '-0.03em'
        }
      }
    }
  }
}
</script>

<style lang="scss" module>
 .accordeon {

 }
</style>
