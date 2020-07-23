<template>
  <div class="header">
    <div class="header__group-name">
      <div class="header__group-name--text">チャットグループ名</div>
      <div class="header__group-name--edit">編集</div>
    </div>
    <div class="header__group-delete">
      チャットグループを削除する
    </div>
  </div>
</template>

<style lang="scss" scoped>
  .header{
    display: flex;
    justify-content: space-around;
    padding: 10px;
    border-bottom: medium solid #000000;
    &__group-name {
      display: flex;
      &--text {
        margin-right: 20px;
      }
    }
  }
</style>