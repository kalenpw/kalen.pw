<template>
    <div class="home">
        <Banner></Banner>
        <div class="section">
            <Projects></Projects>
        </div>
    </div>
</template>

<script>
// @ is an alias to /src
import Banner from "@/components/Banner.vue";
import Projects from "@/components/Projects.vue";

export default {
    name: "home",
    components: {
        Banner,
        Projects
    }
};
</script>
