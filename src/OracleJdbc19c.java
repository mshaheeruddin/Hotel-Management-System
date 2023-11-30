

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Muhammad Shaheer
 */
public class OracleJdbc19c {
    

    public static Connection getConnection() {
        Connection conn = null;
        try {
            //step1 load driver class
            Class.forName("oracle.jdbc.driver.OracleDriver");
            //step2 create the connection object using URL
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl","System","microphone");
            if (conn==null) {
                System.out.println("Unable to connect with DB");
                return null;
            }
    System.out.println("Connected with DB!");
    
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OracleJdbc19c.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(OracleJdbc19c.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    
   
    
    public static void main(String[] args) {
        OracleJdbc19c obj = new OracleJdbc19c();
        try {
            Connection conn = OracleJdbc19c.getConnection();
  
            conn.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(OracleJdbc19c.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }
}