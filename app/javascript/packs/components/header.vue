<template>
  <div class="header">
    <div class="header__group-name">
      <div class="header__group-name--text">{{ group_name }}</div>
      <div class="header__group-name--edit">編集</div>
    </div>
    <div class="header__group-delete" v-on:click="deleteGroup">
      チャットグループを削除する
    </div>
  </div>
</template>

<script>
  import axios from 'axios'
  export default {
  data: function () {
    return {
      group_name: ''
    }
  },
  mounted: function() {
    this.fetchGroupName();
  },

  methods: {
    fetchGroupName: function() {
      var group_id = location.pathname.substr( 8 )
      axios.get('/api/groups/search_group_name',{ params: {group_id: group_id}}).then((response) => (this.group_name = response.data.group_name)
      );
    },
    deleteGroup: function() {
      var group_id = location.pathname.substr( 8 )
      axios.delete(`/api/groups/${group_id}`).then((response) => {
        console.log('削除完了')
      }, (error) => {
        console.log(error);
      });
    }
  }
}
</script>

<style lang="scss" scoped>
  .header{
    display: flex;
    justify-content: space-around;
    padding: 10px;
    border-bottom: solid 1px #000000;
    width: 100vw;
    &__group-name {
      display: flex;
      &--text {
        margin-right: 20px;
      }
    }
  }
</style>