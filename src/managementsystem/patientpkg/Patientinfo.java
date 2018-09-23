package managementsystem.patientpkg;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.Desktop;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JOptionPane;
import javax.swing.Timer;
import net.proteanit.sql.DbUtils;
import java.util.Calendar;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import managementsystem.DB;
import managementsystem.paitents;
import managementsystem.validation;

public class Patientinfo extends javax.swing.JFrame {

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    public static String oldpname;
    public static String oldage;
    public static String oldaddress;
    public static String oldphone;

    public Patientinfo() {
        this.rs = null;
        initComponents();
//        showtime();
//        showdate();
        patienttable.getTableHeader().setFont(new Font("Tahoma", Font.BOLD, 14));
        patienttable.setRowHeight(40);

        try {
            con = DB.mycon();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Patientinfo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Patientinfo.class.getName()).log(Level.SEVERE, null, ex);
        }

        tableload();
        String id = pidbox.getText();

        if (id.equals("")) {
            jButton2.setEnabled(false);
            jButton4.setEnabled(false);
        }

    }

//    public void showtime() {
//        new Timer(0, (ActionEvent e) -> {
//            Date d = new Date();
//            SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
//            String timee = sdf.format(d);
//            timeb.setText(timee);
//        }).start();;
//    }

//    public String showdate() {
//        Date date = Calendar.getInstance().getTime();
//        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
//        String Date = dateFormat.format(date);
//        System.out.println("Converted String: " + Date);
//        dateb.setText(Date);
//        return Date;
//    }

    public void tableload() {
        try {

            String sql = "SELECT pid , P_name , P_age , P_address , P_phone FROM patient ";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            patienttable.setModel(DbUtils.resultSetToTableModel(rs));
            System.out.println("Done");

        } catch (Exception e) {

            System.out.println(e);

        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane2 = new javax.swing.JScrollPane();
        pnamebe = new javax.swing.JTable();
        jScrollPane3 = new javax.swing.JScrollPane();
        agebe = new javax.swing.JTable();
        jScrollPane4 = new javax.swing.JScrollPane();
        addressbe = new javax.swing.JTable();
        jScrollPane5 = new javax.swing.JScrollPane();
        phonebe = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        searchbox = new javax.swing.JTextField();
        timeb1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        pnamebox = new javax.swing.JTextField();
        agebox = new javax.swing.JTextField();
        addressbox = new javax.swing.JTextField();
        phonebox = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        pidbox = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        inside = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jButton4 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        patienttable = new javax.swing.JTable();
        jButton3 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();

        pnamebe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane2.setViewportView(pnamebe);

        agebe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane3.setViewportView(agebe);

        addressbe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane4.setViewportView(addressbe);

        phonebe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane5.setViewportView(phonebe);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(1366, 768));

        jPanel1.setBackground(new java.awt.Color(0, 102, 102));

        jLabel1.setText("Patient");
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));

        jPanel4.setBackground(new java.awt.Color(0, 102, 102));
        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Search", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 13), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanel4.setForeground(new java.awt.Color(255, 255, 255));

        searchbox.setText("PatientID");
        searchbox.setBackground(new java.awt.Color(0, 102, 102));
        searchbox.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        searchbox.setForeground(new java.awt.Color(255, 255, 255));
        searchbox.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                searchboxMouseClicked(evt);
            }
        });
        searchbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchboxActionPerformed(evt);
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

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addComponent(searchbox, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(22, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(7, 7, 7)
                .addComponent(searchbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        timeb1.setFont(new java.awt.Font("Felix Titling", 1, 36)); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 680, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addContainerGap(1216, Short.MAX_VALUE)
                    .addComponent(timeb1)
                    .addGap(1197, 1197, 1197)))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addContainerGap())
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addContainerGap(86, Short.MAX_VALUE)
                    .addComponent(timeb1)
                    .addGap(66, 66, 66)))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel5.setText("Age");
        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jLabel7.setText("Address");
        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        pnamebox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        agebox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        addressbox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        phonebox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jButton1.setText("ADD");
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel2.setText("Patient Name");
        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jLabel3.setText("PatientID");
        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        pidbox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jButton2.setText("DELETE");
        jButton2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                jButton2PropertyChange(evt);
            }
        });

        inside.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        inside.setLabel("Clear Fields");
        inside.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                insideMouseClicked(evt);
            }
        });
        inside.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                insideActionPerformed(evt);
            }
        });
        inside.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                insidePropertyChange(evt);
            }
        });

        jLabel4.setText("Phone");
        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jButton4.setText("UPDATE");
        jButton4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton4.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jButton4ItemStateChanged(evt);
            }
        });
        jButton4.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jButton4StateChanged(evt);
            }
        });
        jButton4.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jButton4FocusLost(evt);
            }
        });
        jButton4.addComponentListener(new java.awt.event.ComponentAdapter() {
            public void componentHidden(java.awt.event.ComponentEvent evt) {
                jButton4ComponentHidden(evt);
            }
        });
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jButton4.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                jButton4PropertyChange(evt);
            }
        });
        jButton4.addVetoableChangeListener(new java.beans.VetoableChangeListener() {
            public void vetoableChange(java.beans.PropertyChangeEvent evt)throws java.beans.PropertyVetoException {
                jButton4VetoableChange(evt);
            }
        });

        jPanel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        patienttable.setModel(new javax.swing.table.DefaultTableModel(
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
        patienttable.setBackground(new java.awt.Color(240, 240, 240));
        patienttable.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        patienttable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                patienttableMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(patienttable);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 353, Short.MAX_VALUE)
                .addContainerGap())
        );

        jButton3.setText("Home");
        jButton3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton5.setText("Generate Report");
        jButton5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4))
                        .addGap(4, 4, 4)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(pidbox, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(pnamebox, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(agebox, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(addressbox, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(phonebox, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(inside, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(118, 118, 118)
                        .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(10, 10, 10)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton5)
                        .addGap(34, 34, 34)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE))))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addComponent(jLabel3)
                        .addGap(36, 36, 36)
                        .addComponent(jLabel2)
                        .addGap(41, 41, 41)
                        .addComponent(jLabel5)
                        .addGap(48, 48, 48)
                        .addComponent(jLabel7)
                        .addGap(48, 48, 48)
                        .addComponent(jLabel4))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(15, 15, 15)
                        .addComponent(pidbox, javax.swing.GroupLayout.PREFERRED_SIZE, 21, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(36, 36, 36)
                        .addComponent(pnamebox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(38, 38, 38)
                        .addComponent(agebox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(45, 45, 45)
                        .addComponent(addressbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(45, 45, 45)
                        .addComponent(phonebox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(19, 19, 19)
                        .addComponent(inside))
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton5)
                    .addComponent(jButton4)
                    .addComponent(jButton2)
                    .addComponent(jButton1)
                    .addComponent(jButton3))
                .addGap(24, 24, 24))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, 0)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 877, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        setSize(new java.awt.Dimension(895, 676));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed

        try {
            String pid = pidbox.getText();
            String name = pnamebox.getText();
            String age = agebox.getText();
            String address = addressbox.getText();
            String phone = phonebox.getText();

            /*if(!(name.equals("") {
             if(!(age.equals(""))&& validation.isValidAge(age))
             */
//            String w = "SELECT pid FROM patient WHERE pid = '"+ pid +"' ";
//            pst = con.prepareStatement(w);
//            pst.execute(w);
//            System.out.println("Done");
//            
//            if( w.equals(null)){
//                JOptionPane.showMessageDialog(this, "Same PID cannot be enter!");
//            }
//            else{
            if (name.equals("")) {
                JOptionPane.showMessageDialog(this, "Name feild cannot be empty!");
            } else {
                validation.isValidName(name);
            }
            if (age.equals("")) {
                JOptionPane.showMessageDialog(this, "Age feild cannot be empty!");

            } else {
                validation.isValidAge(age);
            }
            if (address.equals("")) {
                JOptionPane.showMessageDialog(this, "Address feild cannot be empty!");
            }
            if (phone.equals("")) {
                JOptionPane.showMessageDialog(this, "Phone feild cannot be empty!");
            } else if ((validation.isValidPhoneNumber(phone)) == !true) {

            } //            else if((validation.isValidphn(phone))==true){
            //                
            //            }
            else {

                String q = "INSERT INTO patient(P_name,P_age,P_address,P_phone) VALUES ('" + name + "', '" + age + "', '" + address + "', '" + phone + "')";
                pst = con.prepareStatement(q);
                pst.execute(q);
                System.out.println("Done");

                tableload();
                JOptionPane.showMessageDialog(rootPane, "Successfully Added!");

                pidbox.setText(null);
                pnamebox.setText(null);
                agebox.setText(null);
                addressbox.setText(null);
                phonebox.setText(null);
            }

        } catch (SQLException e) {

            System.out.println(e);

        }


    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed

        String pid = pidbox.getText();
        String newpname = pnamebox.getText();
        String newage = agebox.getText();
        String newaddress = addressbox.getText();
        String newphone = phonebox.getText();

        try {
            String a = "SELECT P_name FROM patient WHERE pid ='" + pid + "' ";
            pst = con.prepareStatement(a);
            rs = pst.executeQuery();

            pnamebe.setModel(DbUtils.resultSetToTableModel(rs));
            String b = pnamebe.getValueAt(0, 0).toString();
            oldpname = b;

        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String c = "SELECT P_age FROM patient WHERE pid ='" + pid + "' ";
            pst = con.prepareStatement(c);
            rs = pst.executeQuery();

            agebe.setModel(DbUtils.resultSetToTableModel(rs));
            String d = agebe.getValueAt(0, 0).toString();
            oldage = d;

        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String d = "SELECT P_address FROM patient WHERE pid ='" + pid + "' ";
            pst = con.prepareStatement(d);
            rs = pst.executeQuery();

            addressbe.setModel(DbUtils.resultSetToTableModel(rs));
            String e = addressbe.getValueAt(0, 0).toString();
            oldaddress = e;

        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String f = "SELECT P_phone FROM patient WHERE pid ='" + pid + "' ";
            pst = con.prepareStatement(f);
            rs = pst.executeQuery();

            phonebe.setModel(DbUtils.resultSetToTableModel(rs));
            String g = phonebe.getValueAt(0, 0).toString();
            oldphone = 0+g ;

        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
//        System.out.println(oldpname);
//        System.out.println(newpname);
//        System.out.println(oldage);
//        System.out.println(newage);
//        System.out.println(oldaddress);
//        System.out.println(newaddress);
//        System.out.println(oldphone);
//        System.out.println(newphone);
        //if (!pid.equals("")) {
        if (!oldpname.equals(newpname)) {
            JOptionPane.showMessageDialog(null, "The Name Was Updated.Cannot Be Deleted !");
        } else if (!oldage.equals(newage)) {
            JOptionPane.showMessageDialog(null, "The Age Was Updated.Cannot Be Deleted !");
        } else if (!oldaddress.equals(newaddress)) {
            JOptionPane.showMessageDialog(null, "The Address Was Updated.Cannot Be Deleted !");
        } else if (!oldphone.equals(newphone)) {
            JOptionPane.showMessageDialog(null, "The Phone No Was Updated.Cannot Be Deleted !");
        } else if (oldphone.equals(newphone)) {
            int x = JOptionPane.showConfirmDialog(null, "Do you Really Want To Delete?");

            if (x == 0) {

                //String pid = pidbox.getText();
                String q = "DELETE  FROM patient WHERE pid = '" + pid + "' ";

                try {

                    pst = con.prepareStatement(q);
                    pst.execute();
                    System.out.println("Done");

                    tableload();
                    JOptionPane.showMessageDialog(rootPane, "Successfully Deleted!");

                    pidbox.setText(null);
                    pnamebox.setText(null);
                    agebox.setText(null);
                    addressbox.setText(null);
                    phonebox.setText(null);
                } catch (SQLException e) {

                    System.out.println(e);

                }

            }
        }

    }//GEN-LAST:event_jButton2ActionPerformed

    private void patienttableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_patienttableMouseClicked

        int r = patienttable.getSelectedRow();

        String pid = patienttable.getValueAt(r, 0).toString();
        String name = patienttable.getValueAt(r, 1).toString();
        String age = patienttable.getValueAt(r, 2).toString();
        String address = patienttable.getValueAt(r, 3).toString();
        String phone = patienttable.getValueAt(r, 4).toString();

        pidbox.setText(pid);
        pnamebox.setText(name);
        agebox.setText(age);
        addressbox.setText(address);
        phonebox.setText(0 + phone);

        jButton1.setEnabled(false);
        if (!pid.equals("")) {
            jButton4.setEnabled(true);
            jButton2.setEnabled(true);
        }


    }//GEN-LAST:event_patienttableMouseClicked

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed

        String id = pidbox.getText();

        if (id.equals("")) {
            jButton4.setEnabled(false);
        } else {
            jButton4.setEnabled(true);
        }
        int x = JOptionPane.showConfirmDialog(null, "Do You Really Want To Update?");

        if (x == 0) {
            String pid = pidbox.getText();
            String name = pnamebox.getText();
            String age = agebox.getText();
            String address = addressbox.getText();
            String phone = phonebox.getText();

            try {
                if (name.equals("")) {
                    JOptionPane.showMessageDialog(this, "Name feild cannot be empty!");
                } else {
                    validation.isValidName(name);
                }
                if (age.equals("")) {
                    JOptionPane.showMessageDialog(this, "Age feild cannot be empty!");

                } else {
                    validation.isValidAge(age);
                }
                if (address.equals("")) {
                    JOptionPane.showMessageDialog(this, "Address feild cannot be empty!");
                }
                if (phone.equals("")) {
                    JOptionPane.showMessageDialog(this, "Phone feild cannot be empty!");
                } else {
                    validation.isValidPhoneNumber(phone);
                }

                String sql = "UPDATE patient SET pid = '" + pid + "' , P_name = '" + name + "' , P_age = '" + age + "' , P_address = '" + address + "' , P_phone = '" + phone + "'  WHERE pid = '" + pid + "'";

                pst = con.prepareStatement(sql);
                pst.execute();
                System.out.println("Done");

                tableload();
                JOptionPane.showMessageDialog(rootPane, "Successfully Updated!");
            } catch (SQLException e) {

                System.out.println(e);

            }
        }

    }//GEN-LAST:event_jButton4ActionPerformed

    private void searchboxMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_searchboxMouseClicked
        searchbox.setText(null);

        pidbox.setText(null);
        pnamebox.setText(null);
        agebox.setText(null);
        addressbox.setText(null);
        phonebox.setText(null);
    }//GEN-LAST:event_searchboxMouseClicked

    private void insideActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_insideActionPerformed

        pidbox.setText(null);
        pnamebox.setText(null);
        agebox.setText(null);
        addressbox.setText(null);
        phonebox.setText(null);

        jButton1.setEnabled(true);
        jButton2.setEnabled(false);
        jButton4.setEnabled(false);


    }//GEN-LAST:event_insideActionPerformed

    private void searchboxKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchboxKeyReleased

        String id = searchbox.getText();
        String name = searchbox.getText();

        try {

            if (id != "") {
                String sql = "SELECT pid,P_name,P_age,P_address,P_phone FROM patient WHERE pid LIKE '" + id + "%' OR P_name LIKE  '" + name + "%'  ";
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();

                patienttable.setModel(DbUtils.resultSetToTableModel(rs));
                System.out.println("Done");
            } else {
                jButton1.setEnabled(true);
            }

        } catch (SQLException e) {

            System.out.println(e);

        }

        int r = patienttable.getSelectedRow();

        String pid = patienttable.getValueAt(0, 0).toString();

        if (!pid.equals(
                "")) {
            jButton1.setEnabled(false);
        } else {
            jButton1.setEnabled(true);
        }
    }//GEN-LAST:event_searchboxKeyReleased

    private void searchboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchboxActionPerformed

    }//GEN-LAST:event_searchboxActionPerformed

    private void searchboxKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchboxKeyTyped

        pidbox.setText(null);
        pnamebox.setText(null);
        agebox.setText(null);
        addressbox.setText(null);
        phonebox.setText(null);

        String id = searchbox.getText();
        if (!id.equals("")) {
            jButton1.setEnabled(false);
        } else {
            jButton1.setEnabled(true);
        }

    }//GEN-LAST:event_searchboxKeyTyped

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        new paitents().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton4ItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jButton4ItemStateChanged


    }//GEN-LAST:event_jButton4ItemStateChanged

    private void jButton4StateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jButton4StateChanged

    }//GEN-LAST:event_jButton4StateChanged

    private void jButton4ComponentHidden(java.awt.event.ComponentEvent evt) {//GEN-FIRST:event_jButton4ComponentHidden

    }//GEN-LAST:event_jButton4ComponentHidden

    private void jButton4FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jButton4FocusLost

    }//GEN-LAST:event_jButton4FocusLost

    private void jButton4PropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_jButton4PropertyChange


    }//GEN-LAST:event_jButton4PropertyChange

    private void jButton4VetoableChange(java.beans.PropertyChangeEvent evt)throws java.beans.PropertyVetoException {//GEN-FIRST:event_jButton4VetoableChange

    }//GEN-LAST:event_jButton4VetoableChange

    private void jButton2PropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_jButton2PropertyChange
