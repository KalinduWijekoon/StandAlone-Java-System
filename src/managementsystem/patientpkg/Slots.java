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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import managementsystem.DB;
import managementsystem.paitents;
import managementsystem.validation;
import net.proteanit.sql.DbUtils;

public class Slots extends javax.swing.JFrame {

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    public static String oldcons;
    public static String olddate;
    public static String oldtime;
    public static String oldnoapp;

    public Slots() {

        this.rs = null;
        initComponents();
         slotstable.getTableHeader().setFont(new Font("Tahoma", Font.BOLD, 14));
        slotstable.setRowHeight(40);

        try {
            con = DB.mycon();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Slots.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Slots.class.getName()).log(Level.SEVERE, null, ex);
        }

        tableload();
        jButton4.setEnabled(false);
        jButton5.setEnabled(false);

    }

    public void tableload() {
        try {

            String sql = "SELECT EmpID , Name ,Date, Time , No_of_appointments FROM consultant ";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            slotstable.setModel(DbUtils.resultSetToTableModel(rs));
            System.out.println("Done");

        } catch (Exception e) {

            System.out.println(e);

        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane2 = new javax.swing.JScrollPane();
        consbe = new javax.swing.JTable();
        jScrollPane3 = new javax.swing.JScrollPane();
        datebe = new javax.swing.JTable();
        jScrollPane4 = new javax.swing.JScrollPane();
        timebe = new javax.swing.JTable();
        jScrollPane5 = new javax.swing.JScrollPane();
        noappbe = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        searchbox = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        slotstable = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButton3 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        datebox = new com.toedter.calendar.JDateChooser();
        jLabel4 = new javax.swing.JLabel();
        timebox = new com.github.lgooddatepicker.components.TimePicker();
        jLabel5 = new javax.swing.JLabel();
        nobox = new javax.swing.JTextField();
        empidbox = new javax.swing.JLabel();
        consultantbox = new javax.swing.JComboBox<>();
        jButton6 = new javax.swing.JButton();

        consbe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane2.setViewportView(consbe);

        datebe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane3.setViewportView(datebe);

        timebe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane4.setViewportView(timebe);

        noappbe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane5.setViewportView(noappbe);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(1366, 768));

        jPanel1.setBackground(new java.awt.Color(0, 102, 102));

        jLabel1.setText("Slots");
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 48)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));

        jPanel2.setBackground(new java.awt.Color(0, 102, 102));

        jPanel5.setBackground(new java.awt.Color(0, 102, 102));
        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Search", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 13), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanel5.setForeground(new java.awt.Color(255, 255, 255));

        searchbox.setText("Search Slot");
        searchbox.setBackground(new java.awt.Color(0, 102, 102));
        searchbox.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        searchbox.setForeground(new java.awt.Color(255, 255, 255));
        searchbox.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                searchboxMouseClicked(evt);
            }
        });
        searchbox.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                searchboxKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                searchboxKeyTyped(evt);
            }
        });

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(searchbox, javax.swing.GroupLayout.DEFAULT_SIZE, 207, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addComponent(searchbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 11, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 3, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 8, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 212, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        slotstable.setModel(new javax.swing.table.DefaultTableModel(
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
        slotstable.setBackground(new java.awt.Color(240, 240, 240));
        slotstable.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        slotstable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                slotstableMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(slotstable);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 630, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );

        jButton1.setText("Home");
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton5.setText("UPDATE");
        jButton5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jButton4.setText("DELETE");
        jButton4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton2.setText("ADD");
        jButton2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel6.setText("Date");
        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel6.setToolTipText("");

        jLabel2.setText("EmpID");
        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jButton3.setText("Clear Fields");
        jButton3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jLabel3.setText("consultant");
        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jLabel4.setText("Time");
        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel4.setToolTipText("");

        timebox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel5.setText("No of Appointments");
        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel5.setToolTipText("");

        nobox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        empidbox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        consultantbox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select a consultant", "Dr.Sumith Rajapura", "Dr.Neranjana Hettiarachchi", "Dr.Nishanthi Udayangi" }));
        consultantbox.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        consultantbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                consultantboxActionPerformed(evt);
            }
        });

        jButton6.setText("Generate Report");
        jButton6.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 136, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(64, 64, 64))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(57, 57, 57)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(empidbox, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(2, 2, 2)
                                                .addComponent(consultantbox, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE))
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(2, 2, 2)
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addComponent(timebox, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                    .addComponent(datebox, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel5)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(nobox, javax.swing.GroupLayout.PREFERRED_SIZE, 171, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(47, 47, 47)))
                        .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(31, 31, 31)
                        .addComponent(jButton4)
                        .addGap(30, 30, 30)
                        .addComponent(jButton5)
                        .addGap(395, 395, 395)
                        .addComponent(jButton6)
                        .addGap(28, 28, 28)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(3, 3, 3)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(4, 4, 4)
                                .addComponent(empidbox, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(29, 29, 29)
                                .addComponent(consultantbox, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(datebox, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(14, 14, 14)
                                .addComponent(jLabel2)
                                .addGap(35, 35, 35)
                                .addComponent(jLabel3)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel6)
                                .addGap(33, 33, 33)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel4)
                                    .addComponent(timebox, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel5)
                                    .addComponent(nobox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(18, 18, 18)
                        .addComponent(jButton3)
                        .addGap(0, 161, Short.MAX_VALUE)))
                .addGap(10, 10, 10)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton2)
                    .addComponent(jButton4)
                    .addComponent(jButton5)
                    .addComponent(jButton6)
                    .addComponent(jButton1)))
        );

        setSize(new java.awt.Dimension(1085, 700));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void slotstableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_slotstableMouseClicked

        try {
            int r;
            r = slotstable.getSelectedRow();

            String id = slotstable.getValueAt(r, 0).toString();
            String name = slotstable.getValueAt(r, 1).toString();
//            SimpleDateFormat j = new SimpleDateFormat("yyyy-MM-dd");
            String time = slotstable.getValueAt(r, 3).toString();
            SimpleDateFormat j = new SimpleDateFormat("MMM d, yyyy");
            datebox.setDate(j.parse(slotstable.getValueAt(r, 2).toString()));
            String noslots = slotstable.getValueAt(r, 4).toString();

            empidbox.setText(id);
            consultantbox.setSelectedItem(name);
            //datebox.setDate(j.parse(slotstable.getValueAt(r, 2).toString()));
            timebox.setText(time);
            nobox.setText(noslots);

            jButton2.setEnabled(false);
            jButton4.setEnabled(true);
            jButton5.setEnabled(true);

        } catch (ParseException e) {

            System.out.println(e);
        }
    }//GEN-LAST:event_slotstableMouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed

        new paitents().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        int r = slotstable.getSelectedRow();

        int x = JOptionPane.showConfirmDialog(null, "Do You Really Want To Update?");

        if (x == 0) {

            String empid = empidbox.getText();
            String consultant = consultantbox.getSelectedItem().toString();
//            SimpleDateFormat j = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
//            String date = j.format(datebox.getDate());
            SimpleDateFormat j = new SimpleDateFormat("MMM d, yyyy");
            String date = j.format(datebox.getDate());
            String time = timebox.getText();
            String No = nobox.getText();

            try {

                String sql = "UPDATE consultant SET EmpID = '" + empid + "'  , Name = '" + consultant + "' , Date = '" + date + "', Time = '" + time + "', No_of_appointments = '" + No + "' WHERE EmpID = '" + empid + "'";

                pst = con.prepareStatement(sql);
                pst.execute();
                System.out.println("Done");

                tableload();
                JOptionPane.showMessageDialog(rootPane, "Successfully Updaed!");

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed

        int x = JOptionPane.showConfirmDialog(null, "Do you Really Want To Delete?");
        String Eid = empidbox.getText();
        String newcons = consultantbox.getSelectedItem().toString();
        SimpleDateFormat j = new SimpleDateFormat("MMM d, yyyy");
        String newdate = j.format(datebox.getDate());
        String newtime = timebox.getText();
        String newnoapp = nobox.getText();

        try {
            String a = "SELECT Name FROM consultant WHERE EmpID ='" + Eid + "' ";
            pst = con.prepareStatement(a);
            rs = pst.executeQuery();

            consbe.setModel(DbUtils.resultSetToTableModel(rs));
            String b = consbe.getValueAt(0, 0).toString();
            oldcons = b;

        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            String c = "SELECT Date FROM consultant WHERE EmpID ='" + Eid + "' ";
            pst = con.prepareStatement(c);
            rs = pst.executeQuery();

            datebe.setModel(DbUtils.resultSetToTableModel(rs));
            String d = datebe.getValueAt(0, 0).toString();
            olddate = d;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String e = "SELECT Time FROM consultant WHERE EmpID ='" + Eid + "' ";
            pst = con.prepareStatement(e);
            rs = pst.executeQuery();

            timebe.setModel(DbUtils.resultSetToTableModel(rs));
            String f = timebe.getValueAt(0, 0).toString();
            oldtime = f;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String g = "SELECT No_of_appointments FROM consultant WHERE EmpID ='" + Eid + "' ";
            pst = con.prepareStatement(g);
            rs = pst.executeQuery();

            timebe.setModel(DbUtils.resultSetToTableModel(rs));
            String h = timebe.getValueAt(0, 0).toString();
            oldnoapp = h;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(oldcons);
        System.out.println(newcons);
        System.out.println(olddate);
        System.out.println(newdate);
        System.out.println(oldtime);
        System.out.println(newtime);
        System.out.println(oldnoapp);
        System.out.println(newnoapp);

        if (!oldcons.equals(newcons)) {
            JOptionPane.showMessageDialog(null, "The Consultant Was Updated.Cannot Be Deleted !");
        } else if (!olddate.equals(newdate)) {
            JOptionPane.showMessageDialog(null, "The Date Was Updated.Cannot Be Deleted !");
        } else if (!oldtime.equals(newtime)) {
            JOptionPane.showMessageDialog(null, "The Time Was Updated.Cannot Be Deleted !");
        } else if (!oldnoapp.equals(newnoapp)) {
            JOptionPane.showMessageDialog(null, "The No Of Appointment Was Updated.Cannot Be Deleted !");
        } else if (oldnoapp.equals(newnoapp)) {

            if (x == 0) {

                String id = empidbox.getText();

                String q = "DELETE  FROM consultant WHERE EmpID = '" + id + "' ";

                try {

                    pst = con.prepareStatement(q);
                    pst.execute();
                    System.out.println("Done");

                    tableload();
                    JOptionPane.showMessageDialog(rootPane, "Successfully Deleted!");

                } catch (SQLException e) {

                    System.out.println(e);

                }
            }
        }
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed

        String consult = consultantbox.getSelectedItem().toString();
//        SimpleDateFormat j = new SimpleDateFormat("yyyy-MM-dd");
//        String date = j.format(datebox.getDate());
        SimpleDateFormat j = new SimpleDateFormat("MMM d, yyyy");
        String date = ((JTextField) datebox.getDateEditor().getUiComponent()).getText();
        String time = timebox.getText();
        String no = nobox.getText();
        try {
            if (consultantbox.getSelectedIndex() != 0) {

                if (!date.equals("")) {

                    if (validation.correctDate(datebox.getDate()) == true) {

                        if (!time.equals("")) {

                            if (!no.equals("")) {

                                if (validation.isValidNoOfApp(no) == true) {

                                    String q = "INSERT INTO consultant ( Name,Date, Time, No_of_appointments) VALUES('" + consult + "','" + date + "','" + time + "','" + no + "')";
                                    pst = con.prepareStatement(q);
                                    pst.execute();
                                    System.out.println("Done");

                                    tableload();
                                    JOptionPane.showMessageDialog(rootPane, "Successfully Added!");

                                } else {

                                }
                            } else {
                                JOptionPane.showMessageDialog(this, "No Of Appointment feild cannot be empty");
                            }
                        } else {
                            JOptionPane.showMessageDialog(this, "Select a Time");
                        }

                    } else {
                        JOptionPane.showMessageDialog(rootPane, "Enter The Valid Date !");
                    }
                } else {
                    JOptionPane.showMessageDialog(this, "Choose a Date");
                }
            } else {
                JOptionPane.showMessageDialog(this, "Select a Consultant");
            }
        } catch (SQLException e) {

            System.out.println(e);

        }

    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed

        searchbox.setText(null);
        empidbox.setText(null);
        nobox.setText(null);
        consultantbox.setSelectedItem(null);
        datebox.setDate((null));
        timebox.setTime(null);

        jButton2.setEnabled(true);
        jButton4.setEnabled(false);
        jButton5.setEnabled(false);
    }//GEN-LAST:event_jButton3ActionPerformed

    private void consultantboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_consultantboxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_consultantboxActionPerformed

    private void searchboxMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_searchboxMouseClicked
        searchbox.setText(null);
        empidbox.setText(null);
        nobox.setText(null);
        consultantbox.setSelectedItem(null);
        datebox.setDate((null));
        timebox.setTime(null);

        jButton2.setEnabled(true);
        jButton4.setEnabled(false);
        jButton5.setEnabled(false);
    }//GEN-LAST:event_searchboxMouseClicked

    private void searchboxKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchboxKeyReleased
        String id = searchbox.getText();
        //String name = searchbox.getText();

        try {

            String sql = "SELECT * FROM consultant WHERE EmpID LIKE '" + id + "%'  OR Name LIKE '%" + id + "%'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            slotstable.setModel(DbUtils.resultSetToTableModel(rs));
            System.out.println("Done");

        } catch (SQLException e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_searchboxKeyReleased

    private void searchboxKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchboxKeyTyped


    }//GEN-LAST:event_searchboxKeyTyped

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        
        
         String emp1 = null;
        String nm1 = null;
        String date1 = null;
        String time1 = null;
        String no1 = null;
     
        
        try {
        Connection c = DB.mycon();
        Statement s = c.createStatement();
        ResultSet rs = s.executeQuery("SELECT EmpID , Name ,Date, Time , No_of_appointments FROM consultant");
        com.itextpdf.text.Document document = new com.itextpdf.text.Document();
        PdfWriter.getInstance(document, new FileOutputStream("Consultant_Report.pdf"));
        document.open();          
        document.add(new Paragraph("Consultant Details",FontFactory.getFont(FontFactory.TIMES_BOLD,18,Font.BOLD)));
        document.add(new Paragraph("  "));
        document.add(new Paragraph(new Date().toString()));
        document.add(new Paragraph("The following report shows the consultant details in Rajapura Wedhamadura"));
        document.add(new Paragraph("____________________________________________________________________________"));
        document.add(new Paragraph("   "));
        PdfPTable table = new PdfPTable(5);
        table.setWidthPercentage(105);
        PdfPCell cell=new PdfPCell(new Paragraph("Consultant Details"));
        cell.setColspan(5);
        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
        cell.setBackgroundColor(BaseColor.GRAY);
        table.addCell(cell);
        PdfPCell cell1=new PdfPCell(new Paragraph("employee Id"));
        cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell1);
        PdfPCell cell2=new PdfPCell(new Paragraph("name"));
        cell2.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell2);
        PdfPCell cell3=new PdfPCell(new Paragraph("date"));
        cell3.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell3);
        PdfPCell cell4=new PdfPCell(new Paragraph("time"));
        cell4.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell4);
        PdfPCell cell5=new PdfPCell(new Paragraph("no of appointments"));
        cell5.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell5);
        
      
       
        //table.addCell("cheque id");
        //table.addCell("bank");
        //table.addCell("income");
