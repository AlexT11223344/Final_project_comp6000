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
    <title>Kitchen Supplies</title>
</head>
<body>
<h1>KITCHEN SUPPLIES DETAIL</h1>
<%--  Get the conrresponding variable from product_categories.jsp  --%>
<%
    Object value_4 = session.getAttribute("kitchen_supplies_productID");
    request.setAttribute("id_kitch", value_4);
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
    <c:forEach var="tempKitchen" items="${KsDetail}">
        <tr>
            <td>${tempKitchen.getProduct_ID()}</td>
            <td>${tempKitchen.getDescription()}</td>
            <td>${tempKitchen.getsName()}</td>
            <td>${tempKitchen.getsEmail()}</td>
            <td>${tempKitchen.getKeywords()}</td>
            <td>${tempKitchen.getPost_Date()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>