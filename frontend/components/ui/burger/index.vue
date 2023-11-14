<template>
  <div
    :class="[$style.burger, {[$style.active] : value}]"
    @click.prevent="toggle"
  >
    <button :class="$style.burgerButton">
      <span :class="[$style.burgerBar, $style.burgerBar1]" />
      <span :class="[$style.burgerBar, $style.burgerBar2]" />
      <span :class="[$style.burgerBar, $style.burgerBar3]" />
    </button>
  </div>
</template>

<script>
  export default {
    name: 'UiBurger',
    props: {
      value: {
        type: Boolean,
        default: false
      }
    },
    methods: {
      toggle() {
        this.value = !this.value
        this.$emit('input', this.value)
      }
    }
  }
</script>

<style lang="scss" module>
  .burger {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .burgerButton {
    position: relative;
    height: 3em;
    width: 3.2em;
    display: block;
    z-index: 60;
    border: 0;
    border-radius: 0;
    background-color: transparent;
    pointer-events: all;
    transition: transform .6s cubic-bezier(.165,.84,.44,1);
  }

  .burgerBar {
    background-color: #000;
    position: absolute;
    top: 50%;
    right: 6px;
    left: 6px;
    height: 2px;
    width: auto;
    margin-top: -1px;
    transition: transform .6s cubic-bezier(.165,.84,.44,1),opacity .3s cubic-bezier(.165,.84,.44,1),background-color .6s cubic-bezier(.165,.84,.44,1);
  }

  .burgerBar1 {
    -webkit-transform: translateY(-6px);
    transform: translateY(-6px);
  }

  .burgerBar2 {
    transform-origin: 100% 50%;
    transform: scaleX(.8);
  }

  .burgerButton:hover .burgerBar2 {
    transform: scaleX(1);
  }

  .no-touchevents .burgerBar2:hover {
    transform: scaleX(1);
  }

  .burgerBar3 {
    transform: translateY(6px);
  }

  .burger.active .burgerButton {
    transform: rotate(-180deg);
  }

  .burger.active .burgerBar1 {
    transform: rotate(45deg)
  }

  .burger.active .burgerBar2 {
    opacity: 0;
  }

  .burger.active .burgerBar3 {
    transform: rotate(-45deg)
  }
</style>
