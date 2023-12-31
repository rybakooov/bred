<template>
  <time v-if="time" :datetime="time.datetime">
    <slot name="before" :time="time" />
    <span v-if="format">{{ formatted }}</span>
    <slot :time="time" />
    <slot name="after" :time="time" />
  </time>
</template>

<script>
export default {
  name: 'UiDate',
  props: {
    value: {
      type: [String, Number],
      default: ''
    },
    sendChangeTimeout: {
      type: Boolean,
      default: false
    },
    /**
     * Formats:
     * future-time - 00:10:26
     */
    format: {
      type: String,
      default: '',
      validate: v => ['past', 'date', 'time', 'future', 'future-time'].includes(v)
    },
    update: {
      type: Boolean,
      default: false
    },
    timeout: {
      type: Number,
      default: 60000
    },
    toMs: {
      type: Boolean,
      default: false
    }
  },
  data () {
    return {
      interval: null,
      time: null,
      formatted: ''
    }
  },
  computed: {
    timestamp () {
      if (this.toMs) {
        return this.value * 1000
      } else {
        return this.value
      }
    }
  },
  methods: {
    async calc () {
      await this.$timeSync.synced

      this.time.update()
      this.formatted = this.getFormatted()
      if (this.sendChangeTimeout) {
        const { days, hours, minutes, seconds, left } = this.time.future
        this.$emit('change', {
          days, hours, minutes, seconds, left
        })
      }
      this.checkFuture()
      if (this.update) {
        this.interval = setTimeout(this.calc, this.timeout)
      }
    },
    checkFuture () {
      if (this.time.future.left === 0) {
        this.$emit('timeout')
        clearInterval(this.interval)
      }
    },
    formatPast () {
      if (this.time.past.days.value > 30) {
        return this.formatDate()
      } else if (this.time.past.days.value) {
        return `${this.time.past.days.value} ${this.time.t.relative.days.left} ${this.time.t.ago}`
      } else if (this.time.past.hours.value) {
        const value = this.time.past.hours.value > 1 ? this.time.past.hours.value + ' ' : ''
        return `${value}${this.time.t.relative.hours.left} ${this.time.t.ago}`
      } else if (this.time.past.minutes.value) {
        const value = this.time.past.minutes.value > 1 ? this.time.past.minutes.value + ' ' : ''
        return `${value}${this.time.t.relative.minutes.left} ${this.time.t.ago}`
      } else {
        return `${this.time.past.seconds.value} ${this.time.t.relative.seconds.left} ${this.time.t.ago}`
      }
    },
    formatDate () {
      return `${this.time.date.day.string} ${this.time.t.month} ${this.time.date.year.string}`
    },
    formatTime () {
      return `${this.time.date.hours.string}:${this.time.date.minutes.string}`
    },
    formatFuture () {
      if (this.time.future.days.value) {
        return `${this.time.future.days.value} ${this.time.t.relative.days.left} ${this.formatFutureTime()}`
      } else {
        return this.formatFutureTime()
      }
    },
    formatFutureTime () {
      const res = `${this.time.future.hours.string}:${this.time.future.minutes.string}:${this.time.future.seconds.string}`
      return (this.time.future.days.value > 0 ? `${this.time.future.days.string}:` : '') + res
    },
    getFormatted () {
      if (this.format === 'past') {
        return this.formatPast()
      } else if (this.format === 'date') {
        return this.formatDate()
      } else if (this.format === 'time') {
        return this.formatTime()
      } else if (this.format === 'future') {
        return this.formatFuture()
      } else if (this.format === 'future-time') {
        return this.formatFutureTime()
      } else {
        return 'there is no such format'
      }
    }
  },
  mounted () {
    this.time = this.$time(this.timestamp)
    this.calc()
  },
  watch: {
    value () {
      this.time = this.$time(this.timestamp)
      this.calc()
    }
  },
  beforeDestroy () {
    clearInterval(this.interval)
  }
}
</script>
