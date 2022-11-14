<%@ page import="com.fpt.edu.model.User" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 11/2/2022
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% User user =  ((User)session.getAttribute("user")); %>
<h1>
    <% if(null!= user) {%>
    Login Success By <%= user.getUsername() %>
    <% //session.removeAttribute("user"); %>
    <% } else{ %>
    Ban khong co quyen truy cap den trang nay
    <%}%>
</h1>
</body>
</html>
