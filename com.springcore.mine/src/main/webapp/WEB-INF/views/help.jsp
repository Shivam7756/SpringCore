<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@ page import="java.time.LocalDateTime" %> <!-- Import java.time package -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>help page</title>
</head>
<body>
     <h4>this is the help controller</h4>
     <h1>url/help</h1>
     <h2>this is for all of it</h2>
     
     <%
       String name = (String)request.getAttribute("name");//used to get data that is passed from the controller(Dynamically sending and viewing data)
       Integer id = (Integer) request.getAttribute("rollId"); //used to get data that is passed from the controller ,with name of the key being passed here     
       LocalDateTime  time = (LocalDateTime)request.getAttribute("date");
     %>
      
     <h1>
       Name is <%= name%>   
     </h1> <!-- this is the expression tag for showing datatypes -->
     
     <h1>Id is = <%= id%></h1>
     <h1>time is <%=time.toString()%></h1>
 
</body>
</html>
