<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<a href="NhaXuatBan">Danh Sach Nha Xuat Ban</a>
<form action="hello-servlet" method="get">
    <label>So A</label><input type="text" name="soa"><br/>
    <label>So B</label><input type="text" name="sob"><br/>
    <input type="submit" value="Submit">
</form>
</body>
</html>