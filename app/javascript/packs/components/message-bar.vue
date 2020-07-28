<template>
  <div class="message-bar">
    <div>
      <input class="message-bar__input" v-model="newMessage" placeholder="メッセージを入力してください">
    </div>
    <div class="message-bar__btn" v-on:click="createMessage">送信</div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data: function () {
    return {
      messages: [],
      newMessage: ''
    }
  },

  methods: {
    createMessage: function() {
      var group_id = location.pathname.substr( 8 );
      axios.post(`/api/groups/${group_id}/messages`, { message: {message: this.newMessage } }).then((response) => {
      this.messages.push(response.data.messages);
      this.newMessage = '';
      }, (error) => {
        console.log(error);
      });
    }
  }
}
</script>

<style lang="scss" scoped>
  .message-bar{
    display: flex;
    position: absolute;
    bottom: 0;
    &__input {
      height: 50px;
      width: 100vh;
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