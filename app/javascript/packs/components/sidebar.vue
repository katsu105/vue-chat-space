<template>
  <div class="sidebar">
    <div class="sidebar__plus">+</div>

    <div class="sidebar__group">
      <div class="sidebar__group--name">
        チャットグループ名
      </div>
      <div class="sidebar__group--length">
        (2)
      </div>
    </div>

    <div class="sidebar__group">
      <div class="sidebar__group--name">
        チャットグループ名
      </div>
      <div class="sidebar__group--length">
        (2)
      </div>
    </div>

    <div class="sidebar__group">
      <div class="sidebar__group--name">
        チャットグループ名
      </div>
      <div class="sidebar__group--length">
        (2)
      </div>
    </div>

  </div>
</template>

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