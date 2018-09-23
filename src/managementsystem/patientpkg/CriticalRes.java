/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managementsystem.patientpkg;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Element;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.Desktop;
import java.awt.Font;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import managementsystem.DB;
import managementsystem.paitents;
import net.proteanit.sql.DbUtils;

/**
 *
 * @author Anju
 */
public class CriticalRes extends javax.swing.JFrame {

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    public CriticalRes() {
        initComponents();
        //tableload();
        this.rs = null;
        crictable.getTableHeader().setFont(new Font("Tahoma", Font.BOLD, 14));
        crictable.setRowHeight(40);
        try {
            con = DB.mycon();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CriticalRes.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CriticalRes.class.getName()).log(Level.SEVERE, null, ex);
        }
        jLabel4.setVisible(false);

    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        crictable = new javax.swing.JTable();
        jButton2 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        consultantbox = new javax.swing.JComboBox<>();
        searchbox = new javax.swing.JComboBox<>();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(730, 550));

        jPanel1.setBackground(new java.awt.Color(0, 102, 102));
        jPanel1.setPreferredSize(new java.awt.Dimension(710, 140));

        jLabel1.setText("Critical Response");
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setPreferredSize(new java.awt.Dimension(110, 44));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 332, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 81, Short.MAX_VALUE))
        );

        crictable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        crictable.setBackground(new java.awt.Color(240, 240, 240));
        crictable.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jScrollPane2.setViewportView(crictable);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 701, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 450, Short.MAX_VALUE)
                .addContainerGap())
        );

        jButton2.setText("Home");
        jButton2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jPanel4MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jPanel4MouseExited(evt);
            }
        });

        consultantbox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select a consultant", "Dr.Sumith Rajapura", "Dr.Neranjana Hettiarachchi", "Dr.Nishanthi Udayangi" }));
        consultantbox.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        consultantbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                consultantboxActionPerformed(evt);
            }
        });

        searchbox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select Option", "Yes", "No" }));
        searchbox.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        searchbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchboxActionPerformed(evt);
            }
        });

        jLabel2.setText("Critical Status");
        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jLabel3.setText("Consultant");
        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addGap(18, 18, 18)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(consultantbox, javax.swing.GroupLayout.PREFERRED_SIZE, 197, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(searchbox, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(consultantbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(34, 34, 34)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(searchbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel4.setText("SEARCH IN HERE");
        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jButton1.setText("Genarate Report");
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jButton1))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(92, 92, 92)
                                .addComponent(jLabel4)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton2))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabel4)
                        .addGap(32, 32, 32)
                        .addComponent(jButton1)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addGap(10, 10, 10))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1108, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        setSize(new java.awt.Dimension(1126, 718));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed

        new paitents().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void consultantboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_consultantboxActionPerformed
              try {
//
//            if (consultantbox.getSelectedIndex() == 0) {
//                JOptionPane.showMessageDialog(this, "Select a Consultant ");
             if (searchbox.getSelectedIndex() == 0) {
                JOptionPane.showMessageDialog(this, "Select a Critical Option");
            }
        } catch (Exception e) {

            System.out.println(e);

        }

        String cric = searchbox.getSelectedItem().toString();
        String consult = consultantbox.getSelectedItem().toString();
        try {
            String sql = "SELECT * FROM `appointment` WHERE criticalstatus = '" + cric + "' AND consultant = '" + consult + "'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            crictable.setModel(DbUtils.resultSetToTableModel(rs));
            System.out.println("Done");

        } catch (SQLException e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_consultantboxActionPerformed

    private void searchboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchboxActionPerformed
              try {

            if (consultantbox.getSelectedIndex() == 0) {
                JOptionPane.showMessageDialog(this, "Select a Consultant ");
            } else if (searchbox.getSelectedIndex() == 0) {
                JOptionPane.showMessageDialog(this, "Select a Critical Option");
            }
        } catch (Exception e) {

            System.out.println(e);

        }

        String cric = searchbox.getSelectedItem().toString();
        String consult = consultantbox.getSelectedItem().toString();
        try {
            String sql = "SELECT * FROM `appointment` WHERE criticalstatus = '" + cric + "' AND consultant = '" + consult + "'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            crictable.setModel(DbUtils.resultSetToTableModel(rs));
            System.out.println("Done");

        } catch (SQLException e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_searchboxActionPerformed

    private void jPanel4MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel4MouseEntered
        // TODO add your handling code here:
        jLabel4.setVisible(true);
    }//GEN-LAST:event_jPanel4MouseEntered

    private void jPanel4MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel4MouseExited
        // TODO add your handling code here:
        jLabel4.setVisible(false);
    }//GEN-LAST:event_jPanel4MouseExited

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        
        String app1 = null;
        String pid1 = null;
        String date = null;
        String con1 = null;
        String time1 = null;
        String crit1 = null;
        String doc1 = null;
        String chan1 = null;
        
        try {
        Connection c = DB.mycon();
        Statement s = c.createStatement();
        ResultSet rs = s.executeQuery("SELECT appNo,pid,date,consultant,time,criticalstatus,DoctorFee,ChanelFee FROM appointment WHERE criticalstatus = '"+ searchbox.getSelectedItem() +"'AND consultant ='"+ consultantbox.getSelectedItem() +"'");
        com.itextpdf.text.Document document = new com.itextpdf.text.Document();
        PdfWriter.getInstance(document, new FileOutputStream("Appointment_Report.pdf"));
        document.open();          
        document.add(new Paragraph("Critical response Details",FontFactory.getFont(FontFactory.TIMES_BOLD,18,Font.BOLD)));
        document.add(new Paragraph("  "));
        document.add(new Paragraph(new Date().toString()));
        document.add(new Paragraph("The following report shows the Critical response Details in Rajapura Wedhamadura"));
        document.add(new Paragraph("____________________________________________________________________________"));
        document.add(new Paragraph("   "));
        PdfPTable table = new PdfPTable(8);
        table.setWidthPercentage(105);
        PdfPCell cell=new PdfPCell(new Paragraph("Critical response Details"));
        cell.setColspan(8);
        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
        cell.setBackgroundColor(BaseColor.GRAY);
        table.addCell(cell);
        PdfPCell cell1=new PdfPCell(new Paragraph("appointment No"));
        cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell1);
        PdfPCell cell2=new PdfPCell(new Paragraph("pid"));
        cell2.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell2);
        PdfPCell cell3=new PdfPCell(new Paragraph("date"));
        cell3.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell3);
        PdfPCell cell4=new PdfPCell(new Paragraph("consultant"));
        cell4.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell4);
        PdfPCell cell5=new PdfPCell(new Paragraph("time"));
        cell5.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell5);
        PdfPCell cell6=new PdfPCell(new Paragraph("critical status"));
        cell6.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell6);
        PdfPCell cell7=new PdfPCell(new Paragraph("doctor fee"));
        cell7.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell7);
        PdfPCell cell8=new PdfPCell(new Paragraph("channel fee"));
        cell7.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell8);
       
        //table.addCell("cheque id");
        //table.addCell("bank");
        //table.addCell("income");
