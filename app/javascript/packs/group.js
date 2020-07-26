import Vue from 'vue/dist/vue.esm.js'
import Router from './router/router'
import groupCreate from './components/group-create'

var app = new Vue({
  router: Router,
  el: '#group',
  components: {
    'group-create': groupCreate
  }
});