<template>
<div id="app">
<baseHeader />
 <router-view/>
 <baseFooter />
</div>
</template>
<script>
import baseHeader from '@/components/baseHeader'
import baseFooter from '@/components/baseFooter'
export default {
  name: 'App',
  components: {
    baseHeader,
    baseFooter
  }
}
</script>

<style>
#app {

}
</style>
