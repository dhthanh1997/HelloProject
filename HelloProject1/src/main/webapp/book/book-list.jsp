
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/14/2022
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Sách</title>
</head>
<body>
<c:if test="${!empty(sessionScope.get('user'))}">
    <a href="Books?method=new">
        <button>Thêm</button>
    </a>
    <hr>
</c:if>
<c:if test="${!empty(listbook)}">
    <c:forEach var="book" items="${listbook}">
        <c:out value="${book.id}" /> - <c:out value="${book.ten}" /> - ${book.nhaxuatban.ten} <br>
    </c:forEach>
</c:if>

<c:if test="${empty(listbook)}">
    <h4>Ko có sách</h4>
</c:if>

</body>
</html>
