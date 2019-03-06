<template>
    <a href="/">
        <div class="card bm--card-equal-height">
            <div class="card-image">
                <figure class="image is-2by1">
                    <slot name="image"></slot>
                </figure>
            </div>
            <div class="card-content">
                <div class="content">
                    <slot></slot>
                </div>
            </div>
            <footer class="card-footer">
                <slot name="links"></slot>
            </footer>
        </div>
    </a>
</template>
<script>
// import Navitem from "./Navitem.vue";
export default {
    components: {
        // Navitem
    },
    name: "card",
    data() {
        return {};
    }
};
</script>

<style scoped>
.card {
    /* height: 100%; */
}

.bm--card-equal-height {
    display: flex;
    flex-direction: column;
    height: 100%;
}
.bm--card-equal-height .card-footer {
    margin-top: auto;
}
</style>
