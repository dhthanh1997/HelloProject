<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 11/11/2022
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Them sach</title>
</head>
<body>
<center>

<form method="post" action="Books">
  <input type="hidden" name="method" value="add">
  <label>Ten</label><input type="text" name="ten"><br>
  <label>Tac Gia</label><input type="text" name="tacgia"><br>
  <label>The Loai</label><input type="text" name="theloai_id"><br>
  <label>Nha Xuat Ban</label>
  <select name="nxb_id">
      <c:forEach var="nxb" items="${listnxb}">
          <option value="${nxb.id}">${nxb.ten}</option>
      </c:forEach>
  </select>
  <br>
  <label>giaban</label><input type="text" name="giaban"><br>
  <hr>
  <input type="submit" value="submit">
</form>
</center>
</body>
</html>
