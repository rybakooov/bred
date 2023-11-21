<template>
  <label :class="classes">
    <div :class="$style.label" v-if="label">
      <span :class="$style.text">{{ label }}</span>
    </div>
    <slot name="before"></slot>
    <span :class="$style.value">
      <textarea v-if="multiline" :placeholder="placeholder" :value="value" ref="input" :class="$style.textarea" :rows="1" @keyup.enter="onKeyEnter" @input="onInput" @focus="onFocus" @blur="onBlur"></textarea>
      <input v-bind="$attrs" :type="passState" v-else :value="value" :placeholder="placeholder" ref="input" @keyup.enter="onSubmit" :class="$style.input" @input="onInput" @focus="onFocus" @blur="onBlur">
    </span>
    <div :class="$style.passwordEye" v-if="password" @click="passState === 'text' ? passState = 'password' : passState = 'text'">
      <icon-opened-eye :class="$style.opened" v-if="passState === 'text'" />
      <icon-closed-eye v-else />
    </div>
  </label>
</template>

<script>
  import autosize from 'autosize'
  import IconOpenedEye from '~/components/icons/opened-eye'
  import IconClosedEye from '~/components/icons/closed-eye'

  export default {
    name: 'UiInput',
    components: {
      IconClosedEye,
      IconOpenedEye
    },
    props: {
      placeholder: {
        type: String,
        default: ''
      },
      label: {
        type: String,
        default: ''
      },
      value: {
        type: String,
        default: ''
      },
      multiline: {
        type: Boolean,
        default: false
      },
      rows: {
        type: Number,
        default: 1
      },
      errors: {
        type: Array,
        default: () => []
      },
      password: {
        type: Boolean,
        default: false
      }
    },
    data () {
      return {
        type: 'field',
        focused: false,
        touched: false,
        passState: 'text'
      }
    },
    computed: {
      classes () {
        return [
          this.$style.field,
          { [this.$style.filled]: !!this.value },
          { [this.$style.focused]: this.focused },
          { [this.$style.touched]: this.touched },
          { [this.$style.errored]: this.errors && this.errors.length && this.touched }
        ]
      }
    },
    methods: {
      checkAutosize () {
        if (this.multiline) {
          autosize(this.$refs.input)
        } else {
          autosize.destroy(this.$refs.input)
        }
      },
      onKeyEnter (event) {
        if (event.ctrlKey) {
          this.onSubmit()
        }
      },
      onInput (event) {
        this.$emit('input', event.target.value)
      },
      onFocus () {
        this.focused = true
      },
      onBlur () {
        this.focused = false
        this.touch()
      },
      touch () {
        this.touched = true
      },
      clear () {
        this.touched = false
        this.$emit('input', '')
      },
      onSubmit () {
        this.touch()
        this.$emit('submit', '')
      },
      focus () {
        this.$nextTick(() => {
          this.$refs.input.focus()
        })
      }
    },
    mounted () {
      if (this.password) {
        this.passState = 'password'
      }
      this.checkAutosize()
    },
    beforeDestroy () {
      if (this.multiline) {
        autosize.destroy(this.$refs.input)
      }
    },
    watch: {
      multiline () {
        this.checkAutosize()
      }
    }
  }
</script>

<style lang="scss" module>
  .field {
    position: relative;
    padding: 1.2em 2em;
    background-color: var(--root-color-base-100);
    border: 1px solid var(--root-color-base-200);
    border-radius: 0.8em;
    display: flex;
    flex-direction: column;
    height: 5.8em;
    cursor: text;
    transition: .3s;
    justify-content: center;
    &.errored {
      border-color: var(--root-color-blue);
    }
  }
  .input,
  .textarea {

    background: none;
    border: 0 none;
    outline: none;
    width: 100%;
    @include down (xl) {
      line-height: 1.67;
    }
  }
  .input {}
  .textarea {
    resize: none;
    padding: 0;
    margin: 0;
  }
  .label {
    pointer-events: none;
    transform-origin: 0 0;
    transition: transform 0.3s ease, opacity 0.3s ease;
    margin-bottom: 0.2em;
    color: var(--root-color-base-400);
    transform: scale(1.3333333) translateY(0.6em);
    @include down(md) {
      transform: scale(1.3333333) translateY(1em);
    }
    .text {
      font-size: 1.2em;
      line-height: 1.17;
    }
  }
  .value {
    display: block;
    font-size: 1.6em;
    line-height: 1.12;
  }
  .focused .label,
  .filled .label {
    transform: none;
  }
  //.errorContainer {
  //  //position: absolute;
  //  width: 100%;
  //  overflow: hidden;
  //  top: 100%;
  //  left: 0;
  //}
  //.error {
  //  color: var(--root-color-error);
  //  text-align: left;
  //  .text {
  //    font-size: 1.6em;
  //    text-transform: uppercase;
  //  }
  //}

  .passwordEye {
    color: var(--root-color-base-400);
    position: absolute;
    right: 0;
    top: 0;
    padding: 0 2em;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
    cursor: pointer;
    .opened {
      color: var(--)
    }
  }
</style>
