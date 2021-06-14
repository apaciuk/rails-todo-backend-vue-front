import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/Home'
import Signin from '@/components/Signin'
import Signup from '@/components/Signup'
import Admin from '@/components/Admin'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/signin',
      name: 'Signin',
      component: Signin
    },
    {
      path: '/signup',
      name: 'Signup',
      component: Signup
    },
    {
      path: '/admin',
      name: 'Admin',
      component: Admin
    }
  ]
})
