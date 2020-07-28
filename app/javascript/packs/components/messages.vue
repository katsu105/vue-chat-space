<template>
<div class="main">
  <div class="main__messages" v-for="message in messages" v-bind:id="'row_message_' + message.id" v-bind:key="message.id">
    <div class="main__messages--message">
      {{ message.message }}
    </div>
  </div>
</div>
</template>

<script>
  import axios from 'axios'
  export default {
    data: function() {
      return {
        messages: []
      }
    },
    mounted: function() {
      this.fetchMessages();
    },

    methods: {
      fetchMessages: function() {
        var group_id = location.pathname.substr( 8 );
        axios.get(`/api/groups/${group_id}/messages`).then((response) => {
          for(var i = 0; i < response.data.messages.length; i++) {
            this.messages.push(response.data.messages[i]);
          }
        })
      }
    }
  }
</script>

<style lang='scss' scoped>
  .main {
    &__messages {
      padding: 20px;
      &--message {
        margin-bottom: 20px;
      }
    }
  }
</style>