export const state = () => ({})

export const actions = {
  async uploadImage ({ commit }, { file, key }) {
    const formData = new FormData()
    formData.append('file', file, key)
    const res = await this.$axios.$post(`/files/images/`, formData)
    return res
  },
  async uploadVideo ({ commit }, { file, key }) {
    if (typeof file === 'string') {
      const formData = new FormData()
      formData.append('url', file)
      const res = await this.$axios.$post(`/files/videos/`, formData)
      return res.uuid
    } else {
      const formData = new FormData()
      formData.append('file', file, key)
      const res = await this.$axios.$post(`/files/videos/`, formData)
      return res
    }
  },
  async uploadDocument ({ commit }, { file, key }) {
    const formData = new FormData()
    formData.append('file', file, key)
    const res = await this.$axios.$post(`/files/documents/`, formData)
    return res
  },
  async deleteImage ({ commit }, uuid) {
    const res = await this.$axios.$delete(`/files/images/${uuid}`)
    return res
  },
  async deleteVideo ({ commit }, uuid) {
    const res = await this.$axios.$delete(`/files/videos/${uuid}`)
    return res
  },
  async deleteDocument ({ commit }, uuid) {
    const res = await this.$axios.$delete(`/files/documents/${uuid}`)
    return res
  }
}
export const mutations = {
  isFetching (state, isFetching) {
    state.isFetching = isFetching
  }
}
