package DAO;


import java.sql.Connection;

public class TestDataBase {
    public static void main(String[] args) {
        Connection conn = DatabaseConnection.getConnection();

        if (conn != null) {
            System.out.println("✅ Database Connection Successful!");
        } else {
            System.out.println("❌ Database Connection Failed!");
        }

        // Close connection after testing
        try {
            DatabaseConnection.closeConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
