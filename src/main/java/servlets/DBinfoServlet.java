package servlets;

import services.MySQLdb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "DBinfoServlet", value = "/DBinfoServlet")
public class DBinfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MySQLdb mySQLdb = MySQLdb.getInstance();
        // 1. essentials

        try {
            List<String> essentials_ProdID = mySQLdb.fetchEssentials();
            request.getSession().setAttribute("Essentials_ProductID", essentials_ProdID);

            List<String> furniture_ProdID = mySQLdb.fetchFurniture();
            request.getSession().setAttribute("Furniture_ProductID",furniture_ProdID);

            List<String> housing_ProdID = mySQLdb.fetchHousing();
            request.getSession().setAttribute("Housing_ProductID", housing_ProdID);

            List<String> kitchen_supplies = mySQLdb.fetchKitchen_supplies();
            request.getSession().setAttribute("Kitchen_supplies_ProductID", kitchen_supplies);

            List<String> misc = mySQLdb.fetchMisc();
            request.getSession().setAttribute("Misc_ProductID", misc);

            List<String> office_supplies = mySQLdb.fetchOffice_supplies();
            request.getSession().setAttribute("Office_supplies_ProductID", office_supplies);


            List<String> product_categories = mySQLdb.fetchProductCategories();
            request.setAttribute("Product_Categories", product_categories);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/product_categories.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
