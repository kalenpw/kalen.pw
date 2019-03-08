<template>
    <div id="app">
        <navbar></navbar>
        <router-view/>

        <footer>
            <end></end>
        </footer>
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

<style>
html{
  /* min-height: 100%; */

}
footer {
    /* position: fixed; */
    /* bottom: 0; */
    /* width: 100%; */
    /* overflow: hidden; */
}
</style>
