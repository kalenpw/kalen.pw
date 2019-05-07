<template>
    <div>
        <h1 class="title">Projects</h1>
        <div class="columns is-multiline">
            <div class="column is-half-tablet is-one-quarter-desktop">
                <card>
                    <template v-slot:image>
                        <img src="../assets/switch.jpg" alt>
                    </template>
                    <p>{{ switch_info }}</p>

                    <template v-slot:links>
                        <a :href="switch_url" class="card-footer-item has-text-primary">switchart.ml</a>
                        <a :href="switch_github_ui" class="card-footer-item has-text-primary">UI</a>
                        <a :href="switch_github_api" class="card-footer-item has-text-primary">API</a>
                    </template>
                </card>
            </div>
            <div class="column is-half-tablet is-one-quarter-desktop">
                <card>
                    <template v-slot:image>
                        <img src="../assets/record.jpg" alt>
                    </template>
                    <p>{{cmus_info}}</p>
                    <template v-slot:links>
                        <a :href="cmus_url1" class="card-footer-item has-text-primary">Browser</a>
                        <a :href="cmus_url2" class="card-footer-item has-text-primary">Android</a>
                    </template>
                </card>
            </div>

            <div class="column is-half-tablet is-one-quarter-desktop">
                <card>
                    <template v-slot:image>
                        <img src="../assets/schedule.jpg" alt>
                    </template>
                    <p>{{schedukal_info}}</p>
                    <template v-slot:links>
                        <a :href="schedukal_url" class="card-footer-item has-text-primary">Demo</a>
                        <a :href="schedukal_url_github" class="card-footer-item has-text-primary">Github</a>
                    </template>
                </card>
            </div>

            <div class="column is-half-tablet is-one-quarter-desktop">
                <card>
                    <template v-slot:image>
                        <img src="../assets/monopoly.jpg" alt>
                    </template>
                    <p>{{monopoly_info}}</p>
                    <template v-slot:links>
                        <a :href="monopoly_url" class="card-footer-item has-text-primary">Github</a>
                    </template>
                </card>
            </div>
        </div>
    </div>
</template>
<script>
import Card from "./Card.vue";
export default {
    components: {
        Card
    },
    name: "projects",
    data() {
        return {
            switch_info:
                "A Vuejs frontend consuming REST API written in Laravel to allow Nintedo Switch fans to upload and vote on artwork.",
            switch_url: "https://switchart.ml",
            switch_github_ui: "https://github.com/kalenpw/switchart-ui",
            switch_github_api: "https://github.com/kalenpw/switchart-api",

            monopoly_info:
                "Peer to peer Monopoly in C# for my Advanced Software Engineering Project class.",
            monopoly_url: "https://github.com/CS4488/Pocatello-Landlords",

            cmus_info:
                "A browser based remote written in Nodejs and an Android app for CMus music player",
            cmus_url1: "https://github.com/kalenpw/CmusRemoteBrowser",
            cmus_url2: "https://github.com/kalenpw/CmusRemoteAndroid",

            schedukal_info:
                "Schedukal is a scheduling app with a front end in React and backend in Laravel.",
            schedukal_url: "https://schedukal.ml",
            schedukal_url_github: "https://github.com/kalenpw/Schedu-kal"
        };
    }
};
</script>

<style>
</style>
