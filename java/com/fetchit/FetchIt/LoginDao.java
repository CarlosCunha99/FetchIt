package com.fetchit.FetchIt;
import java.sql.*;

public class LoginDao {

    public static ResultSet validate(LoginBean bean) {
        System.out.println("LoginDao validating...");
//        boolean status = false;
        ResultSet rs = null;

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            String query = "select * from users where id=? and password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, bean.getId());
            ps.setString(2, bean.getPassword());

            rs = ps.executeQuery();
//            status = rs.next();
//            System.out.println("Validation: " + status);
        } catch (SQLException e) {
            e.printStackTrace();
        }

//        return status;
        return rs;
    }
}
