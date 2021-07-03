<template>
    <div class="row g-md-5">
        <div v-for="project in projects" :key="project.name" class="col col-12 col-md-6 pb-3">
            <div class="card h-100 border-1">
                <div class="card-header bg-dark text-light">
                    <h2 class="card-title my-1">{{project.name}}</h2>
                </div>
                <img
                    :src="'/img/' + project.image"
                    class="card-img-top"
                    :alt="project.name"
                />
                <div class="card-body d-flex align-items-center justify-content-between flex-column">
                    <p class="card-text lead">
                        {{project.description}}
                    </p>
                    <div class="text-center">
                        <span v-for="tag in project.tags" :key="tag" class="badge rounded-pill my-1 mx-2">{{tag}}</span>
                    </div>
                </div>
                <div class="card-footer bg-white d-flex">
                    <a
                        v-for="link in project.links"
                        :key="link.title"
                        :href="link.url"
                    >
                        {{ link.title }}
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
    border-bottom: 1px solid rgba(0, 0, 0, 0.125);
    border-radius: 0px;
}

.rounded-pill {
    background-color:  #00d1b2;
    font-size: 1rem;
}
</style>