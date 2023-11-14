<template>
  <aside :class="$style.aside">
    <v-navigation-drawer
      v-model="drawer"
      permanent
      :class="$style.drawer"
    >
<!--      <v-list-item>-->
<!--        <v-list-item-content>-->
<!--          <v-list-item-title :class="$style.menu">-->
<!--            Menu-->
<!--          </v-list-item-title>-->
<!--        </v-list-item-content>-->
<!--      </v-list-item>-->

<!--      <v-divider />-->

      <v-list dense nav>
        <v-list-item nuxt to="/users" :class="$style.listItem">
          <v-list-item-icon><v-icon>mdi-account-group</v-icon></v-list-item-icon>
          <v-list-item-content :class="$style.users">
            <span>Пользователи</span>
          </v-list-item-content>
        </v-list-item>
        <v-list-item nuxt to="/themes" :class="$style.listItem" dense>
          <v-list-item-icon><v-icon>mdi-bag-personal</v-icon></v-list-item-icon>
          <v-list-item-content :class="$style.users">
            <span>Уроки</span>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
  </aside>
</template>

<script>
export default {
  name: 'SectionAside',
  data() {
    return {
      drawer: true
    }
  }
}
</script>

<style module lang="scss">
  .drawer {
    background-color: transparent !important;
  }
  .menu {
    font-size: 2em;
  }
  .listItem {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .users {
    margin-left: 2em;
    span {
      font-size: 1.5em;
    }
  }
</style>
