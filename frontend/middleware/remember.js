export default function ({ $auth }, res, next) {
  if ($auth) {
    const rememberExpires = $auth.$storage.getCookie('remember_expires')
    if (rememberExpires) {
      $auth.options.cookie.options.expires = rememberExpires
    } else {
      $auth.options.cookie.options.expires = null
    }
  }
  next()
}
