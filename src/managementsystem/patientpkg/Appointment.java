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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.text.Document;
import managementsystem.DB;
import managementsystem.paitents;
import managementsystem.validation;
import net.proteanit.sql.DbUtils;


public class Appointment extends javax.swing.JFrame {

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    private Object idc;
    private Object j;
    public static String pid;
    public static String preval;
    public static String curval;
    public static int a;
    public static String b;
    public static String d;
    public static String e;
    public static String oldcric;
    public static String olddfee;
    public static String oldchfee;
    public static String ab;

    public Appointment() {

        this.rs = null;
        initComponents();
        grabs.grabFocus();
        appointmenttable.getTableHeader().setFont(new Font("Tahoma", Font.BOLD, 14));
        appointmenttable.setRowHeight(40);
        try {
            con = DB.mycon();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        consultantbox.setSelectedIndex(0);

        tableload();
        String apno = appnobox.getText();
        if (apno.equals("")) {
            jButton2.setEnabled(false);
            jButton4.setEnabled(false);
        }
    }

    public void tableload() {

        try {

            String sql = "SELECT appNo, pid , date , consultant , time , criticalstatus,DoctorFee,ChanelFee FROM appointment ";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            appointmenttable.setModel(DbUtils.resultSetToTableModel(rs));
            System.out.println("Done");

        } catch (SQLException e) {

            System.out.println(e);

        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jScrollPane3 = new javax.swing.JScrollPane();
        datebe = new javax.swing.JTable();
        jScrollPane4 = new javax.swing.JScrollPane();
        consultantbe = new javax.swing.JTable();
        jScrollPane5 = new javax.swing.JScrollPane();
        timebe = new javax.swing.JTable();
        jScrollPane6 = new javax.swing.JScrollPane();
        cricbe = new javax.swing.JTable();
        jScrollPane7 = new javax.swing.JScrollPane();
        dfeebe = new javax.swing.JTable();
        jScrollPane8 = new javax.swing.JScrollPane();
        chfeebe = new javax.swing.JTable();
        grabs = new javax.swing.JTextField();
        jScrollPane9 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        ddd = new javax.swing.JScrollPane();
        appnobe = new javax.swing.JTable();
        jScrollPane10 = new javax.swing.JScrollPane();
        datex = new javax.swing.JTable();
        jPanel6 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        searchbox = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jButton4 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jPanel7 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        appointmenttable = new javax.swing.JTable();
        jPanel3 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        consultantbox = new javax.swing.JComboBox<>();
        jLabel4 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        appnobox = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jButton6 = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        chanelbox = new javax.swing.JTextField();
        doctorbox = new javax.swing.JTextField();
        pidbox = new javax.swing.JTextField();
        nobox = new javax.swing.JRadioButton();
        jLabel3 = new javax.swing.JLabel();
        yesbox = new javax.swing.JRadioButton();
        jLabel2 = new javax.swing.JLabel();
        datebox = new com.toedter.calendar.JDateChooser();
        timebox = new com.github.lgooddatepicker.components.TimePicker();
        jButton3 = new javax.swing.JButton();

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
        jScrollPane2.setViewportView(jTable1);

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
        datebe.getAccessibleContext().setAccessibleName("dateb");

        consultantbe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane4.setViewportView(consultantbe);

        jScrollPane4.getAccessibleContext().setAccessibleName("consultantbe");

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
        jScrollPane5.setViewportView(timebe);

        cricbe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane6.setViewportView(cricbe);

        dfeebe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane7.setViewportView(dfeebe);

        chfeebe.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane8.setViewportView(chfeebe);

        grabs.setText("jTextField1");

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane9.setViewportView(jTable2);

        appnobe.setModel(new javax.swing.table.DefaultTableModel(
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
        ddd.setViewportView(appnobe);

        datex.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane10.setViewportView(datex);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(1366, 768));

        jPanel6.setPreferredSize(new java.awt.Dimension(668, 142));

        jPanel1.setBackground(new java.awt.Color(0, 102, 102));
        jPanel1.setPreferredSize(new java.awt.Dimension(668, 142));

        jLabel1.setText("Appointments");
        jLabel1.setBackground(new java.awt.Color(255, 255, 255));
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setPreferredSize(new java.awt.Dimension(131, 44));

        jPanel5.setBackground(new java.awt.Color(0, 102, 102));
        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Search", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 13), new java.awt.Color(255, 255, 255))); // NOI18N
        jPanel5.setForeground(new java.awt.Color(255, 255, 255));

        searchbox.setText("Appointment No");
        searchbox.setBackground(new java.awt.Color(0, 102, 102));
        searchbox.setCaretColor(new java.awt.Color(255, 255, 255));
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

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(searchbox, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(31, Short.MAX_VALUE))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addComponent(searchbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 16, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 272, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1247, Short.MAX_VALUE)
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 128, Short.MAX_VALUE)
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jButton4.setText("UPDATE");
        jButton4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton2.setText("DELETE");
        jButton2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton1.setText("ADD");
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton5.setText("Home");
        jButton5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jPanel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel7.setPreferredSize(new java.awt.Dimension(509, 24));

        appointmenttable.setModel(new javax.swing.table.DefaultTableModel(
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
        appointmenttable.setBackground(new java.awt.Color(240, 240, 240));
        appointmenttable.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        appointmenttable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                appointmenttableMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(appointmenttable);

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 833, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 466, Short.MAX_VALUE)
                .addContainerGap())
        );

        jLabel5.setText("Date");
        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        consultantbox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select a consultant", "Dr.Sumith Rajapura", "Dr.Neranjana Hettiarachchi", "Dr.Nishanthi Udayangi" }));
        consultantbox.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        consultantbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                consultantboxActionPerformed(evt);
            }
        });

        jLabel4.setText("Consultant");
        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jLabel7.setText("Time");
        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        appnobox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel8.setText("Critical Status");
        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jButton6.setText("Clear Fields");
        jButton6.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jLabel6.setText("Doctor Fee");
        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        jLabel9.setText("Channel Fee");
        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        chanelbox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        doctorbox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        doctorbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                doctorboxActionPerformed(evt);
            }
        });

        pidbox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        pidbox.addContainerListener(new java.awt.event.ContainerAdapter() {
            public void componentAdded(java.awt.event.ContainerEvent evt) {
                pidboxComponentAdded(evt);
            }
            public void componentRemoved(java.awt.event.ContainerEvent evt) {
                pidboxComponentRemoved(evt);
            }
        });
        pidbox.addInputMethodListener(new java.awt.event.InputMethodListener() {
            public void caretPositionChanged(java.awt.event.InputMethodEvent evt) {
            }
            public void inputMethodTextChanged(java.awt.event.InputMethodEvent evt) {
                pidboxInputMethodTextChanged(evt);
            }
        });
        pidbox.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                pidboxKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                pidboxKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                pidboxKeyTyped(evt);
            }
        });

        nobox.setText("No");
        nobox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        nobox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                noboxActionPerformed(evt);
            }
        });

        jLabel3.setText("Appointment No");
        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        yesbox.setText("Yes");
        yesbox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        yesbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                yesboxActionPerformed(evt);
            }
        });

        jLabel2.setText("PID");
        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N

        datebox.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(24, 24, 24))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(10, 10, 10))
                    .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(pidbox)
                            .addComponent(datebox, javax.swing.GroupLayout.DEFAULT_SIZE, 165, Short.MAX_VALUE))
                        .addContainerGap(26, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(timebox, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(consultantbox, javax.swing.GroupLayout.Alignment.LEADING, 0, 1, Short.MAX_VALUE)
                            .addComponent(chanelbox, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(doctorbox, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(appnobox, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel3Layout.createSequentialGroup()
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(nobox, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(yesbox, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE))
                                .addGap(0, 0, Short.MAX_VALUE)))
                        .addGap(21, 21, 21))))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton6)
                .addGap(35, 35, 35))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(appnobox, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(pidbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(11, 11, 11))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(datebox, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(consultantbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(16, 16, 16)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(timebox, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(24, 24, 24)
                        .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(34, 34, 34)
                        .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(93, 93, 93)
                        .addComponent(yesbox, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(3, 3, 3)
                        .addComponent(nobox, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(doctorbox, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(23, 23, 23)
                        .addComponent(chanelbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(1, 1, 1)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton6)
                .addGap(21, 21, 21))
        );

        jButton3.setText("Generate Report");
        jButton3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton3)
                        .addGap(57, 57, 57)
                        .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel7, javax.swing.GroupLayout.DEFAULT_SIZE, 859, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel7, javax.swing.GroupLayout.DEFAULT_SIZE, 494, Short.MAX_VALUE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(31, 31, 31)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton5)
                    .addComponent(jButton4)
                    .addComponent(jButton2)
                    .addComponent(jButton1)
                    .addComponent(jButton3))
                .addGap(41, 41, 41))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, 1247, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(7, 7, 7)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        setSize(new java.awt.Dimension(1265, 794));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents


    private void searchboxMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_searchboxMouseClicked
        searchbox.setText(null);
        appnobox.setText(null);
        pidbox.setText(null);
        datebox.setDate(null);
        consultantbox.setSelectedIndex(0);
        timebox.setTime(null);
        if (yesbox.isSelected()) {
            yesbox.setSelected(false);
        } else {
            nobox.setSelected(false);
        }

        doctorbox.setText(null);
        chanelbox.setText(null);
        if (!appnobox.equals("")) {
            jButton1.setEnabled(true);
            jButton2.setEnabled(false);
            jButton4.setEnabled(false);
        }
    }//GEN-LAST:event_searchboxMouseClicked

    private void searchboxKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchboxKeyReleased

        String id = searchbox.getText();

        try {
            //validation.isValidAppointments(id);
            String sql = "SELECT appNo,pid,date,consultant,time,criticalstatus,DoctorFee,ChanelFee FROM appointment WHERE appNo LIKE '" + id + "%' OR  consultant LIKE '%" + id + "%' ";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            appointmenttable.setModel(DbUtils.resultSetToTableModel(rs));
            System.out.println("Done");

        } catch (SQLException e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_searchboxKeyReleased

    private void searchboxKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchboxKeyTyped
        appnobox.setText("");
        pidbox.setText("");
        datebox.setDate(null);
        consultantbox.setSelectedIndex(0);
        timebox.setTime(null);
        if (yesbox.isSelected()) {
            yesbox.setSelected(false);
        } else {
            nobox.setSelected(false);
        }

        doctorbox.setText(null);
        chanelbox.setText(null);
        if (!appnobox.equals("")) {
            jButton1.setEnabled(true);
            jButton2.setEnabled(false);
            jButton4.setEnabled(false);
        }
    }//GEN-LAST:event_searchboxKeyTyped

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
               int r = appointmenttable.getSelectedRow();

        String preconsultant = appointmenttable.getValueAt(r, 3).toString();

        try {
            String appno = appnobox.getText();
            String pid = pidbox.getText();
            SimpleDateFormat j = new SimpleDateFormat("MMM d, yyyy");
            String date = j.format(datebox.getDate());
            String consultant = consultantbox.getSelectedItem().toString();
            String time = timebox.getText();
            String cricstat = null;
            String dfee = doctorbox.getText();
            String chanelfee = chanelbox.getText();

            if (yesbox.isSelected()) {
                cricstat = "Yes";
            } else if (nobox.isSelected()) {
                cricstat = "No";
            }

            Statement sp = con.createStatement();
            ResultSet rsr = sp.executeQuery("SELECT Time FROM consultant WHERE Name ='" + consultant + "'");

            rsr.next();
            String abc = rsr.getString(1);
            System.out.println(abc);

            try {
                String i = "SELECT consultant FROM appointment WHERE appNo ='" + appno + "' ";
                pst = con.prepareStatement(i);
                rs = pst.executeQuery();

                appnobe.setModel(DbUtils.resultSetToTableModel(rs));
                String s = appnobe.getValueAt(0, 0).toString();
                d = s;

            } catch (SQLException ex) {
                Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                String h = "SELECT Date FROM consultant WHERE Name ='" + consultant + "' ";
                pst = con.prepareStatement(h);
                rs = pst.executeQuery();

                datex.setModel(DbUtils.resultSetToTableModel(rs));
                String t = datex.getValueAt(0, 0).toString();
                b = t;
                System.out.println(b);
            } catch (SQLException ex) {
                Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
            }

            int a1 = 0;
            if (consultantbox.getSelectedIndex() != 0) {
                try {
                    if (!consultant.equals(d)) {
                        Statement st = con.createStatement();
                        ResultSet rs1 = st.executeQuery("SELECT No_of_appointments FROM consultant WHERE Name ='" + consultant + "'");

                        rs1.next();
                        a1 = Integer.parseInt(rs1.getString(1));//Integer.parseInt(b);

                        if (!(pid.equals(""))) {
                            if (validation.isValidPid(pid) == true) {
                                if (!date.equals("")) {
                                    if (validation.correctDate(datebox.getDate()) == true) {
                                        if (date.equals(b)) {
                                            if (!consultant.equals("Select a consultant")) {
                                                if (!(a1 == 0)) {
                                                    if (!(timebox.getText().equals(""))) {
                                                        if (timebox.getText().equals(abc)) {
                                                            if ((yesbox.isSelected()) || (nobox.isSelected())) {
                                                                if (!dfee.equals("")) {
                                                                    if (validation.isValidDfee(dfee) == true) {
                                                                        if (!chanelfee.equals("")) {
                                                                            if (validation.isValidchanelfee(chanelfee) == true) {
                                                                                int x;
                                                                                x = JOptionPane.showConfirmDialog(null, "Do You Really Want To Update?");
                                                                                if (x == 0) {

                                                                                    String sql = "UPDATE appointment SET pid = '" + pid + "' , date = '" + date + "' , consultant = '" + consultant + "' , time = '" + time + "' , criticalstatus = '" + cricstat + "', DoctorFee = '" + dfee + "', ChanelFee = '" + chanelfee + "'  WHERE appNo = '" + appno + "'";

                                                                                    pst = con.prepareStatement(sql);
                                                                                    pst.execute();
                                                                                    System.out.println("Done");
                                                                                    if (preconsultant != consultant) {

                                                                                        String q1 = "UPDATE consultant SET No_of_appointments = No_of_appointments-1  WHERE Name = '" + consultant + "' ";
                                                                                        pst = con.prepareStatement(q1);
                                                                                        pst.execute();
                                                                                        System.out.println("Done");
                                                                                    }
                                                                                    String q2 = "UPDATE consultant SET No_of_appointments = No_of_appointments+1  WHERE Name = '" + preconsultant + "' ";
                                                                                    pst = con.prepareStatement(q2);
                                                                                    pst.execute();
                                                                                    System.out.println("Done");

                                                                                    tableload();
                                                                                    JOptionPane.showMessageDialog(rootPane, "Successfully Updated!");
                                                                                }
                                                                            }

                                                                        } else {
                                                                            JOptionPane.showMessageDialog(this, "Enter Chanel Fee");
                                                                        }
                                                                    } else {

                                                                    }
                                                                } else {
                                                                    JOptionPane.showMessageDialog(this, "Enter Doctor Fee");
                                                                }
                                                            } else {
                                                                JOptionPane.showMessageDialog(this, "Select a Critical Status");
                                                            }
                                                        } else {
                                                            JOptionPane.showMessageDialog(rootPane, "The Consultont Is Unavailable At This Time !");
                                                        }
                                                    } else {
                                                        JOptionPane.showMessageDialog(rootPane, "Time field cannot be empty. Select a Time!");
                                                    }
                                                } else {
                                                    JOptionPane.showMessageDialog(null, "There is no more available slots");
                                                    System.out.println("Error");

                                                }
                                            } else {
                                                JOptionPane.showMessageDialog(this, "Select a Doctor");

                                            }
                                        } else {
                                            JOptionPane.showMessageDialog(rootPane, "The Consultont Is Unavailable At This Date !");
                                        }
                                    } else {
                                        JOptionPane.showMessageDialog(rootPane, "Enter The Valid Date !");
                                    }
                                } else {
                                    JOptionPane.showMessageDialog(rootPane, "Please select a date!");

                                }

                            } else {

                            }
                        } else {
                            JOptionPane.showMessageDialog(rootPane, "PID field cannot be empty!");

                        }

                    } else if (consultant.equals(d)) {

                        if (!(pid.equals(""))) {
                            if (validation.isValidPid(pid) == true) {
                                if (!date.equals("")) {
                                    if (validation.correctDate(datebox.getDate()) == true) {
                                        if (date.equals(b)) {
                                            if (!consultant.equals("Select a consultant")) {
                                                if (!(timebox.getText().equals(""))) {
                                                    if (timebox.getText().equals(abc)) {
                                                        if ((yesbox.isSelected()) || (nobox.isSelected())) {
                                                            if (!dfee.equals("")) {
                                                                if (validation.isValidDfee(dfee) == true) {
                                                                    if (!chanelfee.equals("")) {
                                                                        if (validation.isValidchanelfee(chanelfee) == true) {
                                                                            int x = JOptionPane.showConfirmDialog(null, "Do You Really Want To Update?");
                                                                            if (x == 0) {

                                                                                String sql = "UPDATE appointment SET pid = '" + pid + "' , date = '" + date + "' , consultant = '" + consultant + "' , time = '" + time + "' , criticalstatus = '" + cricstat + "', DoctorFee = '" + dfee + "', ChanelFee = '" + chanelfee + "'  WHERE appNo = '" + appno + "'";

                                                                                pst = con.prepareStatement(sql);
                                                                                pst.execute();
                                                                                System.out.println("Done");

                                                                                tableload();
                                                                                JOptionPane.showMessageDialog(rootPane, "Successfully Updated!");
                                                                            }
                                                                        } else {

                                                                        }
                                                                    } else {
                                                                        JOptionPane.showMessageDialog(this, "Enter Chanel Fee");
                                                                    }
                                                                } else {

                                                                }
                                                            } else {
                                                                JOptionPane.showMessageDialog(this, "Enter Doctor Fee");
                                                            }
                                                        } else {
                                                            JOptionPane.showMessageDialog(this, "Select a Critical Status");
                                                        }
                                                    } else {
                                                        JOptionPane.showMessageDialog(rootPane, "The Consultont Is Unavailable At This Time !");
                                                    }
                                                } else {
                                                    JOptionPane.showMessageDialog(rootPane, "Time field cannot be empty. Select a Time!");
                                                }
                                            } else {
                                                JOptionPane.showMessageDialog(this, "Select a Doctor");

                                            }
                                        } else {
                                            JOptionPane.showMessageDialog(rootPane, "The Consultont Is Unavailable At This Date !");
                                        }
                                    } else {
                                        JOptionPane.showMessageDialog(rootPane, "Enter The Valid Date Date!");
                                    }
                                } else {
                                    JOptionPane.showMessageDialog(rootPane, "Please select a date!");

                                }

                            } else {

                            }
                        } else {
                            JOptionPane.showMessageDialog(rootPane, "PID field cannot be empty!");

                        }

                    }
                } catch (SQLException e) {
                    System.out.println(e);

                }

            }

        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }


    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        String consult = consultantbox.getSelectedItem().toString();
        String appno = appnobox.getText();
        String newpid = pidbox.getText();
        int c = Integer.parseInt(newpid);
        SimpleDateFormat j = new SimpleDateFormat("MMM d, yyyy");
        String newdate = j.format(datebox.getDate());
        String newconsult = consultantbox.getSelectedItem().toString();
        String newtime = timebox.getText();
        String newcric = null;
        if (yesbox.isSelected()) {
            newcric = "Yes";
        } else if (nobox.isSelected()) {
            newcric = "No";
        }
        String newdfee = doctorbox.getText();
        String newchfee = chanelbox.getText();

        try {
            String f = "SELECT pid FROM appointment WHERE appNo ='" + appno + "' ";
            pst = con.prepareStatement(f);
            rs = pst.executeQuery();

            jTable1.setModel(DbUtils.resultSetToTableModel(rs));
            String g = jTable1.getValueAt(0, 0).toString();
            a = Integer.parseInt(g);
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String h = "SELECT date FROM appointment WHERE appNo ='" + appno + "' ";
            pst = con.prepareStatement(h);
            rs = pst.executeQuery();

            datebe.setModel(DbUtils.resultSetToTableModel(rs));
            String t = datebe.getValueAt(0, 0).toString();
            b = t;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String i = "SELECT consultant FROM appointment WHERE appNo ='" + appno + "' ";
            pst = con.prepareStatement(i);
            rs = pst.executeQuery();

            consultantbe.setModel(DbUtils.resultSetToTableModel(rs));
            String s = consultantbe.getValueAt(0, 0).toString();
            d = s;

        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String k = "SELECT time FROM appointment WHERE appNo ='" + appno + "' ";
            pst = con.prepareStatement(k);
            rs = pst.executeQuery();

            timebe.setModel(DbUtils.resultSetToTableModel(rs));
            String l = timebe.getValueAt(0, 0).toString();
            e = l;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String m = "SELECT criticalstatus FROM appointment WHERE appNo ='" + appno + "' ";
            pst = con.prepareStatement(m);
            rs = pst.executeQuery();

            cricbe.setModel(DbUtils.resultSetToTableModel(rs));
            String n = cricbe.getValueAt(0, 0).toString();
            oldcric = n;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String o = "SELECT DoctorFee FROM appointment WHERE appNo ='" + appno + "' ";
            pst = con.prepareStatement(o);
            rs = pst.executeQuery();

            dfeebe.setModel(DbUtils.resultSetToTableModel(rs));
            String p = dfeebe.getValueAt(0, 0).toString();
            olddfee = p;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String t = "SELECT ChanelFee FROM appointment WHERE appNo ='" + appno + "' ";
            pst = con.prepareStatement(t);
            rs = pst.executeQuery();

            chfeebe.setModel(DbUtils.resultSetToTableModel(rs));
            String u = chfeebe.getValueAt(0, 0).toString();
            oldchfee = u;
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }

