export default {
  base: process.env.BASE_PATH,
  trailingSlash: false,
  middleware: ['auth']
  // scrollBehavior: (to, from, savedPosition) => {}
}
