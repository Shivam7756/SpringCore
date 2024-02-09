<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %> <!-- make it false such that expression language is not ignored-->
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- used for traversing any arraylist,collections -->
<!DOCTYPE html>   
<html>
<head>
<meta charset="ISO-8859-1">
<title>Intro page</title>
</head>
<body>
  <h1> THE INTRO NAME IS ${l2}</h1>
  <h2>${origin} , ${pincode}</h2>
  <h3>${date }</h3>
  <hr>
  
  <c:forEach var="item" items="${l3 }">
  <h1>${item }</h1>
  </c:forEach>
</body>
</html>