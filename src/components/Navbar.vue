<template>
    <div class="container fixed-top">
        <nav
            class="navbar navbar-expand-lg navbar-dark bg-dark mt-3 mt-lg-4"
            :class="active? 'kpw-border-radius-small' : 'kpw-border-radius-full'"
        >
            <div class="container-fluid">
                <a class="navbar-brand ms-3" href="#">Kalen Williams</a>
                <button
                    class="navbar-toggler collapsed me-2 mb-1"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll"
                    aria-controls="navbarsExampleDefault"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    @click="active = !active"
                >
                    <span class="icon-bar top-bar"></span>
                    <span class="icon-bar middle-bar"></span>
                    <span class="icon-bar bottom-bar"></span>
                </button>
                <div class="collapse navbar-collapse me-3" id="navbarScroll">
                    <!-- ml-auto still works just fine-->
                    <div class="navbar-nav ms-auto">
                        <a class="ps-3 nav-link" href="https://wiki.kalen.pw"
                            >Wiki</a
                        >
                        <a class="ps-3 nav-link" href="https://blog.kalen.pw"
                            >Blog</a
                        >
                        <a class="ps-3 nav-link" href="/resume.pdf">Resume</a>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</template>

<script>
export default {
    name: "Navbar",
    data() {
        return {
            active: false,
        };
    },
};
</script>

<style scoped>
.navbar-brand {
    font-size: 1.7rem;
}

.nav-link {
    font-size: 1.25rem;
}

/* closing  */
.kpw-border-radius-full {
    border-radius: 100px;
    transition: border-radius 2s;
}

/* opening */
.kpw-border-radius-small {
    border-radius: 15px !important;
    transition: border-radius .5s ease-out;
}
</style>