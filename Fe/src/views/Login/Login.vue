<template>
    <div id="login" class="p-10 hadow-gray-500 flex justify-center items-center w-full h-screen">
        <div class="relative items-center justify-center flex shadow-md w-500px h-500px">
          <img class="absolute t-0 l-0 w-full h-full opacity-40" src="../../assets/img/bg-login.jpg"  />
          <div>
             <h1 class="flex justify-center mb-10 text-50px text-orange-500 font-bold">JMK</h1>
             <div :class="{ error: v$.username.$errors.length }">
               <a-input class="w-md mb-6 h-38px" v-model:value="state.username" placeholder="email" />
               <div class="input-errors" v-for="error of v$.username.$errors" :key="error.$uid">
                 <div class="error-msg">{{ error.$message }}</div>
               </div>
             </div>
             <div :class="{ error: v$.password.$errors.length }">
               <a-input-password class="w-md mb-6 h-38px" v-model:value="state.password" placeholder="password" />
               <div class="input-errors" v-for="error of v$.password.$errors" :key="error.$uid">
                 <div class="error-msg">{{ error.$message }}</div>
               </div>
             </div>
             <a-button type="primary" class="w-full h-38px" :loading="iconLoading" @click="onSubmit">
               Login
             </a-button>
           </div>
        </div>
    </div>
</template>

<script setup>

import {computed, reactive, ref} from 'vue';
import {email, helpers, minLength, required} from "@vuelidate/validators";
import {MESSAGE} from "@/constants/message-const";
import {useVuelidate} from "@vuelidate/core";
import {useUserStore} from "@/stores/user";
import router from "@/router";
import AuthService from "@/services/auth.service";

const {setInfoUser} = useUserStore();

const iconLoading = ref(false);
const state = reactive({
  username: '',
  password: '',
})

const rules = computed(() => ({
  username: {
    required: helpers.withMessage(MESSAGE.REQUIRED, required),
    minLength: minLength(2)
  },
  password: {
    required: helpers.withMessage(MESSAGE.REQUIRED, required),
    minLength: minLength(2)
  }
}));

const v$ = useVuelidate(rules, state);

const onSubmit = async() => {
  const result = await v$.value.$validate()
  if (!result) {
    // notify user form is invalid
    return
  }
  iconLoading.value = true;

  setTimeout(() => {
    const dataUser = {id: 1, name: "vinh nek"};
    localStorage.setItem("user", JSON.stringify(dataUser));
    setInfoUser(dataUser)
    iconLoading.value = false;
    router.push("/");
  }, 1000);
}

</script>