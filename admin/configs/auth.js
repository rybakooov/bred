export default {
  // redirect: false,
  redirect: {
    login: '/',
    logout: '/',
    callback: '/',
    home: '/'
  },
  watchLoggedIn: true,
  strategies: {
    local: {
      token: {
        property: 'token',
        global: true,
        required: true,
        type: 'Bearer',
        maxAge: 1000 * 60 * 60 * 24 * 7
      },
      endpoints: {
        login: { baseURL: process.env.API_BASE_PATH, url: '/auth/admin/', method: 'post' },
        logout: false,
        user: { baseURL: process.env.API_BASE_PATH, url: '/users/me/', method: 'get' }
      },
      user: {
        property: false,
        autoFetch: true
      },
      cookie: {
        prefix: 'auth.'
      }
    }
  }
}
