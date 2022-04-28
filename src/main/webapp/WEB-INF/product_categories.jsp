<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 23619
  Date: 2022/4/22
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Product Categories</title>
</head>
<body>
    <h3>Product Categories</h3>

    <%--
        Category List serial number
        List1 = essntials
        List2 = furniture
        List3 = housing
        List4 = kitchen_supplies
        List5 = misc
        List6 = office_supplies
--%>

   <%-- <c:forEach items="${Product_Categories}" varStatus="i">
        <a href="category_list${i.index + 1}.jsp">${i.index + 1}. ${Product_Categories[i.index]}</a>
        <br/>
    </c:forEach>--%>
    <c:forEach items="${Product_Categories}" varStatus="i">
        <a href="DetailServlet?id=${i.index+1}">${i.index + 1}. ${Product_Categories[i.index]}</a>
        <br/>
    </c:forEach>


    <%
        List<String> Essentials_ProductID = (List<String>) request.getSession().getAttribute("Essentials_ProductID");
        session.setAttribute("essentials_product", Essentials_ProductID);
        List<String> Furniture_ProductID = (List<String>) request.getSession().getAttribute("Furniture_ProductID");
        session.setAttribute("furniture_productID", Furniture_ProductID);
        List<String> Housing_ProductID = (List<String>) request.getSession().getAttribute("Housing_ProductID");
        session.setAttribute("housing_productID", Housing_ProductID);
        List<String> Kitchen_supplies_ProductID = (List<String>) request.getSession().getAttribute("Kitchen_supplies_ProductID");
        session.setAttribute("kitchen_supplies_productID", Kitchen_supplies_ProductID);
        List<String> Misc_ProductID = (List<String>) request.getSession().getAttribute("Misc_ProductID");
        session.setAttribute("misc_productID", Misc_ProductID);
        List<String> Office_supplies_ProductID = (List<String>) request.getSession().getAttribute("Office_supplies_ProductID");
        session.setAttribute("office_supplies_productID", Office_supplies_ProductID);
    %>


   <%-- <h3>Essentials</h3>
    <c:forEach var="tempEssentials" items="${Essentials_ProductID}" varStatus="st">
        <h4>${st.index + 1}. ${tempEssentials}</h4>
        <br/>
    </c:forEach>--%>

    <%--    <h3>Furniture</h3>--%>
<%--    <c:forEach var="tempFurniture" items="${Furniture_ProductID}" varStatus="st">--%>
<%--        <h4>${st.index + 1}. ${tempFurniture}</h4>--%>
<%--        <br/>--%>
<%--    </c:forEach>--%>

<%--    <h3>Housing</h3>--%>
<%--    <c:forEach var="tempHousing" items="${Housing_ProductID}" varStatus="st">--%>
<%--        <h4>${st.index + 1}. ${tempHousing}</h4>--%>
<%--        <br/>--%>
<%--    </c:forEach>--%>

<%--    <h3>Kitchen_Supplies</h3>--%>
<%--    <c:forEach var="tempKitchen_Supplies" items="${Kitchen_supplies_ProductID}" varStatus="st">--%>
<%--        <h4>${st.index + 1}. ${tempKitchen_Supplies}</h4>--%>
<%--        <br/>--%>
<%--    </c:forEach>--%>

<%--    <h3>MISC</h3>--%>
<%--    <c:forEach var="tempMISC" items="${Misc_ProductID}" varStatus="st">--%>
<%--        <h4>${st.index + 1}. ${tempMISC}</h4>--%>
<%--        <br/>--%>
<%--    </c:forEach>--%>

<%--    <h3>Office_Supplies</h3>--%>
<%--    <c:forEach var="tempOffice_Supplies" items="${Office_supplies_ProductID}" varStatus="st">--%>
<%--        <h4>${st.index + 1}. ${tempOffice_Supplies}</h4>--%>
<%--        <br/>--%>
<%--    </c:forEach>--%>
</body>
</html>
