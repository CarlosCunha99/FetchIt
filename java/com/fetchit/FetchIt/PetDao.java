package com.fetchit.FetchIt;
import java.sql.*;

public class PetDao {

    public static ResultSet selectAll() {
        System.out.println("Selecting all animals");

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            Statement stmt = con.createStatement();

            System.out.println("Executing query");
            return stmt.executeQuery("select * from animals");
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ResultSet selectSpecies(String species) {
        System.out.println("Selecting " + species + " from animals");

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            Statement stmt = con.createStatement();

            System.out.println("Executing query");
            return stmt.executeQuery("select * from animals where species like '%" + species + "'");
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ResultSet selectPet(int id) {
        System.out.println("Selecting animal " + id);

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            Statement stmt = con.createStatement();

            System.out.println("Executing query");
            return stmt.executeQuery("select * from animals where id = " + id);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ResultSet selectPetView(int id) {
        System.out.println("Selecting animal " + id);

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            Statement stmt = con.createStatement();

            System.out.println("Executing query");
            return stmt.executeQuery("select * from pet_profile where id = " + id);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void updatePet(int id, PetBean bean) {
        System.out.println("Updating animal " + id);

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("Connection successful");

            String query = "update animals set name=?, age=?, species=?, birth=str_to_date(?, '%d,%m,%Y'), breed=?, gender=?, weight=?, color=?, vet_id=? where id = " + id;
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, bean.getName());
            ps.setInt(2, bean.getAge());
            ps.setString(3, bean.getSpecies());
            ps.setString(4, bean.getBirth());
            ps.setString(5, bean.getBreed());
            ps.setString(6, bean.getGender());
            ps.setFloat(7, bean.getWeight());
            ps.setString(8, bean.getColor());
            ps.setInt(9, bean.getVetId());

            System.out.println("Executing query");
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
