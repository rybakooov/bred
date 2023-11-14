export default function ({ $api, $time }, inject) {
  let $resolve = null
  const instance = {
    synced: null,
    syncedStatus: false
  }
  
  setInterval(function timeChecker() {
    const oldTime = timeChecker.oldTime || Date.now()
    const newTime = Date.now()
    const timeDiff = newTime - oldTime
    
    timeChecker.oldTime = newTime
    
    if (Math.abs(timeDiff) >= 5000) {
      sync()
    }
  }, 100)
  
  async function sync () {
    try {
      instance.synced = new Promise(resolve => ($resolve = resolve))
      instance.syncedStatus = false
      const { data } = await $api.get('/settings')
      $time.setServerTime(data.time * 1000)
    } catch (e) {
      $time.setServerTime(Date.now())
    } finally {
      instance.syncedStatus = true
      $resolve()
    }
  }
  
  sync()
  // { sync, status }
  inject('timeSync', instance)
}
