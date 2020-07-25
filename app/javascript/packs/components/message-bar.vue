<template>
  <div class="message-bar">
    <div>
      <input class="message-bar__input" placeholder="メッセージを入力してください">
    </div>
    <div class="message-bar__btn">送信</div>
  </div>
</template>

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