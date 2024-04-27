<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Login</title>
    <style>
        .card{
          display: flex;
          justify-content: center;
          align-items: center;
          height: 50%;
          width: 40%;
          margin-left: auto;
          margin-right: auto;
          margin-top: 18%;
          margin-bottom:20%;
          
        }
      </style>
</head>
<body>
   <form action="login" method="post">
    <div class="card" >
        <h1>Sign Up </h1>
        <div class="card-body" style="font-weight: bold;">
          <label>Email</label>
          <input type="email" name="email" placeholder="Enter your Email" >
          <br>
          <br>
          <label>Password</label>
          <input type="password" name="password" placeholder="Enter your Password">
          <br>
          <br>
          
        </div>
        <button  type="submit" class="btn btn-danger mx-5">Submit</button>
          <br>
          <a href="Register.jsp" class="card-link p-2">Create a New Account</a>
      </div>
    </form>
</body>
</html>