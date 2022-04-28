package servlets;

import models.DetailModel;
import services.MySQLdb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "DetailServlet", value = "/DetailServlet")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        MySQLdb mySQLdb = MySQLdb.getInstance();
        String id = request.getParameter("id");
        switch (id) {
            case "1":
                try {
                    List<DetailModel> essentials_Detail = mySQLdb.DetailEssentials();
                    request.setAttribute("EsDetail", essentials_Detail);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                RequestDispatcher dispatcher = request.getRequestDispatcher("category_list1.jsp");
                dispatcher.forward(request, response);
                break;
            case "2":
                try {
                    List<DetailModel> furniture_Detail = mySQLdb.DetailFurniture();
                    request.setAttribute("FsDetail", furniture_Detail);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                RequestDispatcher dispatcher2 = request.getRequestDispatcher("/category_list2.jsp");
                dispatcher2.forward(request, response);
                break;
            case "3":
                try {
                    List<DetailModel> housing_Detail = mySQLdb.DetailHousing();
                    request.setAttribute("HsDetail", housing_Detail);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                RequestDispatcher dispatcher3 = request.getRequestDispatcher("/category_list3.jsp");
                dispatcher3.forward(request, response);
                break;
            case "4":
                try {
                    List<DetailModel> Kitchen_Detail = mySQLdb.DetailKitchen();
                    request.setAttribute("KsDetail", Kitchen_Detail);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                RequestDispatcher dispatcher4 = request.getRequestDispatcher("/category_list4.jsp");
                dispatcher4.forward(request, response);
            case "5":
                try {
                    List<DetailModel> misc_Detail = mySQLdb.DetailMisc();
                    request.setAttribute("MsDetail", misc_Detail);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                RequestDispatcher dispatcher5 = request.getRequestDispatcher("/category_list5.jsp");
                dispatcher5.forward(request, response);
            case "6":
                try {
                    List<DetailModel> office_Detail = mySQLdb.DetailOffice();
                    request.setAttribute("OsDetail", office_Detail);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                RequestDispatcher dispatcher6 = request.getRequestDispatcher("/category_list6.jsp");
                dispatcher6.forward(request, response);
        }
    }


}