//        table.addCell("account type");
//        table.addCell("account number");
//        table.addCell("date");
//        
        
        
           
        while (rs.next()) {
            
            app1 = (rs.getString("appNo"));
            pid1 = (rs.getString("pid"));
            date = (rs.getString("date"));
            con1 = (rs.getString("consultant"));
            time1 = (rs.getString("time"));
            crit1 =(rs.getString("criticalstatus"));
            doc1 =(rs.getString("DoctorFee"));
            chan1 =(rs.getString("ChanelFee"));
            
            table.addCell(app1);
            table.addCell(pid1);
            table.addCell(date);
            table.addCell(con1);
            table.addCell(time1);
            table.addCell(crit1);
            table.addCell(doc1);
            table.addCell(chan1);
            
            
           

        }
        document.add(table);
        com.itextpdf.text.Image image = com.itextpdf.text.Image.getInstance("raja_1.png");
        document.add(image);
        document.close();
        int x = JOptionPane.showConfirmDialog(rootPane, "Report Saved. Do you want to open?");
        if (x==0){
            try{
             
               Desktop.getDesktop().open(new File("C:\\Users\\KALINDU\\Documents\\NetBeansProjects\\ManagementSystem\\Appointment_Report.pdf"));

            }catch(Exception e){
                e.printStackTrace();
                JOptionPane.showMessageDialog(null, "Error!");
            }
        
        
        }else if(x==1) {
            JOptionPane.showMessageDialog(null, "Report Saved to HDD!");  
        } 

    } catch (Exception e) {
        JOptionPane.showMessageDialog(null, "Error!");
        e.printStackTrace();
    }
        
      
 
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(CriticalRes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CriticalRes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CriticalRes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CriticalRes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CriticalRes().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> consultantbox;
    private javax.swing.JTable crictable;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JComboBox<String> searchbox;
    // End of variables declaration//GEN-END:variables
}
