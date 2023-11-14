export default {
  baseURL: process.env.API_BASE_PATH,
  proxyHeaders: false,
  credentials: false,
  headers: {
    common: {
      'Content-Type': 'application/json; charset=UTF-8;'
    }
  }
}
