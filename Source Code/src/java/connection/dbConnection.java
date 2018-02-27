/**
 * @author Asaad Aman
 * All Rights Reserved.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class dbConnection {

    static Connection con = null;
    PreparedStatement pst = null;

    public static Connection makeConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptography", "root", "root");

        } catch (Exception e) {
        }
        return con;
    }
}