package services;
import models.DetailModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLdb {
    String url = "jdbc:mysql://localhost:3306/final_project";
    String driver = "com.mysql.cj.jdbc.Driver";
    String user_name = "root";
    String password = "alex11223344";
    Connection connection = null;
    static MySQLdb instance = null;

    public MySQLdb(){
        try{
            Class.forName(driver);
            connection = DriverManager.getConnection(url,user_name,password);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static synchronized MySQLdb getInstance(){
        if (instance == null){
            instance = new MySQLdb();
        }
        return instance;
    }

    //  1. Essentials
    public List<String> fetchEssentials() throws SQLException{
        List<String> Essentials_list = new ArrayList<>();
        String sql_GetEssentials = "SELECT * FROM essentials";
        PreparedStatement preparedStatement = connection.prepareStatement(sql_GetEssentials);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            Essentials_list.add(product_ID);
        }
        return Essentials_list;
    }
    public List<DetailModel> DetailEssentials() throws SQLException{
        List<DetailModel> list = new ArrayList<>();
        String sql = "SELECT * FROM essentials";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID=resultSet.getString("Product_ID");
            String Description = resultSet.getString("Description");
            String sName = resultSet.getString("sName");
            String sEmail = resultSet.getString("sEmail");
            String Keywords = resultSet.getString("Keywords");
            String Post_Date = resultSet.getString("Post_Date");
            DetailModel detailModel = new DetailModel(product_ID,Description,sName,sEmail,Keywords,Post_Date);
            list.add(detailModel);
        }
        resultSet.close();
        preparedStatement.close();

        return list;
    }

    //  2.Furniture
    public List<String> fetchFurniture() throws SQLException{
        List<String> Furniture_list = new ArrayList<>();
        String sql_GetFurniture = "SELECT * FROM furniture";
        PreparedStatement preparedStatement = connection.prepareStatement(sql_GetFurniture);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            Furniture_list.add(product_ID);
        }
        return Furniture_list;
    }
    public List<DetailModel> DetailFurniture() throws SQLException{
        List<DetailModel> list = new ArrayList<>();
        String sql = "SELECT * FROM furniture";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            String Description = resultSet.getString("Description");
            String sName = resultSet.getString("sName");
            String sEmail = resultSet.getString("sEmail");
            String Keywords = resultSet.getString("Keywords");
            String Post_Date = resultSet.getString("Post_Date");
            DetailModel detailModel = new DetailModel(product_ID,Description,sName,sEmail,Keywords,Post_Date);
            list.add(detailModel);
        }
        return list;
    }

    //  3.Housing
    public List<String> fetchHousing() throws SQLException{
        List<String> Housing_list = new ArrayList<>();
        String sql_GetHousing = "SELECT * FROM housing";
        PreparedStatement preparedStatement = connection.prepareStatement(sql_GetHousing);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            Housing_list.add(product_ID);
        }
        return Housing_list;
    }
    public List<DetailModel> DetailHousing() throws SQLException{
        List<DetailModel> list = new ArrayList<>();
        String sql = "SELECT * FROM housing";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            String Description = resultSet.getString("Description");
            String sName = resultSet.getString("sName");
            String sEmail = resultSet.getString("sEmail");
            String Keywords = resultSet.getString("Keywords");
            String Post_Date = resultSet.getString("Post_Date");
            DetailModel detailModel = new DetailModel(product_ID,Description,sName,sEmail,Keywords,Post_Date);
            list.add(detailModel);
        }
        return list;
    }

    //  4.Kitchen_supplies
    public List<String> fetchKitchen_supplies() throws SQLException{
        List<String> Kitchen_supplies_list = new ArrayList<>();
        String sql_GetKitchen_supplies = "SELECT * FROM kitchen_supplies";
        PreparedStatement preparedStatement = connection.prepareStatement(sql_GetKitchen_supplies);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            Kitchen_supplies_list.add(product_ID);
        }
        return Kitchen_supplies_list;
    }
    public List<DetailModel> DetailKitchen() throws SQLException{
        List<DetailModel> list = new ArrayList<>();
        String sql = "SELECT * FROM kitchen_supplies";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            String Description = resultSet.getString("Description");
            String sName = resultSet.getString("sName");
            String sEmail = resultSet.getString("sEmail");
            String Keywords = resultSet.getString("Keywords");
            String Post_Date = resultSet.getString("Post_Date");
            DetailModel detailModel = new DetailModel(product_ID,Description,sName,sEmail,Keywords,Post_Date);
            list.add(detailModel);
        }
        return list;
    }

    //  5.Misc
    public List<String> fetchMisc() throws SQLException{
        List<String> Misc_list = new ArrayList<>();
        String sql_GetMisc = "SELECT * FROM misc";
        PreparedStatement preparedStatement = connection.prepareStatement(sql_GetMisc);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            Misc_list.add(product_ID);
        }
        return Misc_list;
    }
    public List<DetailModel> DetailMisc() throws SQLException{
        List<DetailModel> list = new ArrayList<>();
        String sql = "SELECT * FROM misc";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            String Description = resultSet.getString("Description");
            String sName = resultSet.getString("sName");
            String sEmail = resultSet.getString("sEmail");
            String Keywords = resultSet.getString("Keywords");
            String Post_Date = resultSet.getString("Post_Date");
            DetailModel detailModel = new DetailModel(product_ID,Description,sName,sEmail,Keywords,Post_Date);
            list.add(detailModel);
        }
        return list;
    }

    //  6.Office_supplies
    public List<String> fetchOffice_supplies() throws SQLException{
        List<String> Office_supplies_list = new ArrayList<>();
        String sql_GetOffice_supplies = "SELECT * FROM office_supplies";
        PreparedStatement preparedStatement = connection.prepareStatement(sql_GetOffice_supplies);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            Office_supplies_list.add(product_ID);
        }
        return Office_supplies_list;
    }
    public List<DetailModel> DetailOffice() throws SQLException{
        List<DetailModel> list = new ArrayList<>();
        String sql = "SELECT * FROM office_supplies";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("Product_ID");
            String Description = resultSet.getString("Description");
            String sName = resultSet.getString("sName");
            String sEmail = resultSet.getString("sEmail");
            String Keywords = resultSet.getString("Keywords");
            String Post_Date = resultSet.getString("Post_Date");
            DetailModel detailModel = new DetailModel(product_ID,Description,sName,sEmail,Keywords,Post_Date);
            list.add(detailModel);
        }
        return list;
    }
    //  7.Product_categories
    public List<String> fetchProductCategories() throws SQLException{
        List<String> productCategories_list = new ArrayList<>();
        String sql_GetproductCategories = "SELECT * FROM product_category";
        PreparedStatement preparedStatement = connection.prepareStatement(sql_GetproductCategories);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String product_ID = resultSet.getString("product_category");
            productCategories_list.add(product_ID);
        }
        return productCategories_list;
    }


}
