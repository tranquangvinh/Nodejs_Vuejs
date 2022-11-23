

<template>
  <main>
    <a-button type="primary" class="w-full h-38px" :loading="iconLoading" @click="onSubmit">
      LogOut
    </a-button>
  </main>
</template>
<script setup>
import {ref} from "vue";
import {useUserStore} from "@/stores/user";
import router from "@/router";

const iconLoading = ref(false);
const {setInfoUser} = useUserStore();
const onSubmit = () =>{
  iconLoading.value = true;

  setTimeout(() => {
    localStorage.removeItem("user")
    setInfoUser({})
    router.push('/login')
    iconLoading.value = false;
  }, 1000)
}
</script>

<!--<style lang="scss">-->
<!--   @import './HomeView.scss';-->
<!--</style>-->