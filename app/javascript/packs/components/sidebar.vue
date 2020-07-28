<template>
  <div class="sidebar">
    <div class="sidebar__plus">
      <a href="/groups/new">+</a>
    </div>

    <div class="sidebar__group" v-for="group in groups" v-bind:id="'row_group_' + group.id" v-bind:key="group.id">
      <div class="sidebar__group--name">
        <a v-bind:href="'/groups/' + group.id">{{ group.name }}</a>
      </div>
    </div>
  </div>
</template>


<script>
import axios from 'axios'
export default {
  data: function () {
    return {
      groups: []
    }
  },
  mounted: function() {
    this.fetchGroups();
  },

  methods: {
    fetchGroups: function() {
      axios.get('/api/groups').then((response) => {
        for(var i = 0; i < response.data.groups.length; i++) {
          this.groups.push(response.data.groups[i]);
        }
      }, (error) => {
        console.log(error);
      });
    }
  }
}
</script>

<style lang="scss" scoped>
  .sidebar {
    display: flex;
    flex-direction: column;
    width: 200px;
    height: 100vh;
    background-color: #d3d3d3;

    &__plus {
      margin-bottom: 20px;
      height:50px;
      width:50px;
      border-radius:50%;
      line-height:50px;
      text-align:center;
      background: #f08080;
      font-size: 20px;
    }
    &__group {
      display: flex;
      flex-direction: row;
      margin-bottom: 30px;
    }
  }
</style>