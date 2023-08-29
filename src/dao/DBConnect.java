package dao;

import java.sql.*;

public class DBConnect {
    public static Connection getConnect() {
        Connection con = null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");

            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String id = "java";
            String pwd = "1234";

            con = DriverManager.getConnection(url, id, pwd);
        } catch (Exception e) {
            System.out.println(e);
        }

        return con;
    }
}
