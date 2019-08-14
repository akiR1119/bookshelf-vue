import Vue from 'vue'
import App from '../items.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)
})

new Vue ({
  el: "#items-form",
  data: {
    author: "",
  } 
})