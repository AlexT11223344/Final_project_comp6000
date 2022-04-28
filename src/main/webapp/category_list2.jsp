<%--
  Created by IntelliJ IDEA.
  User: 23619
  Date: 2022/4/23
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Furniture</title>
</head>
<body>
<h1>FURNITURE DETAIL</h1>
<%--  Get the conrresponding variable from product_categories.jsp  --%>
<%
    Object value_2 = session.getAttribute("furniture_productID");
    request.setAttribute("id_furni", value_2);
%>
<h2 align="center"><font><strong>PRODUCT DETAIL</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
    <tr  bgcolor="#6495ed">
        <th>Product ID</th>
        <th>Description</th>
        <th>Name</th>
        <th>Email</th>
        <th>Keywords</th>
        <th>Post Date</th>
    </tr>
    <c:forEach var="tempFurniture" items="${FsDetail}">

        <tr>
            <td>${tempFurniture.getProduct_ID()}</td>
            <td>${tempFurniture.getDescription()}</td>
            <td>${tempFurniture.getsName()}</td>
            <td>${tempFurniture.getsEmail()}</td>
            <td>${tempFurniture.getKeywords()}</td>
            <td>${tempFurniture.getPost_Date()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>