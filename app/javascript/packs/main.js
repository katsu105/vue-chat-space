import Vue from 'vue/dist/vue.esm.js'
import Router from './router/router'
import Header from './components/header.vue'
import Sidebar from './components/sidebar.vue'
import Messages from './components/messages.vue'
import messageBar from './components/message-bar.vue'
import groupCreate from './components/group-create'

var app = new Vue({
  router: Router,
  el: '#app',
  components: {
    'sidebar': Sidebar,
    'navbar': Header,
    'messages': Messages,
    'message-bar': messageBar,
    'group-create': groupCreate
  }
});