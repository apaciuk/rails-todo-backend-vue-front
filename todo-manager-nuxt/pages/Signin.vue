<template>
 <div class="container mt-5">
   <h2>Sign In</h2>
  <form v-on:submit.prevent="signin">
  <div class="form-group">
    <div class="alert alert-danger" v-if="error">{{ error}}</div>
    <label for="InputEmail1">Email address</label>
    <input type="email" v-model="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Please Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" v-model="password" class="form-control" id="password" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-success mt-3">Sign In</button>
  <div class="mt-3">
  <router-link to="/signup" class="btn btn-primary">Sign Up</router-link>
  </div>
</form>
</div>
</template>
<script>
export default {
    name: 'Signin',
    data () {
        return {
            email: '',
            password: '',
            error: ''
        }
    },
    created () {
        this.checkedSignedIn
    },
    updated () {
        this.checkedSignedIn
    },
    methods: {
        //  Check submit
        signin () {
        console.log({ email: this.email, password: this.password });
        alert('Processing!');
        }
       //signin () {
           // this.$http.plain.post( '/api/v1/sign_in/', { email: this.email, password: this.password } )
           // .then(response => this.signinSuccessful(response))
           // .catch(error => this.signinFail)
        },
        signinSuccessful(response) {
          if (!response.data.csrf) {
            this.signinFailed(response)
            return
          }
          localStorage.csrf = response.data.csrf
          localStorage.signedIn = true
          this.error = ''
          this.$router.replace('/api/v1/todos')
        },
        signinFailed(error) {
          this.error = (error.response && error.response.data && error.response.data.error) || ''
          delete localStorage.csrf
          delete localStorage.signedIn
        },
        checkedSignedIn () {
          if ( localStorage.signedIn ) {
            this.$router.replace('/api/v1/todos')
          }
        }
    }

</script>