<template>
    <div class="inner-app">
        <Navbar />
        <Hero />
        <div class="site">
        </div>
        <Footer />
    </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Hero from "./components/Hero.vue";
import Footer from "./components/Footer.vue";

export default {
    name: "App",
    components: {
        Navbar,
        Hero,
        Footer,
    },
};
</script>

<style scoped>
.inner-app {
    display: flex;
    min-height: 100vh;
    flex-direction: column;
}
.site {
    flex: 1;
}
/* * {
    border: 1px solid red !important;
} */
</style>