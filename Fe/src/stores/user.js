import { defineStore } from 'pinia'
import {computed, ref} from 'vue'

export const useUserStore = defineStore('user', () => {
    const userSession = ref({id : null, name: ""});
    
    const isLogin = computed(() => {
        return userSession.value?.id > 0;
    });

    const setInfoUser = (data) => {
        userSession.value = data;
    }

    return { 
        isLogin ,
        userSession,
        setInfoUser
    }
  })