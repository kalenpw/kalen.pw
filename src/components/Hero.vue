<template>
    <div class="kpw-hero container-fluid text-light mt-0 pt-5">
        <div class="container pt-4 pb-4 pb-lg-5 d-flex align-items-center">
            <img class="rounded-circle mt-5 me-5 d-none d-md-block" src="/img/avi.jpg" alt="Kalen headshot">
            <div>
                <h2 class="display-4 pt-4 pt-lg-5">Software Developer</h2>
                <p class="h5">B.S. Computer Science</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "Hero",
};
</script>

<style scoped>
.kpw-hero {
    /* background: linear-gradient(45deg, #00d1b2, #06e6c4); */
    background-color: #00d1b2;
}
@media only screen and (max-width: 1000px) {
    .h5 {
        font-size: 1.1rem;
    }
}
img {
    max-height: 200px;
}
</style>