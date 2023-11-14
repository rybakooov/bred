export const state = () => ({
  userProgress: [],
  total: 0,
  isFetching: false
})

export const getters = {
  getThemeById: state => (themeId) => {
    if (state.userProgress.length) {
      return state.userProgress.find(el => el.id === themeId)
    }
    return null
  },
  getCompleteById: (state, getters) => (themeId) => {
    return getters.getThemeById(themeId)?.subject_assignment_progress.is_complete || false
  },
  getPercentById: (state, getters) => (themeId) => {
    return getters.getThemeById(themeId)?.user_percentage * 100 || 0
  },
  lessonsProgress: (state, getters) => (themeId) => {
    return getters.getThemeById(themeId)?.lessons_progress || null
  },
  getLessonByIds: (state, getters) => (themeId, lessonId) => {
    if (getters.lessonsProgress(themeId).length) {
      return getters.lessonsProgress(themeId).find(el => el.id === lessonId)
    }
    return null
  },
  getLessonCompleteByIds: (state, getters) => (themeId, lessonId) => {
    return getters.getLessonByIds(themeId, lessonId)?.is_completed || false
  },
  getLessonIdByOrder: (state, getters) => (themeId, order) => {
    if (getters.lessonsProgress(themeId).length) {
      return getters.lessonsProgress(themeId).find(el => el.order === order)
    }
    return null
  },
  getLessonClosedByOrder: (state, getters) => (themeId, order) => {
    const prevLesson = getters.getLessonIdByOrder(themeId, order - 1)
    if (prevLesson) {
      return !getters.getLessonCompleteByIds(themeId, prevLesson.id)
    } else {
      return order !== 0
    }
    return false
  }
}

export const actions = {
  async getProgress({ state, dispatch, commit, getters }, id) {
    if (state.isFetching) {
      return
    }

    try {
      commit('isFetching', true)
      // eslint-disable-next-line camelcase
      const data = await this.$axios.$get(`/users/${id}/progress/`)
      commit('total', data.total_progress)
      commit('userProgress', data.subjects_progress)
    } catch (e) {} finally {
      commit('isFetching', false)
    }
    return state.users
  }
}
export const mutations = {
  isFetching (state, isFetching) {
    state.isFetching = isFetching
  },
  userProgress(state, userProgress) {
    state.userProgress = userProgress
  },
  total(state, total) {
    state.total = total
  }
}
