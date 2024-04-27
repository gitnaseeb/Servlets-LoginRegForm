<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <title>Register</title>
    <style>
        .card {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 50%;
            width: 40%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 18%;
            margin-bottom:20%

        }
    </style>
    
</head>

<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")  %>">
    <form action="Registration" method="post">
        <div class="container-fluid">
            <div class="card">
                <h1>Register</h1>
                <div class="card-body" style="font-weight: bold; text-align: center;">
                    <label>Name</label>
                    <input type="text" placeholder="Enter your Name" name="username">
                    <br><br>
                    <label>Email</label>
                    <input type="email" placeholder="Enter your Email" name="email">
                    <br><br>
                    <label >Password</label>
                    <input type="password" placeholder="Enter your Password" name="password">
                    <br><br>
                    <label>Contact</label>
                    <input type="number" placeholder="Phone Number" name="contact">
                    <br><br>
                </div>
                <button type="submit" class="btn btn-primary mx-5">Submit</button>
                <br>
                <a href="LogInjsp.jsp" class="card-link p-2">Already a Member</a>
            </div>

        </div>
    </form>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var status =document.getElementById("status").value;
	if(status=="success"{
		swal("Congrats" ,"Account Created Successfully","success");
	})
	</script>
</body>

</html>