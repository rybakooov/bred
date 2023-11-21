<template>
  <section-profile-block title="Прогресс" subtitle="Статистика">
    <div :class="$style.progress">
      <svg width="150" height="150" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="75" cy="75" r="70" stroke="#EBEBEB" stroke-width="10"/>
        <path ref="circle" :style="{ 'stroke-dasharray': dasharray, 'stroke-dashoffset': dashoffset }" d="M75 5C93.5464 5 111.335 12.3602 124.459 25.4644C137.584 38.5686 144.971 56.3456 145 74.892C145.029 93.4384 137.696 111.238 124.612 124.383C111.528 137.527 93.7624 144.942 75.216 145C56.6696 145.057 38.8586 137.752 25.6938 124.688C12.529 111.624 5.08659 93.8702 5.00075 75.324C4.91491 56.7778 12.1927 38.9555 25.236 25.7705C38.2793 12.5856 56.0219 5.11579 74.568 5.00133" stroke="#5575ff" stroke-width="10" stroke-linecap="round"/>
      </svg>
      <div :class="$style.wrap">
        <span :class="$style.t">
          {{ Math.round(total * 100) }}
        </span>
        <span :class="$style.percent">%</span>
      </div>
    </div>
  </section-profile-block>
</template>

<script>
  import SectionProfileBlock from '~/components/sections/profile/block'
  import { mapState } from 'vuex'

  export default {
    name: 'SectionProfileProgress',
    components: {
      SectionProfileBlock
    },
    data() {
      return {
        dasharray: 0,
        dashoffset: 0
      }
    },
    computed: {
      ...mapState('users', ['total'])
    },
    methods: {
      setCircleProgress() {
        const circle = this.$refs.circle
        const dasharray = circle.getTotalLength()
        const dashoffset = circle.getTotalLength() * (1 - this.total)
        this.dasharray = dasharray
        this.dashoffset = dashoffset
      }
    },
    mounted() {
      this.setCircleProgress()
    },
    watch: {
      total: {
        deep: true,
        handler() {
          this.setCircleProgress()
        }
      },
      userProgress: {
        deep: true,
        handler() {
          this.setCircleProgress()
        }
      }
    }
  }
</script>

<style module lang="scss">
  .progress {
    position: relative;
    display: flex;
    justify-content: center;
    width: 100%;
    svg {
      width: 100%;
    }
  }
  .wrap {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
  }
  .t {
    font-weight: bold;
    font-size: 4em;
    line-height: 1;
    font-family: var(--root-font-family-header);
  }
  .percent {
    position: absolute;
    left: calc(100% + 0.2rem);
    font-weight: bold;
    top: 0.4rem;
    font-family: var(--root-font-family-header);
    color: var(--root-color-base-500);
    font-size: 1.6em;
    @include down(md) {
      font-size: 1.4em;
      left: 100%;
    }
  }
</style>
