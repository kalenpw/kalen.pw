<template>
    <div class="row">
        <div
            v-for="project in projects"
            :key="project.name"
            class="col col-md-3 col-lg-3 col-xl-4 pb-3"
        >
            <div class="card h-100">
                <img
                    :src="'/img/' + project.image"
                    class="card-img-top"
                    :alt="project.name"
                />
                <div class="card-body">
                    <h3 class="card-title">{{ project.name }}</h3>
                    <p class="card-text">
                        {{ project.description }}
                    </p>
                </div>
                <div class="card-footer bg-white d-flex">
                    <a v-for="link in project.links" :key="link.title" :href="link.url">
                        {{link.title}}
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import projects from "../data/projects.js";
export default {
    name: "ProjectCardsList",
    mounted() {
        this.projects = projects;
    },
    data() {
        return {
            projects: [],
        };
    },
};
</script>

<style scoped>
/* .btn {
    background-color: #00d1b2;
    color: white;
}
.btn:hover {
    background-color: #00b899;
} */
.card-footer a {
    align-items: center;
    display: flex;
    flex-basis: 0;
    flex-grow: 1;
    flex-shrink: 0;
    justify-content: center;
    padding: 0.75rem;
    text-decoration: none;
    font-size: 1.15rem;
}
.card-footer a:not(:last-child) {
    border-right: 1px solid #ededed;
}
.card img {
    border-bottom: 1px solid rgba(0,0,0,.125);
}
</style>