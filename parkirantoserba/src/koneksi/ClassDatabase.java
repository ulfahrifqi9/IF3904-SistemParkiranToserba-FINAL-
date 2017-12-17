/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author zidniryi
 */
public class ClassDatabase {
    private static Connection koneksi;
    ///PATH REPORT UNTUK NETBEANS
    public static String PathReport=System.getProperty("user.dir") + "/src/";
    //PATHREPOT UNTUK COMPILE DAN COPYKAN REPORT Jasper pada Folder src
    //public static String PathReport=System.getProperty("user.dir") + "/";  
    public static Connection getkoneksi() {
        if (koneksi==null) {
            try {                              
                String url="jdbc:mysql://localhost:3306/parkirantoserba";
                String user="root";
                String password="";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                koneksi=DriverManager.getConnection(url,user,password);
            }catch (SQLException t) {
                System.out.println("Error membuat koneksi");
            }
        }
     return koneksi;
    }
}
