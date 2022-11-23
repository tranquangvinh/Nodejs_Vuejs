<template>
  <div class="grid grid-cols-12 gap-4 m-20px items-center ">
    <div class="col-span-3">
      <a-image
          :width="200"
          :src="logoPC"
          :preview="false"
      />
    </div>
    <div class="col-span-6 flex justify-center gap-x-5 group">
      <RouterLink to="/">トップ</RouterLink>
      <a class="group-hover:text-dark-500" href="https://www.shigotonavi.co.jp/tab/index1.asp" target="_blank">はじめての方</a>
      <a class="group-hover:text-dark-500" href="https://www.shigotonavi.co.jp/search/" target="_blank">しごとを探す</a>
      <a class="group-hover:text-dark-500" href="https://www.shigotonavi.co.jp/support/" target="_blank">転職・就職サポートツール</a>
      <a class="group-hover:text-dark-500" href="https://www.shigotonavi.co.jp/staff/access.asp" target="_blank">お問い合わせ</a>
    </div>
    <div class="col-span-3 flex justify-end">
        <Button content="新規会員登録" class-name="btn-main w-160px" :icon="{width: 24, height: 24, color: Colors.WHITE, iconName: 'Edit'}" />
        <Button content="ログイン" class-name="btn-primary w-160px ml-16px" :icon="{width: 24, height: 24, color: Colors.PRIMARY, iconName: 'Login'}" />

    </div>
  </div>
</template>

<script setup>
import Button from "@/components/Button/Button.vue";
import logoPC from '@/assets/img/logo-pc.png'
import Colors from '@/constants/colors-const'

defineProps({
  msg: {
    type: String,
    required: true
  }
})

const onSubmit = (data) => {
  console.log(data);
}
</script>