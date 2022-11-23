<template>
  <a-button :class="'btn ' + className" :type="btnType" :size="size" @click="onClick">
    <span class="!flex items-center">
      <component class="inline-block" v-if="props.icon" :is="Icons" :width="icon.width" :height="icon.height" :color="icon.color"></component>
      <span :class="icon && content ? 'ml-8px' : 'ml-0px'">{{content}}</span>
    </span>
  </a-button>
</template>
<script setup>
import {defineEmits, defineAsyncComponent, ref} from 'vue'
// import IconProps from '@/models/Icon.js'

const emit= defineEmits(["onClick"])

const props = defineProps({
  content: {
    type: String,
    required: true
  },
  btnType: {
    type: String,
  },
  className: {
    type: String
  },
  icon: {
    type: Object
  }
})

let Icons = ref();

if(props.icon){
  Icons = defineAsyncComponent(() => import(`../../assets/icons/${props.icon.iconName}.vue`));
}

const onClick = () => {
  emit("onClick", {});
}

</script>