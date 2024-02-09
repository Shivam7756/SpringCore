<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %> <!-- make it false such that expression language is not ignored-->
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- used for traversing any arraylist,collections -->
<!DOCTYPE html>   
<html>
<head>
<meta charset="ISO-8859-1">
<title>success page</title>
</head>
<body>
<h1>Email:${m1 }</h1>
<h1>userName:${m2 }</h1>
<h1>password:${m3 }</h1>
</body>
</html>