//        System.out.println(b);
//        System.out.println(newdate);
//        System.out.println(d);
//        System.out.println(newconsult);
//        System.out.println(e);
//        System.out.println(newtime);
//        System.out.println(oldcric);
//        System.out.println(newcric);
//        System.out.println(olddfee);
//        System.out.println(newdfee);
        if (a != c) {
            JOptionPane.showMessageDialog(null, "The PId Was Updated.Cannot Be Deleted !");
        } else if (!newdate.equals(b)) {
            JOptionPane.showMessageDialog(null, "The Date Was Updated.Cannot Be Deleted !");
        } else if (!newconsult.equals(d)) {
            JOptionPane.showMessageDialog(null, "The Consultant Was Updated.Cannot Be Deleted !");
        } else if (!newtime.equals(e)) {
            JOptionPane.showMessageDialog(null, "The Time Was Updated.Cannot Be Deleted !");
        } else if (!newcric.equals(oldcric)) {
            JOptionPane.showMessageDialog(null, "The Critical Status Was Updated.Cannot Be Deleted !");
        } else if (!newdfee.equals(olddfee)) {
            JOptionPane.showMessageDialog(null, "The Doctor Fee Was Updated.Cannot Be Deleted !");
        } else if (!newchfee.equals(oldchfee)) {
            JOptionPane.showMessageDialog(null, "The Chanel Fee Was Updated.Cannot Be Deleted !");
        } else if (newchfee.equals(oldchfee)) {

            int x = JOptionPane.showConfirmDialog(null, "Do you Really Want To Delete?");

            if (x == 0) {

                String q;
                q = "DELETE  FROM appointment WHERE appNo = '" + appno + "' ";

                try {

                    pst = con.prepareStatement(q);
                    pst.execute();
                    System.out.println("Done");

                    tableload();
                    JOptionPane.showMessageDialog(rootPane, "Successfully Deleted!");

                } catch (SQLException e) {
                    System.out.println(e);
                }

                try {
                    String q1 = "UPDATE consultant SET No_of_appointments = No_of_appointments+1  WHERE Name = '" + consult + "' ";
                    pst = con.prepareStatement(q1);
                    pst.execute();
                    System.out.println("Done");

                } catch (SQLException e) {
                    System.out.println(e);
                }
            }

        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        
        try {
            String pid = pidbox.getText();
            SimpleDateFormat j = new SimpleDateFormat("yyyy-MM-dd");
            String date = ((JTextField) datebox.getDateEditor().getUiComponent()).getText();
            String consult = consultantbox.getSelectedItem().toString();
            String time = timebox.getText();
            String cricstat = null;
            if (yesbox.isSelected()) {
                cricstat = "Yes";
            } else if (nobox.isSelected()) {
                cricstat = "No";
            }
            String dfee = doctorbox.getText();
            String chanelfee = chanelbox.getText();
            System.out.println(date);

            if (consultantbox.getSelectedIndex() != 0) {
                Statement so = con.createStatement();
                ResultSet rs0 = so.executeQuery("SELECT Time FROM consultant WHERE Name ='" + consult + "'");

                rs0.next();
                ab = rs0.getString(1);
                System.out.println(ab);
            }

            try {
                String h = "SELECT Date FROM consultant WHERE Name ='" + consult + "' ";
                pst = con.prepareStatement(h);
                rs = pst.executeQuery();

                datex.setModel(DbUtils.resultSetToTableModel(rs));
                String t = datex.getValueAt(0, 0).toString();
                b = t;
            } catch (SQLException ex) {
                Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
            }

            int a1 = 0;
            if (consultantbox.getSelectedIndex() != 0) {
                Statement st = con.createStatement();
                ResultSet rs1 = st.executeQuery("SELECT No_of_appointments FROM consultant WHERE Name ='" + consult + "'");

                rs1.next();
                a1 = Integer.parseInt(rs1.getString(1));
            }

            if (!(pid.equals(""))) {
                if (validation.isValidPid(pid) == true) {
                    if (!date.equals("")) {
                        if (validation.correctDate(datebox.getDate()) == true) {
                            if (date.equals(b)) {
                                if (!consult.equals("Select a consultant")) {
                                    if (!(a1 == 0)) {
                                        if (!(timebox.getText().equals(""))) {
                                            if (timebox.getText().equals(ab)) {
                                                if ((yesbox.isSelected()) || (nobox.isSelected())) {
                                                    if (!dfee.equals("")) {
                                                        if (validation.isValidDfee(dfee) == true) {
                                                            if (!chanelfee.equals("")) {
                                                                if (validation.isValidchanelfee(chanelfee) == true) {

                                                                    String q = "INSERT INTO appointment(pid,date,consultant,time,criticalstatus,DoctorFee,ChanelFee) VALUES ('" + pid + "', '" + date + "', '" + consult + "', '" + time + "','" + cricstat + "', '" + dfee + "', '" + chanelfee + "')";
                                                                    pst = con.prepareStatement(q);
                                                                    pst.execute();
                                                                    System.out.println("Done");

                                                                    tableload();
                                                                    JOptionPane.showMessageDialog(rootPane, "Successfully Added !");

                                                                    String w = "UPDATE consultant SET No_of_appointments = No_of_appointments-1  WHERE Name = '" + consult + "' ";
                                                                    pst = con.prepareStatement(w);
                                                                    pst.execute();
                                                                    System.out.println("Done");
                                                                } else {

                                                                }
                                                            } else {
                                                                JOptionPane.showMessageDialog(this, "Enter Chanel Fee !");
                                                            }
                                                        } else {

                                                        }
                                                    } else {
                                                        JOptionPane.showMessageDialog(this, "Enter Doctor Fee !");
                                                    }
                                                } else {
                                                    JOptionPane.showMessageDialog(this, "Select a Critical Status !");
                                                }
                                            } else {
                                                JOptionPane.showMessageDialog(rootPane, "The Consultont Is Unavailable At This Time !");
                                            }
                                        } else {
                                            JOptionPane.showMessageDialog(rootPane, "Time field cannot be empty. Select a Time !");
                                        }
                                    } else {
                                        JOptionPane.showMessageDialog(null, "There is no more available slots !");
                                        System.out.println("Error");

                                    }
                                } else {
                                    JOptionPane.showMessageDialog(this, "Select a Doctor !");

                                }
                            } else {
                                JOptionPane.showMessageDialog(rootPane, "The Consultont Is Unavailable At This Date !");
                            }
                        } else {
                            JOptionPane.showMessageDialog(rootPane, "Enter The Valid Date !");
                        }
                    } else {
                        JOptionPane.showMessageDialog(rootPane, "Please select a date !");

                    }

                } else {

                }
            } else {
                JOptionPane.showMessageDialog(rootPane, "PID field cannot be empty !");

            }
        } catch (Exception e) {

            e.printStackTrace();
        }

                                            

    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed

        new paitents().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void appointmenttableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_appointmenttableMouseClicked

        int r = appointmenttable.getSelectedRow();

        try {
            String appno = appointmenttable.getValueAt(r, 0).toString();
            String pid = appointmenttable.getValueAt(r, 1).toString();

            SimpleDateFormat j = new SimpleDateFormat("MMM d, yyyy");
            datebox.setDate(j.parse(appointmenttable.getValueAt(r, 2).toString()));

            String consultant = appointmenttable.getValueAt(r, 3).toString();
            String time = appointmenttable.getValueAt(r, 4).toString();
            String cricstat = appointmenttable.getValueAt(r, 5).toString();
            String dfee = appointmenttable.getValueAt(r, 6).toString();
            String chanelfee = appointmenttable.getValueAt(r, 7).toString();

            appnobox.setText(appno);
            pidbox.setText(pid);
            consultantbox.setSelectedItem(consultant);
            timebox.setText(time);
            doctorbox.setText(dfee);
            chanelbox.setText(chanelfee);

            if (!appno.equals("")) {
                jButton1.setEnabled(false);
                jButton2.setEnabled(true);
                jButton4.setEnabled(true);
            }

            if (cricstat.equals("Yes")) {
                yesbox.setSelected(true);
                nobox.setSelected(false);

            } else if (cricstat.equals("No")) {
                nobox.setSelected(true);
                yesbox.setSelected(false);

            }
        } catch (Exception e) {
            System.out.println(e);
        }

    }//GEN-LAST:event_appointmenttableMouseClicked

    private void consultantboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_consultantboxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_consultantboxActionPerformed

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed

        appnobox.setText(null);
        pidbox.setText(null);
        datebox.setDate(null);
        consultantbox.setSelectedIndex(0);
        timebox.setTime(null);
        if (yesbox.isSelected()) {
            yesbox.setSelected(false);
        } else {
            nobox.setSelected(false);
        }

        doctorbox.setText(null);
        chanelbox.setText(null);
        if (!appnobox.equals("")) {
            jButton1.setEnabled(true);
            jButton2.setEnabled(false);
            jButton4.setEnabled(false);
        }
    }//GEN-LAST:event_jButton6ActionPerformed

    private void doctorboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_doctorboxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_doctorboxActionPerformed

    private void noboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_noboxActionPerformed

        nobox.setSelected(true);
        yesbox.setSelected(false);
        String cricstat = "No";
    }//GEN-LAST:event_noboxActionPerformed

    private void yesboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_yesboxActionPerformed

        yesbox.setSelected(true);
        nobox.setSelected(false);
        String cricstat = "Yes";
    }//GEN-LAST:event_yesboxActionPerformed

    private void pidboxKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pidboxKeyTyped
        //jButton2.setEnabled(false);
