package com.fetchit.FetchIt;
import java.sql.*;

public class LoginDao {

    public static boolean validate(LoginBean bean) {
        System.out.println("LoginDao validating...");
        boolean status = false;

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            PreparedStatement ps = con.prepareStatement("select * from users where id=? and password=?");
            ps.setInt(1, bean.getId());
            ps.setString(2, bean.getPassword());

            ResultSet rs = ps.executeQuery();
            status = rs.next();
            System.out.println("Validation: " + status);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
}
