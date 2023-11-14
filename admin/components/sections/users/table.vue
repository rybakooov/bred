<template>
  <v-data-table
    class="mt-8"
    :headers="headers"
    :items="usersList"
  >
    <template v-slot:top>
      <v-toolbar
        flat
      >
        <v-toolbar-title>Users</v-toolbar-title>
        <v-divider
          class="mx-4"
          inset
          vertical
        ></v-divider>
        <v-spacer></v-spacer>
        <v-dialog
          v-model="dialog"
          max-width="500px"
        >
          <template v-slot:activator="{ on, attrs }">
            <v-btn
              color="primary"
              dark
              class="mb-2"
              v-bind="attrs"
              v-on="on"
            >
              Новый пользователь
            </v-btn>
          </template>
          <v-card>
            <v-card-title>
              <span class="text-h5">{{ formTitle }}</span>
            </v-card-title>

            <v-card-text>
              <v-text-field
                label="Имя"
                :rules="[rules.require]"
                v-model="editedItem.first_name"
              />
              <v-text-field
                label="Фамилия"
                :rules="[rules.require]"
                v-model="editedItem.last_name"
              />
              <v-text-field
                label="E-Mail"
                :rules="[rules.require, rules.emailRules]"
                v-model="editedItem.email"
              />
              <v-text-field
                label="Пароль"
                :rules="[rules.require]"
                v-model="editedItem.password"
              />
              <v-checkbox
                label="Сделать администратором"
                v-model="editedItem.is_staff"
              />
            </v-card-text>

            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn
                color="blue darken-1"
                text
                @click="close"
              >
                Отменить
              </v-btn>
              <v-btn
                color="blue darken-1"
                text
                @click="save"
              >
                Сохранить
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
        <v-dialog v-model="dialogDelete" max-width="520px">
          <v-card>
            <v-card-title class="text-h5">Вы действительно хотите удалить этого пользователя?</v-card-title>
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="blue darken-1" text @click="closeDelete">Cancel</v-btn>
              <v-btn color="blue darken-1" text @click="deleteItemConfirm">OK</v-btn>
              <v-spacer></v-spacer>
            </v-card-actions>
          </v-card>
        </v-dialog>
      </v-toolbar>
    </template>
    <template v-slot:item.actions="{ item }">
      <v-btn class="mr-2 success--text" x-small fab @click="editItem(item)">
        <v-icon>
          mdi-pencil
        </v-icon>
      </v-btn>
      <v-btn class="error--text" x-small fab @click="deleteItem(item)">
        <v-icon>
          mdi-delete
        </v-icon>
      </v-btn>
    </template>
    <template v-slot:item.is_staff="{ item }">
      <span class="success--text" v-if="item.is_staff">Да</span>
      <span class="error--text" v-else>Нет</span>
    </template>
    <template v-slot:no-data>
      <v-btn
        color="primary"
        class="my-4"
        @click="initialize"
      >
        Reset
      </v-btn>
    </template>
  </v-data-table>
</template>

<script>
import { mapActions, mapState } from 'vuex'

  export default {
    name: 'SectionUsersTable',
    data() {
      return {
        rules: {
          required: value => !!value || 'Обязятельно для заполнения',
          emailRules: v => /.+@.+\..+/.test(v) || 'Неверная форма'
        },
        valid: true,
        dialog: false,
        dialogDelete: false,
        usersList: [],
        editedIndex: -1,
        editedItem: {
          email: '',
          first_name: '',
          last_name: '',
          password: null,
          is_staff: false
        },
        defaultItem: {
          email: '',
          first_name: '',
          last_name: '',
          password: null,
          is_staff: false
        },
        headers: [
          {
            text: 'Имя',
            value: 'first_name',
            width: '14%'
          }, {
            text: 'Фамилия',
            value: 'last_name',
            width: '14%'
          }, {
            text: 'E-Mail',
            value: 'email',
            width: '24%'
          }, {
            text: 'Дата появления',
            value: 'date_joined',
            width: '16%'
          }, {
            text: 'ID',
            value: 'id'
          }, {
            text: 'Админ',
            value: 'is_staff'
          }, {
            text: 'Действия',
            value: 'actions',
            align: 'right',
            sortable: false
          }
        ]
      }
    },
    computed: {
      ...mapState('users', ['users', 'isFetching']),
      formTitle () {
        return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
      }
    },
    watch: {
      dialog (val) {
        val || this.close()
      },
      dialogDelete (val) {
        val || this.closeDelete()
      }
    },
    mounted() {
      this.initialize()
    },
    methods: {
      ...mapActions('users', ['get', 'delete', 'post', 'update']),
      async initialize () {
        const users = await this.get()
        this.usersList = [...users]
      },

      editItem (item) {
        this.editedIndex = this.usersList.indexOf(item)
        this.editedItem = Object.assign({}, item)
        this.dialog = true
      },

      deleteItem (item) {
        this.editedIndex = this.usersList.indexOf(item)
        this.editedItem = Object.assign({}, item)
        this.dialogDelete = true
      },

      async deleteItemConfirm () {
        await this.delete(this.editedItem.id)
        await this.initialize()
        this.closeDelete()
      },

      close () {
        this.dialog = false
        this.$nextTick(() => {
          this.editedItem = Object.assign({}, this.defaultItem)
          this.editedIndex = -1
        })
      },

      closeDelete () {
        this.dialogDelete = false
        this.$nextTick(() => {
          this.editedItem = Object.assign({}, this.defaultItem)
          this.editedIndex = -1
        })
      },

      async save () {
        const item = {
          email: this.editedItem.email,
          is_staff: this.editedItem.is_staff,
          first_name: this.editedItem.first_name,
          last_name: this.editedItem.last_name
        }
        if (this.editedIndex > -1) {
          // Обновляем старого
          if (this.editedItem.password !== '' && this.editedItem.password !== null) {
            item.password = this.editedItem.password
          }
          await this.update({ id: this.editedItem.id, userData: item })
        } else {
          // Сохраняем нового
          // console.log(item)
          if (this.editedItem.password !== '' && this.editedItem.password !== null) {
            // console.log(this.editedItem.password)
            item.password = this.editedItem.password
          }
          // console.log(item)
          await this.post(item)
        }
        await this.initialize()
        this.close()
      }
    }
  }
</script>

<style>
  table {
    table-layout: fixed;
  }

  td, th {
    vertical-align: middle;
  }

  tr {
    width: 100%;
  }
  tbody tr {
    cursor: pointer;
  }
</style>
