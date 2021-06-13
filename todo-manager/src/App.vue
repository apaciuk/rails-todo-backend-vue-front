<template>
<div id="app">
<baseHeader />
 <router-view/>
</div>
</template>
<script>
import baseHeader from '@/components/baseHeader'
export default {
  name: 'App',
  components: {
    baseHeader
  }
}
</script>

<style>
#app {

}
</style>
