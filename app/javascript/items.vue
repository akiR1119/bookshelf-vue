<template>
  <div id="message">
    <p>{{ message }}</p>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Items!!!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
  color: red;
}
</style>
