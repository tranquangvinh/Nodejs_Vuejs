import { createApp } from 'vue'
import { createPinia } from 'pinia'
import Antd from 'ant-design-vue';
import 'ant-design-vue/dist/antd.css';
import 'virtual:windi.css'
import './assets/main.css'
import router from './router'
import App from './app/App.vue'


const app = createApp(App)
app.use(Antd);
app.use(createPinia())
app.use(router)
app.mount('#app')
