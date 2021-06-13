<template>
<div >
<!-- Responsive navbar-->
       <header class="text-white">
        <nav class="navbar navbar-expand-lg text-white" style="background-color: #192048">
            <div class="container">
                <a class="navbar-brand" href="#">Todo Manager</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><router-link to="/" class="btn btn-link">Home</router-link></li>
                         <li class="nav-item"><router-link to="/" class="btn btn-secondary">Sign In</router-link></li>
                        <li class="nav-item"><router-link to="/signup" class="btn btn-primary">Sign Up</router-link></li>
                   </ul>
                </div>
            </div>
        </nav>
    </header>
        <!-- Page content-->
        <div class="container">
            <div class="text-center mt-5">
                <h1>Todo Manager Front</h1>
                <p class="lead">A front end Rails API management portal with Vue JS</p>
                <p>Vue JS, Axios, Bootstrap 5, Ruby on Rails, Devise Tokenized Auth, Sqlite, Redis, PostgreSQL </p>
            </div>
        </div>
    </div>
</template>
<style scoped>
header.text-white a {
color: white;
}
</style>