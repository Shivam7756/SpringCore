<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %> <!-- make it false such that expression language is not ignored-->
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>User Input Form</title>
  </head>
  <body>
   <h1 class="text-center">${r1 }</h1>
   <h1 class="text-center">${r2 }</h1>
   <hr>
   <div class="container mt-6"> <!-- mt gives margin from top , and container puts the value inside a box -->
   <h3 class="text-center mt-5">Sign-up Form</h3>
    <form action="submit3" method="post"><!-- Action tells where the form data will be submitted or passed on to -->
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter email" name="email"><!-- name gives the field name  -->
  </div>
  
  <div class="form-group mt-4">
    <label for="userName">user name</label>
    <input type="text" class="form-control" id="userName" placeholder="Enter userName here" name="userName"><!-- name gives the field name  -->
  </div>
  
  <div class="form-group mt-2">
  <label for="userPassword">user password</label>
     <input type="password" class="form-control" id="userPassword" placeholder="Enter password here" name="userPassword"><!-- name gives the field name  -->
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Submit</button>
  </div>
  
</form>
   
   
   </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>