//        String id = pidbox.getText();
//
//        if (id.equals("")) {
//            jButton2.setEnabled(false);
//        }
    }//GEN-LAST:event_jButton2PropertyChange

    private void insideMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_insideMouseClicked

    }//GEN-LAST:event_insideMouseClicked

    private void insidePropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_insidePropertyChange
//        String id = pidbox.getText();

//        if (id.equals("")) {
//            jButton2.setEnabled(false);
//        }
    }//GEN-LAST:event_insidePropertyChange

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        
        
              
        String pid1 = null;
        String pn = null;
        String pa = null;
        String padd = null;
        String pp = null;
        
        
        try {
        Connection c = DB.mycon();
        Statement s = c.createStatement();
        ResultSet rs = s.executeQuery("SELECT pid,P_name,P_age,P_address,P_phone FROM patient");
        Document document = new Document();
        PdfWriter.getInstance(document, new FileOutputStream("PatientInfo_Report.pdf"));
        document.open();          
        document.add(new Paragraph("Patients Details",FontFactory.getFont(FontFactory.TIMES_BOLD,18,Font.BOLD)));
        document.add(new Paragraph("  "));
        document.add(new Paragraph(new Date().toString()));
        document.add(new Paragraph("The following report shows the patient details in Rajapura Wedhamadura"));
        document.add(new Paragraph("____________________________________________________________________________"));
        document.add(new Paragraph("   "));
        PdfPTable table = new PdfPTable(5);
        table.setWidthPercentage(105);
        PdfPCell cell=new PdfPCell(new Paragraph("Patient Details"));
        cell.setColspan(5);
        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
        cell.setBackgroundColor(BaseColor.GRAY);
        table.addCell(cell);
        PdfPCell cell1=new PdfPCell(new Paragraph("pid"));
        cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell1);
        PdfPCell cell2=new PdfPCell(new Paragraph("Patitent name"));
        cell2.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell2);
        PdfPCell cell3=new PdfPCell(new Paragraph("Patitent age"));
        cell3.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell3);
        PdfPCell cell4=new PdfPCell(new Paragraph("Patitent address"));
        cell4.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table.addCell(cell4);
        PdfPCell cell5=new PdfPCell(new Paragraph("Patitent phone"));
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
            
            
            pid1 = (rs.getString("pid"));
            pn = (rs.getString("P_name"));
            pa = (rs.getString("P_age"));
            padd = (rs.getString("P_address"));
            pp =(rs.getString("P_phone"));
            
           
            table.addCell(pid1);
            table.addCell(pn);
            table.addCell(pa);
            table.addCell(padd);
            table.addCell(pp);
                   
           

        }
        document.add(table);
        com.itextpdf.text.Image image = com.itextpdf.text.Image.getInstance("raja_1.png");
        document.add(image);
        document.close();
        int x = JOptionPane.showConfirmDialog(rootPane, "Report Saved. Do you want to open?");
        if (x==0){
            try{
             
               Desktop.getDesktop().open(new File("C:/Users/KALINDU/Documents/NetBeansProjects/ManagementSystem/PatientInfo_Report.pdf"));

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
    }//GEN-LAST:event_jButton5ActionPerformed

    public static void main(String args[]) {

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Patientinfo().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable addressbe;
    private javax.swing.JTextField addressbox;
    private javax.swing.JTable agebe;
    private javax.swing.JTextField agebox;
    private javax.swing.JButton inside;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTable patienttable;
    private javax.swing.JTable phonebe;
    private javax.swing.JTextField phonebox;
    private javax.swing.JLabel pidbox;
    private javax.swing.JTable pnamebe;
    private javax.swing.JTextField pnamebox;
    private javax.swing.JTextField searchbox;
    private javax.swing.JLabel timeb1;
    // End of variables declaration//GEN-END:variables
}
