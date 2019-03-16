<template>
    <div id="app">
        <navbar></navbar>
        <div class="site">
            <router-view/>
        </div>
        <end></end>
    </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import End from "@/components/End.vue";
export default {
    name: "app",
    components: {
        Navbar,
        End
    }
};
</script>

<style scoped>
#app {
    display: flex;
    min-height: 100vh;
    flex-direction: column;
}
.site {
    flex: 1;
}
</style>