//        if (curval == preval) {
//            jButton2.setEnabled(true);
//        } else if (curval != preval) {
//            jButton2.setEnabled(false);
//        }
    }//GEN-LAST:event_pidboxKeyTyped

    private void pidboxKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pidboxKeyReleased

        // preval = pidbox.getText();

    }//GEN-LAST:event_pidboxKeyReleased

    private void pidboxKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pidboxKeyPressed
//        preval = pidbox.getText();


    }//GEN-LAST:event_pidboxKeyPressed

    private void pidboxComponentAdded(java.awt.event.ContainerEvent evt) {//GEN-FIRST:event_pidboxComponentAdded


    }//GEN-LAST:event_pidboxComponentAdded

    private void pidboxComponentRemoved(java.awt.event.ContainerEvent evt) {//GEN-FIRST:event_pidboxComponentRemoved


    }//GEN-LAST:event_pidboxComponentRemoved

    private void pidboxInputMethodTextChanged(java.awt.event.InputMethodEvent evt) {//GEN-FIRST:event_pidboxInputMethodTextChanged

    }//GEN-LAST:event_pidboxInputMethodTextChanged

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
       
          
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
        ResultSet rs = s.executeQuery("SELECT appNo,pid,date,consultant,time,criticalstatus,DoctorFee,ChanelFee FROM appointment");
        com.itextpdf.text.Document document = new com.itextpdf.text.Document();
        PdfWriter.getInstance(document, new FileOutputStream("Appointment_Report.pdf"));
        document.open();          
        document.add(new Paragraph("Appointment Details",FontFactory.getFont(FontFactory.TIMES_BOLD,18,Font.BOLD)));
        document.add(new Paragraph("  "));
        document.add(new Paragraph(new Date().toString()));
        document.add(new Paragraph("The following report shows the appointment details in Rajapura Wedhamadura"));
        document.add(new Paragraph("____________________________________________________________________________"));
        document.add(new Paragraph("   "));
        PdfPTable table = new PdfPTable(8);
        table.setWidthPercentage(105);
        PdfPCell cell=new PdfPCell(new Paragraph("Appointment Details"));
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
        
      
 
      
 
        
    }//GEN-LAST:event_jButton3ActionPerformed

    private void searchboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchboxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_searchboxActionPerformed

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
            java.util.logging.Logger.getLogger(Appointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Appointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Appointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Appointment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Appointment().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable appnobe;
    private javax.swing.JLabel appnobox;
    private javax.swing.JTable appointmenttable;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JTextField chanelbox;
    private javax.swing.JTable chfeebe;
    private javax.swing.JTable consultantbe;
    private javax.swing.JComboBox<String> consultantbox;
    private javax.swing.JTable cricbe;
    private javax.swing.JTable datebe;
    private com.toedter.calendar.JDateChooser datebox;
    private javax.swing.JTable datex;
    private javax.swing.JScrollPane ddd;
    private javax.swing.JTable dfeebe;
    private javax.swing.JTextField doctorbox;
    private javax.swing.JTextField grabs;
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
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane10;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JScrollPane jScrollPane6;
    private javax.swing.JScrollPane jScrollPane7;
    private javax.swing.JScrollPane jScrollPane8;
    private javax.swing.JScrollPane jScrollPane9;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JRadioButton nobox;
    private javax.swing.JTextField pidbox;
    private javax.swing.JTextField searchbox;
    private javax.swing.JTable timebe;
    private com.github.lgooddatepicker.components.TimePicker timebox;
    private javax.swing.JRadioButton yesbox;
    // End of variables declaration//GEN-END:variables

    private String selectoption() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
