<template>
  <div :class="$style.container">
    <icon-stat :class="$style.icon"/>
    <div :class="$style.title">
      Start<span :class="$style.colored">The</span>History
    </div>
  </div>
</template>

<script>
  import IconStat from '~/components/icons/stat'
  export default {
    name: 'SectionHeaderTitle',
    components: {
      IconStat
    }
  }
</script>

<style module lang="scss">
  .container {
    display: flex;
    align-items: center;
    margin-left: 24px;
  }
  .title {
    font-size: 2em;
    font-weight: 700;
  }
  .colored{
    color: #FF8A62;
  }
  .icon {
    margin-right: 1em;
  }
</style>
