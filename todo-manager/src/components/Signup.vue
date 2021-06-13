
<template>
 <div class="container mt-5">
    <h2>Sign Up</h2>
    <form v-on:submit.prevent="signin">
  <div class="form-group">
    <div class="alert alert-danger" v-if="error">{{ error}}</div>
    <label for="email">Email address</label>
    <input type="email" v-model="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Please Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" v-model="password" class="form-control" id="password" placeholder="Password">
  </div>
    <div class="form-group">
    <label for="password-confirmation">Password Confirmation</label>
    <input type="password" v-model="password_confirmation" class="form-control" id="password-confirmation" placeholder="Password Confirmation">
  </div>
  <button type="submit" class="btn btn-primary mt-3">Sign Up</button>
  <div class="mt-3">
  <router-link to="/signin" class="btn btn-success">Sign In</router-link>
  </div>
</form>
</div>
</template>
<script>
export default {
    name: 'Signup',
    data () {
        return {
            email: '',
            password: '',
            password_confirmation: '',
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
        signin () {
        console.log({ email: this.email, password: this.password, password_confirmation: this.password_confirmation });
        alert('Processing!');
        }
        //signin () {
            //this.$http.plain.post( '/api/v1/sign_up/', { email: this.email, password: this.password, password_confirmation: this.password_confirmation} )
            //.then(response => this.signinSuccessful(response))
            //.catch(error => this.signinFail)
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
          this.error = (error.response && error.response.data && error.response.data.error) || 'Something went wrong'
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