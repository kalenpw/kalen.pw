<template>
    <div id="app">
        <navbar></navbar>
        <banner></banner>
        <div class="section">
            <projects></projects>
        </div>
        <end></end>
    </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Card from "./components/Card.vue";
import Message from "./components/Message.vue";
import Banner from "./components/Banner.vue";
import End from "./components/End.vue";
import Projects from "./components/Projects.vue";

export default {
    components: {
        Navbar,
        Card,
        Message,
        Banner,
        End,
        Projects
    },
    name: "app",
    data() {
        return {
            switch_info:
                "A place for Nintendo Switch fans to share artwork and vote on their favorite alternate art.",
            switch_url: "http://switchart.tk",
            switch_github: "https://github.com/kalenpw/SwitchArt",

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
    }
};
</script>

<style scoped>
div {
    /* background-color: #222; */
    /* height: 100vh; */
}
</style>
