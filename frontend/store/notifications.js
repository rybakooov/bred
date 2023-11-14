export const state = () => ({
  list: []
})
export const getters = {}
export const actions = {
  addNotify({ commit }, notify) {
    commit('addNotify', notify)
    setTimeout(() => {
      commit('removeNotify')
    }, 2000)
  }
}
export const mutations = {
  addNotify(state, notify) {
    state.list.push({
      ...notify,
      status: true
    })
  },
  removeNotify(state) {
    state.list.splice(0, 1)
  }
}
