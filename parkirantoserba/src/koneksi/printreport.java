/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.io.File;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author USER
 */
public class printreport {
    public printreport(String name) {
        koneksi k = new koneksi();       
        Connection c = k.bukaKoneksi();
        File file = new File(name);
        try {
            JasperReport jasperReport = (JasperReport) JRLoader.loadObjectFromFile(file.getPath());
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, c);
            JasperViewer jv = new JasperViewer(jasperPrint, false);
            jv.setVisible(true);
            //JasperViewer.viewReport(jasperPrint);
        } catch (JRException ex) {
            Logger.getLogger(printreport.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
