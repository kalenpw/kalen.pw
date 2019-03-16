<template>
    <div>
        <h1 class="title">Projects</h1>
        <div class="columns is-multiline">
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
            <div class="column is-half-tablet is-one-quarter-desktop">
                <card>
                    <template v-slot:image>
                        <img src="../assets/switch.jpg" alt>
                    </template>
                    <p>{{ switch_info }}</p>

                    <template v-slot:links>
                        <a :href="switch_url" class="card-footer-item has-text-primary">SwitchArt.ml</a>
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
                        <img src="../assets/denny-bu-1325486-unsplash.jpg" alt>
                    </template>
                    <p>{{homelab_info}}</p>
                    <template v-slot:links>
                        <a :href="homelab_url" class="card-footer-item has-text-primary">Github</a>
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
                "A place for Nintendo Switch fans to share artwork and vote on their favorite alternate art.",
            switch_url: "http://switchart.ml",
            switch_github_ui: "https://github.com/kalenpw/switchart-ui",
            switch_github_api: "https://github.com/kalenpw/switchart-api",

            monopoly_info:
                "Peer to peer Monopoly in C# for my Advanced Software Engineering Project class.",
            monopoly_url: "https://github.com/CS4488/Pocatello-Landlords",

            cmus_info:
                "A browser based remote written in Nodejs and an Android app for CMus music player",
            cmus_url1: "https://github.com/kalenpw/CmusRemoteBrowser",
            cmus_url2: "https://github.com/kalenpw/CmusRemoteAndroid",

            homelab_info:
                "Homelab Server Dell PowerEdge r710 I setup and maintain. Several Nginx Vhosts, Emby Media Server, SSHFS,",
            homelab_url: "/"
        };
        return {};
    }
};
</script>

<style>
</style>