//        table.addCell("account type");
//        table.addCell("account number");
//        table.addCell("date");
//        
        
        
           
        while (rs.next()) {
            
            emp1 = (rs.getString("EmpID"));
            nm1 = (rs.getString("Name"));
            date1 = (rs.getString("Date"));
            time1 = (rs.getString("time"));
            no1 =(rs.getString("No_of_appointments"));
            
            
            table.addCell(emp1);
            table.addCell(nm1);
            table.addCell(date1);
            table.addCell(time1);
            table.addCell(no1);
            
            
           

        }
        document.add(table);
        com.itextpdf.text.Image image = com.itextpdf.text.Image.getInstance("raja_1.png");
        document.add(image);
        document.close();
        int x = JOptionPane.showConfirmDialog(rootPane, "Report Saved. Do you want to open?");
        if (x==0){
            try{
             
               Desktop.getDesktop().open(new File("C:/Users/KALINDU/Documents/NetBeansProjects/ManagementSystem/Consultant_Report.pdf"));

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
        
      
 
      
 
        
    }//GEN-LAST:event_jButton6ActionPerformed

    public static void main(String args[]) {

        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new Slots().setVisible(true);

            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable consbe;
    private javax.swing.JComboBox<String> consultantbox;
    private javax.swing.JTable datebe;
    private com.toedter.calendar.JDateChooser datebox;
    private javax.swing.JLabel empidbox;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTable noappbe;
    private javax.swing.JTextField nobox;
    private javax.swing.JTextField searchbox;
    private javax.swing.JTable slotstable;
    private javax.swing.JTable timebe;
    private com.github.lgooddatepicker.components.TimePicker timebox;
    // End of variables declaration//GEN-END:variables
}
