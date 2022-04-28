<%@ page import="java.util.List" %>
<%@ page import="java.util.Objects" %>

<%--
  Created by IntelliJ IDEA.
  User: 23619
  Date: 2022/4/23
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Essentials</title>
</head>
<body>
<h1>ESSENTIALS DETAIL</h1>
<%--  Get the conrresponding variable from product_categories.jsp  --%>
<%
    Object value_1 = session.getAttribute("essentials_product");
    request.setAttribute("id_essen", value_1);
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
    <c:forEach var="tempEssentials" items="${EsDetail}">

        <tr>
            <td>${tempEssentials.getProduct_ID()}</td>
            <td>${tempEssentials.getDescription()}</td>
        <td>${tempEssentials.getsName()}</td>
        <td>${tempEssentials.getsEmail()}</td>
        <td>${tempEssentials.getKeywords()}</td>
        <td>${tempEssentials.getPost_Date()}</td>
        </tr>
    </c:forEach>


</table>

</body>
</html>