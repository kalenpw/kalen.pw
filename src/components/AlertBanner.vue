<template>
  <div v-if="showAlert" class="hero is-danger">
    <button @click="hideAlert" class="delete is-large"></button>
    <div class="hero-body">
      <p class="title">Note: Information is outdated</p>
      <p>
        I haven't updated this since graduating, but soon(tm) it will be
        updated.
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "alert-banner",
  data() {
    return {
      showAlert: true,
    };
  },
  methods: {
    hideAlert() {
      this.showAlert = false;
    },
  },
};
</script>

<style scoped>
.hero button {
  position: absolute;
  right: 0;
  margin-right: 10px;
  margin-top: 10px;
}
</style>