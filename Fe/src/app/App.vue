<template>
  <div id="app">
    <Header v-if="userStore.isLogin" />
    <Sidebar v-if="userStore.isLogin"/>
    <div>
      <router-view />
    </div>
  </div>
</template>

<script setup>
import { useUserStore } from '@/stores/user'
import Sidebar from "@/components/Sidebar/Sidebar.vue";
import Header from "@/components/Header/Header.vue";

const userStore = useUserStore();

</script>
