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
                        <li class="nav-item mx-2"><router-link to="/" class="btn btn-info">Home</router-link></li>
                         <li class="nav-item mx-2"><router-link to="/signin" class="btn btn-success">Sign In</router-link></li>
                        <li class="nav-item mx-2"><router-link to="/signup" class="btn btn-primary">Sign Up</router-link></li>
                         <li class="nav-item mx-2"><router-link to="/admin" class="btn btn-secondary">Admin</router-link></li>
                   </ul>
                </div>
            </div>
        </nav>
    </header>
      
    </div>
</template>
<style scoped>
header.text-white a {
color: white;
}
</style>