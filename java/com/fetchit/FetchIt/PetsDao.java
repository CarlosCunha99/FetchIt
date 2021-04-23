package com.fetchit.FetchIt;
import java.sql.*;

public class PetsDao {

    public static ResultSet selectFrom(String tableName) {
        System.out.println("PetsDao selecting from table " + tableName + "...");
        boolean status = false;

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            Statement stmt = con.createStatement();

            System.out.println("Executing query");
            ResultSet rs = stmt.executeQuery("select * from " + tableName);
            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
