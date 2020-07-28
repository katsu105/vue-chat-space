import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import groupCreate from '../components/group-create'
import Messages from '../components/messages'

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/groups/new', component: groupCreate },
    { path: '/groups/:id', component: Messages}
  ],
})
