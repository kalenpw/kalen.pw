<template>
    <nav class="navbar is-dark" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item is-size-4" href="/">Kalen Williams</a>
            
            <a
                role="button"
                class="navbar-burger burger"
                aria-label="menu"
                aria-expanded="false"
                data-target="navbarBasicExample"
                v-bind:class="[active ? activeClass : '']"
                @click="toggleNav()"
            >
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>
        <div class="navbar-menu" v-bind:class="[active ? activeClass : '']">
            <div class="navbar-start">
                <!-- <a class="navbar-item">Documentation</a> -->
                <!-- <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">More</a>

                    <div class="navbar-dropdown">
                        <a class="navbar-item">About</a>
                        <a class="navbar-item">Jobs</a>
                        <a class="navbar-item">Contact</a>
                        <hr class="navbar-divider">
                        <a class="navbar-item">Report an issue</a>
                    </div>
                </div>-->
            </div>

            <div class="navbar-end">
                <a @click="closeNav" class="navbar-item" href="/resume.pdf">Resume</a>
            </div>
        </div>
    </nav>
</template>

<script>
// import Navitem from "./Navitem.vue";
export default {
    name: "Navbar",
    props: {
        msg: String
    },
    data() {
        return {
            active: false,
            activeClass: "is-active"
        };
    },
    methods: {
        toggleNav() {
            this.active = !this.active;
        },
        closeNav() {
            this.active = false;
        }
    }
};
</script>

<style lang="scss">
</style>
