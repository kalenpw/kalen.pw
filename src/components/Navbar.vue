<template>
    <div class="container fixed-top">
        <nav
            class="navbar navbar-expand-lg navbar-dark bg-dark mt-3 mt-lg-4"
            :class="
                active ? 'kpw-border-radius-small' : 'kpw-border-radius-full'
            "
        >
            <div class="container-fluid">
                <a class="navbar-brand ms-3" href="/">Kalen Williams</a>
                <button
                    id="navbar-dropdown-button"
                    class="navbar-toggler collapsed me-1 mb-1"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll"
                    aria-controls="navbarsExampleDefault"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    @click="toggleDropdown"
                >
                    <span class="icon-bar top-bar"></span>
                    <span class="icon-bar middle-bar"></span>
                    <span class="icon-bar bottom-bar"></span>
                </button>
                <div class="collapse navbar-collapse me-3" id="navbarScroll">
                    <!-- ml-auto still works just fine-->
                    <div class="navbar-nav ms-auto">
                        <a class="ms-3 nav-link" href="https://wiki.kalen.pw">
                            wiki
                        </a>
                        <a class="ms-3 nav-link" href="https://blog.kalen.pw">
                            blog
                        </a>
                        <a class="ms-3 nav-link" href="/resume.pdf">resume</a>
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
    methods: {
        toggleDropdown() {
            this.active =
                document
                    .getElementById("navbar-dropdown-button")
                    .getAttribute("aria-expanded") == "true";
        },
    },
};
</script>

<style scoped>
.navbar-brand {
    font-size: 1.25rem;
    font-weight: 300;
    font-family: "Montserrat", sans-serif;
}

@media only screen and (min-width: 1000px) {
    .navbar-brand {
        font-size: 1.5rem;
    }
}

.nav-link {
    font-size: 1.25rem;
    font-weight: 300;
}

/* closing  */
.kpw-border-radius-full {
    border-radius: 100px;
    transition: border-radius 2s;
}

/* opening */
.kpw-border-radius-small {
    border-radius: 15px !important;
    transition: border-radius 0.5s ease-out;
}
</style>