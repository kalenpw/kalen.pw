<template>
    <div class="container px-4 pt-4">
        <h2 class="display-6 mt-3 mb-4">About</h2>
        <p class="lead p-0">
            I am {{ age }} years old and currently working as a fullstack developer
            for <a href="https://adamspg.com/">Adams Publishing Group</a>.
        </p>
        <p class="lead">
            This site is in the process of being rebuilt, but in the meantime you
            can find what I'm working on at
            <a href="https://github.com/kalenpw">GitHub</a>.
        </p>
        <p class="lead">
            Other hobbies include working out, snowboarding, fishing, and reading (Discworld, currently).
        </p>
        <h2 class="display-6 mt-5 mb-4">Projects</h2>
        <project-cards-list/>
    </div>
</template>

<script>
import ProjectCardsList from './ProjectCardsList.vue';
export default {
    name: "Site content",
    components: {
        ProjectCardsList,
    },
    computed: {
        age: function calculateAge() {
            let birthday = new Date(799417616000);
            var ageDifMs = Date.now() - birthday;
            var ageDate = new Date(ageDifMs); // miliseconds from epoch
            return Math.abs(ageDate.getUTCFullYear() - 1970);
        },
    },
};
</script>
