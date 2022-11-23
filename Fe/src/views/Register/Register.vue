<template>
  <div>
    <form >

        <div :class="{ error: v$.emailUser.$errors.length }">
            <a-input v-model:value="state.emailUser" placeholder="email" />
            <div class="input-errors" v-for="error of v$.emailUser.$errors" :key="error.$uid">
                <div class="error-msg">{{ error.$message }}</div>
            </div>
        </div>

        <div :class="{ error: v$.username.$errors.length }">
            <a-input v-model:value="state.username" placeholder="username" />
            <div class="input-errors" v-for="error of v$.username.$errors" :key="error.$uid">
                <div class="error-msg">{{ error.$message }}</div>
            </div>
        </div>

        <div :class="{ error: v$.password.$errors.length }">
            <a-input-password v-model:value="state.password" placeholder="input password" />
            <div class="input-errors" v-for="error of v$.password.$errors" :key="error.$uid">
                <div class="error-msg">{{ error.$message }}</div>
            </div>
        </div>

      <button type="button" variant="primary" @click="onSubmit">Submit</button>
      <button type="reset" variant="danger" @click="onReset">Reset</button>
    </form>
  </div>
</template>

<script setup>
    import { useVuelidate } from '@vuelidate/core'
    import { required, email, minLength, helpers } from '@vuelidate/validators'
    import { ref, computed, reactive, toRefs } from 'vue'
    import { MESSAGE } from '../../constants/message-const';

    const state = reactive({
      username: '',
      password: '',
      emailUser: ''
    })

    const rules = computed(() => ({
      emailUser:{
        email,
        required: helpers.withMessage(MESSAGE.REQUIRED, required),
      },
      username: {
        required: helpers.withMessage(MESSAGE.REQUIRED, required),
        minLength: minLength(2)
      },
      password: {
        required: helpers.withMessage(MESSAGE.REQUIRED, required),
        minLength: minLength(2)
      }
    }));

    const v$ = useVuelidate(rules, {username, password, emailUser});

    const onSubmit = async() => {
        const result = await v$.value.$validate()
        if (!result) {
            // notify user form is invalid
            return
        }
    }

    const onReset = () => {
        v$.value.$reset();
    }
</script>
