<%--
  Created by IntelliJ IDEA.
  User: 23619
  Date: 2022/4/23
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Office Supplies</title>
</head>
<body>
<h1>OFFICE SUPPLIES DETAIL</h1>
<%--  Get the conrresponding variable from product_categories.jsp  --%>
<%
    Object value_6 = session.getAttribute("office_supplies_productID");
    request.setAttribute("id_office", value_6);
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
    <c:forEach var="tempOffice" items="${OsDetail}">
        <tr>
            <td>${tempOffice.getProduct_ID()}</td>
            <td>${tempOffice.getDescription()}</td>
            <td>${tempOffice.getsName()}</td>
            <td>${tempOffice.getsEmail()}</td>
            <td>${tempOffice.getKeywords()}</td>
            <td>${tempOffice.getPost_Date()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>