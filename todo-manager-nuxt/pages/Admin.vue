<template>
 <div class="container mt-5">
   <h2>Admin</h2>
    <form @submit.prevent="signin()">
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