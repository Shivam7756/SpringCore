<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page isELIgnored="false" %>

<%@ page import="java.time.LocalDateTime" %> <!-- Import java.time package -->
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>server down</title>
</head>
<body>
     <h4>this is the down controller</h4>
     <h1>url/help</h1>
     <h2>this is for all of it</h2>
     
     <%
       List<String> l1 = (List)request.getAttribute("l");//used to get data that is passed from the controller(Dynamically sending and viewing data)          
     %>
      
     <h1>
        down pages are <%=l1%>   
     </h1> <!-- this is the expression tag for showing datatypes -->
     
 
</body>
</html>