<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>about page</title>
</head>
<body>
     this is the about controller
     <h1>url/about</h1>
     <h2>this is for all of it</h2>
     
     <%
      String name = (String)request.getAttribute("name");//used to get data that is passed from the controller(Dynamically sending and viewing data)
     Integer id = (Integer) request.getAttribute("id"); //used to get data that is passed from the controller ,with name of the key being passed here     
     %>
     
     <h1>
       Name is <%=name%> <!-- used to show the name of string,integer or any other datatype -->    
     </h1>
     
     <h1>Id is = <%=id%></h1>
 
     
</body>
</html>