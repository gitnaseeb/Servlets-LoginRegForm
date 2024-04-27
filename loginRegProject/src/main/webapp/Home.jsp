<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>
<body>
 <%
      response.setHeader("Cache-Control", "no-cache, no-store ,must-revalidate");
    if(session.getAttribute("name")==null){
    	response.sendRedirect("LogInjsp.jsp");
    }
    %> 
    <nav class=" navbar navbar-expand-lg  bg-body-tertiary" style="background-color: #e3f2fd;" >
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Nax Developer</a>
          <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button> -->
          <div class="collapse navbar-collapse justify-content-end" style="font-size: large ; font-weight: bold;" id="navbarNav">
            <ul class="navbar-nav" >
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
              </li>
              <li class="nav-item" style="border-radius: 10px ; background-color: red;">
                <a class="nav-link" href="LogInjsp.jsp">Logout</a>
              </li>
              <li class="nav-item" >
                <a class="nav-link" href="logout"><%= session.getAttribute("name") %></a>
              </li>
            </ul>
          </div>
        </div>
</nav>
<div class="container-fluid centered">
    <div class="text-center mt-5">
      <h1>Welcome</h1>
    </div>
</div>



</body>
</html>