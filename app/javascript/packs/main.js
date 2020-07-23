import Vue from 'vue/dist/vue.esm.js'
import Header from './components/header.vue'
import Sidebar from './components/sidebar.vue'

var app = new Vue({
  el: '#app',
  components: {
    'navbar': Header,
    'sidebar': Sidebar
  }
});