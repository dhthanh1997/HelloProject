<%@ page import="com.fpt.edu.model.NhaXuatBan" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 11/4/2022
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  List<NhaXuatBan> list = (List<NhaXuatBan>) request.getAttribute("listnxb");
%>
<form action="NhaXuatBan" method="post">
  <input type="hidden" name="method" value="add">
  <label>Ten</label><input type="text" name="ten"><br>
  <label>Dia Chi</label><input type="text" name="diachi"><br>
  <label>So Dien Thoai</label><input type="text" name="sdt"><br>
  <label>So Fax</label><input type="text" name="sofax"><br>
<%--  <select name="nxb_id">--%>
<%--    <% for(NhaXuatBan n: list){ %>--%>
<%--      <option value="<%= n.getId()%>"><%= n.getTen()%></option>--%>
<%--    <% } %>--%>
<%--  </select>--%>
  <input type="submit" value="Submit">
</form>
</body>
</html>
