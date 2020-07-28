<template>
  <div class="group-create">グループ作成画面
    <div>
      <input class="group-create__input" v-model="newGroup" placeholder="グループ名を入力してください">
    </div>
    <div class="group-create__btn" v-on:click="createGroup">送信</div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data: function () {
    return {
      groups: [],
      newGroup: ''
    }
  },

  methods: {
    createGroup: function() {
      axios.post('/api/groups', { group: {name: this.newGroup } }).then((response) => {
      this.groups.unshift(response.data.group);
      this.newGroup = '';
      }, (error) => {
        console.log(error);
      });
    }
  }
}
</script>

<style lang="scss" scoped>
  .group-create{
    height: 50px;
    display: flex;
    bottom: 0;
    &__input {
      height: 50px;
      width: 500px;
      margin-right: 50px;
    }
    &__btn {
      display: inline-block;
      padding: 0.3em 1em;
      text-decoration: none;
      color: #67c5ff;
      border: solid 2px #67c5ff;
      border-radius: 3px;
      transition: .4s;
      &:hover {
        background: #67c5ff;
        color: white;
      }
    }
  }
</style>
