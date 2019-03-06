<template>
    <article class="message">
        <div class="message-header">
            <slot name="header"></slot>
        </div>
        <div class="message-body">
            <slot></slot>
        </div>
    </article>
</template>
<script>
export default {
    name: "message",
    data() {
        return {};
    }
};
</script>

<style>
</style>
