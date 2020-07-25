import Vue from 'vue/dist/vue.esm.js'
import Header from './components/header.vue'
import Sidebar from './components/sidebar.vue'
import Messages from './components/messages.vue'
import messageBar from './components/message-bar.vue'

var app = new Vue({
  el: '#app',
  components: {
    'sidebar': Sidebar,
    'navbar': Header,
    'messages': Messages,
    'message-bar': messageBar,
  }
});