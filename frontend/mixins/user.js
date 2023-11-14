export default function () {
  return {
    computed: {
      user() {
        return this.$auth.user
      },
      initialies() {
        if (this.$auth.user.first_name) {
          if (this.$auth.user.last_name) {
            return this.$auth.user.first_name?.split('')[0] + this.$auth.user.last_name?.split('')[0]
          } else {
            return this.$auth.user.first_name?.split('')[0]
          }
        } else {
          return this.$auth.user.email?.[0]
        }
      },
      name() {
        return this.$auth.user.first_name || this.$auth.user.email.split('@')[0]
      },
      fullName() {
        let str = ''
        if (this.$auth.user.first_name) {
          str += this.$auth.user.first_name
        }
        if (this.$auth.user.last_name) {
          str += (' ' + this.$auth.user.last_name)
        }
        return str
      }
    }
  }
}
