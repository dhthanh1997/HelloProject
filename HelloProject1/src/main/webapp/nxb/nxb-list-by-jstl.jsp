<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 11/11/2022
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sach nha xuat ban</title>
</head>
<body>
<c:if test="${!empty(sessionScope.get('user'))}">
    <a href="nxb-form.jsp"><button>Them</button></a>
    <hr>
</c:if>
<c:if test="${!empty(listnxb)}">
    <c:forEach var = "nxb" items="${listnxb}">
        <c:out value = "${nxb.id}"/> - <c:out value="${nxb.ten}"></c:out><br/>
    </c:forEach>
</c:if>

<c:if test="${empty(listnxb)}">
    <h4>Khong co nha xuat ban</h4>
</c:if>
</body>
</html>
