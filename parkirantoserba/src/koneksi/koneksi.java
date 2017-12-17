/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author user
 */
public class koneksi {
    public Connection bukaKoneksi(){
        Connection con =null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/parkirantoserba", "root", "");
            System.out.println("koneksi berhasil");
            return con;
    }catch(Exception e)
    {
        System.out.println("Gagal Koneksi");
        return con = null;
}
    }

      public static void main(final String[] args){
          new koneksi().bukaKoneksi();

    }
}

