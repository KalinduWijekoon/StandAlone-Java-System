/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managementsystem.employeepkg;

import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

import java.awt.Desktop;
import java.awt.Font;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;
import managementsystem.DB;
import managementsystem.employee;
import managementsystem.validation;
import net.proteanit.sql.DbUtils;
//import javax.mail.*;
//import javax.mail.internet.*;

/**
 *
 * @author BBR
 */
public class sal extends javax.swing.JFrame {

    final static String username = "rwedhamadura@gmail.com";
    final static String password = "rajapura123";
    String semail1 = "";
    //String ss= password.toString();
    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    int otHours = 0;
    int punishments = 0;
    int fullDays = 0;
    int HalfDays = 0;
    int month = 0;
    String Eid;
    int TotWorkDays = 0;
    Double pay = 0.00;
    Double Netsal;
    String TNetsal;
    Double psal = 0.00;
    Double otpay = 0.00;
    Double ot_rate = 0.00;
    String OtPayment;
    int NBT = 2 / 100;
    int EPF = 2 / 100;
    int ETF = 2 / 100;
    Double FullSal = 0.00;
    Double decrements = 0.00;
    String status;
    Double netsal = 0.00;
    Double upsal = 0.00;
    Double allow = 0.00;
    Double decsal = 0.00;
    Double Salbox = 0.00;
    Double upsallary = 0.00;
    String tot = "";
    String full = "";
    String half = "";
    String incomplete_Attend = "";
    String ot = "";
    String Spay = "";

    /**
     * Creates new form sal
     */
    public sal() {
        initComponents();
        try {
            conn = DB.mycon();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(sal.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(sal.class.getName()).log(Level.SEVERE, null, ex);
        }
        jPanel2.setVisible(false);
        jLabel27.setText(date1());
        jButton7.setEnabled(false);
        jButton4.setEnabled(false);
        jButton5.setEnabled(false);

    }

    public void clear() {
        Not_box.setText("");
        bsal_box.setText("");;
        full_box.setText("");;
        half_box.setText("");;
        id_box.setText("");;
        incompleteAtten_box.setText("");;
        month_combo.setSelectedIndex(0);
        name_box.setText("");;
        name_box7.setText("");;
        name_box8.setText("");;
        name_box9.setText("");;
        ot_box.setText("");;
        dailyRate_box.setText("");
        totWork_box.setText("");
        AllocatedSal_box.setText("");
        OtPayment_box.setText("");
        TotSal_box.setText("");
        dept_box.setText("");
        jobtitle_box.setText("");
        email_box.setText("");
        gender_box.setText("");
        status_box.setText("");
        name_box7.setText("");
        name_box8.setText("");
        name_box9.setText("");
        sallary.setText("");
    }

    //date
    public String date1() {
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String Date = dateFormat.format(date);
        return Date;
    }

    public int getMonth() {

        if (month_combo.getSelectedIndex() == 0) {
            JOptionPane.showMessageDialog(null, "Select a Month ");
        } else {
            String m = month_combo.getSelectedItem().toString();
            if (m.equals("1-January")) {
                month = 1;
            } else if (m.equals("2-February")) {
                month = 2;
            } else if (m.equals("3-March")) {
                month = 3;
            } else if (m.equals("4-April ")) {
                month = 4;
            } else if (m.equals("5-May")) {
                month = 5;
            } else if (m.equals("6-June")) {
                month = 6;
            } else if (m.equals("7-July")) {
                month = 7;
            } else if (m.equals("8-August")) {
                month = 8;
            } else if (m.equals("9-September")) {
                month = 9;
            } else if (m.equals("10-Octomber")) {
                month = 10;
            } else if (m.equals("11-November")) {
                month = 11;
            } else if (m.equals("12-December")) {
                month = 12;
            }
            return month;
        }
        return 0;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        search_box = new javax.swing.JTextField();
        name_box = new javax.swing.JLabel();
        id_box = new javax.swing.JLabel();
        bsal_box = new javax.swing.JLabel();
        ot_box = new javax.swing.JLabel();
        full_box = new javax.swing.JLabel();
        half_box = new javax.swing.JLabel();
        Not_box = new javax.swing.JLabel();
        name_box7 = new javax.swing.JLabel();
        name_box8 = new javax.swing.JLabel();
        name_box9 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel11 = new javax.swing.JLabel();
        month_combo = new javax.swing.JComboBox<>();
        jLabel13 = new javax.swing.JLabel();
        incompleteAtten_box = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel14 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jLabel27 = new javax.swing.JLabel();
        totWork_box = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        a = new javax.swing.JLabel();
        dailyRate_box = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        AllocatedSal_box = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        OtPayment_box = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        TotSal_box = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        sallary = new javax.swing.JLabel();
        status_box = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        dept_box = new javax.swing.JLabel();
        jobtitle_box = new javax.swing.JLabel();
        email_box = new javax.swing.JLabel();
        gender_box = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        allowbox = new javax.swing.JTextField();
        jLabel25 = new javax.swing.JLabel();
        jLabel26 = new javax.swing.JLabel();
        decbox = new javax.swing.JTextField();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jRadioButton1 = new javax.swing.JRadioButton();
        jButton5 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();

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
        setResizable(false);

        jLabel1.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel1.setText("Employee No :");

        jLabel2.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel2.setText("Name :");

        jLabel3.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel3.setText("ID :");

        jLabel4.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel4.setText("Basic Sallary (Rs):");

        jLabel5.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel5.setText("OT rate :");

        jLabel6.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel6.setText("Working Full Days :");

        jLabel7.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel7.setText("OT Hours :");

        jLabel8.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel8.setText("Half Days :");

        jLabel9.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel9.setText("NBT :");

        jLabel10.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel10.setText("EPF :");

        jLabel12.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel12.setText("ETF :");

        search_box.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        search_box.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                search_boxKeyReleased(evt);
            }
        });

        name_box.setBackground(new java.awt.Color(255, 255, 255));
        name_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        name_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        id_box.setBackground(new java.awt.Color(255, 255, 255));
        id_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        id_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        bsal_box.setBackground(new java.awt.Color(255, 255, 255));
        bsal_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        bsal_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        ot_box.setBackground(new java.awt.Color(255, 255, 255));
        ot_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        ot_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        full_box.setBackground(new java.awt.Color(255, 255, 255));
        full_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        full_box.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        half_box.setBackground(new java.awt.Color(255, 255, 255));
        half_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        half_box.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        Not_box.setBackground(new java.awt.Color(255, 255, 255));
        Not_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        Not_box.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        name_box7.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        name_box7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        name_box8.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        name_box8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        name_box9.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        name_box9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        jButton1.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jButton1.setText("Calculate");
        jButton1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jButton1MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jButton1MouseExited(evt);
            }
        });
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel11.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel11.setText("Month :");

        month_combo.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        month_combo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select Month", "1-January", "2-February", "3-March", "4-April ", "5-May", "6-June", "7-July", "8-August", "9-September", "10-Octomber", "11-November", "12-December", " " }));
        month_combo.setBorder(null);
        month_combo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                month_comboActionPerformed(evt);
            }
        });

        jLabel13.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel13.setText("Incomplete Attendence :");

        incompleteAtten_box.setBackground(new java.awt.Color(255, 255, 255));
        incompleteAtten_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        incompleteAtten_box.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        jPanel1.setBackground(new java.awt.Color(0, 102, 102));
        jPanel1.setPreferredSize(new java.awt.Dimension(943, 86));

        jLabel14.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(255, 255, 255));
        jLabel14.setText("Manage Salary");

        jButton2.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jButton2.setText("Home");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel27.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel27.setForeground(new java.awt.Color(255, 255, 255));
        jLabel27.setText("date");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(jLabel14)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel27, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(102, 102, 102)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 177, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(37, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel27, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(20, 20, 20))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(33, 33, 33)
                .addComponent(jLabel14)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        totWork_box.setBackground(new java.awt.Color(255, 255, 255));
        totWork_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        totWork_box.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        jLabel15.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel15.setText("Total Worked Days :");

        a.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        a.setText("Daily Rate :");

        dailyRate_box.setBackground(new java.awt.Color(255, 255, 255));
        dailyRate_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        dailyRate_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        jLabel16.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel16.setText("Allocated Salary :");

        AllocatedSal_box.setBackground(new java.awt.Color(255, 255, 255));
        AllocatedSal_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        AllocatedSal_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        jLabel17.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel17.setText("OT payment :");

        OtPayment_box.setBackground(new java.awt.Color(255, 255, 255));
        OtPayment_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        OtPayment_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        jLabel18.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel18.setText("Total Sallary :");

        TotSal_box.setBackground(new java.awt.Color(255, 255, 255));
        TotSal_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        TotSal_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        jLabel19.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel19.setText("salary + OT");

        sallary.setBackground(new java.awt.Color(255, 255, 255));
        sallary.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        sallary.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        status_box.setBackground(new java.awt.Color(255, 255, 255));
        status_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        status_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        jLabel20.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel20.setText("Department :");

        jLabel21.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel21.setText("Job Title :");

        jLabel22.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel22.setText("Email :");

        jLabel23.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel23.setText("Gender :");

        jLabel24.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel24.setText("Status :");

        dept_box.setBackground(new java.awt.Color(255, 255, 255));
        dept_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        dept_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        jobtitle_box.setBackground(new java.awt.Color(255, 255, 255));
        jobtitle_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        jobtitle_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        email_box.setBackground(new java.awt.Color(255, 255, 255));
        email_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        email_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        gender_box.setBackground(new java.awt.Color(255, 255, 255));
        gender_box.setFont(new java.awt.Font("Calibri Light", 1, 24)); // NOI18N
        gender_box.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);

        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        allowbox.setFont(new java.awt.Font("Calibri Light", 0, 18)); // NOI18N
        allowbox.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        allowbox.setText("0");
        allowbox.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel25.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel25.setText("Allowances :");

        jLabel26.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jLabel26.setText("Decrements :");

        decbox.setFont(new java.awt.Font("Calibri Light", 0, 18)); // NOI18N
        decbox.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        decbox.setText("0");
        decbox.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jButton3.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jButton3.setText("Calculate Updated Sallary");
        jButton3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jButton3MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jButton3MouseExited(evt);
            }
        });
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel25)
                            .addComponent(jLabel26))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(decbox)
                            .addComponent(allowbox))))
                .addGap(19, 19, 19))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(allowbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel25))
                .addGap(29, 29, 29)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(decbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel26))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 26, Short.MAX_VALUE)
                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jButton4.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jButton4.setText("Update to DB");
        jButton4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jButton4MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jButton4MouseExited(evt);
            }
        });
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jRadioButton1.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jRadioButton1.setText("Allowances / Decrements");
        jRadioButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButton1ActionPerformed(evt);
            }
        });

        jButton5.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jButton5.setText("Print Sallary Report");
        jButton5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jButton5MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jButton5MouseExited(evt);
            }
        });
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jButton7.setFont(new java.awt.Font("Calibri Light", 0, 24)); // NOI18N
        jButton7.setText("Inform Employee by E- mail");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1440, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(57, 57, 57)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel4)
                                    .addComponent(jLabel3)
                                    .addComponent(jLabel20)
                                    .addComponent(jLabel5)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(jLabel23)
                                                .addComponent(jLabel24))
                                            .addGap(39, 39, 39))
                                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(jLabel21)
                                                .addComponent(jLabel22))
                                            .addGap(34, 34, 34))))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(status_box, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(gender_box, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(name_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(id_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(bsal_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(ot_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(email_box, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jobtitle_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(dept_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(44, 44, 44)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addGroup(layout.createSequentialGroup()
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(jLabel10)
                                                .addComponent(jLabel12)
                                                .addComponent(jLabel9))
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 174, Short.MAX_VALUE)
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(name_box8, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addComponent(name_box9, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addComponent(name_box7, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel6)
                                            .addGap(39, 39, 39)
                                            .addComponent(full_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                        .addGroup(layout.createSequentialGroup()
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(jLabel7)
                                                .addComponent(jLabel15)
                                                .addComponent(jLabel8))
                                            .addGap(32, 32, 32)
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                .addComponent(half_box, javax.swing.GroupLayout.DEFAULT_SIZE, 188, Short.MAX_VALUE)
                                                .addComponent(totWork_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                .addComponent(Not_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel13)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(incompleteAtten_box, javax.swing.GroupLayout.PREFERRED_SIZE, 174, javax.swing.GroupLayout.PREFERRED_SIZE))))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(search_box, javax.swing.GroupLayout.PREFERRED_SIZE, 263, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel11)
                                .addGap(214, 214, 214)))
                        .addGap(18, 50, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 327, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(52, 52, 52)
                        .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 303, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(41, 41, 41)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jLabel18, javax.swing.GroupLayout.PREFERRED_SIZE, 145, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(TotSal_box, javax.swing.GroupLayout.PREFERRED_SIZE, 169, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jRadioButton1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel16)
                            .addComponent(jLabel17)
                            .addComponent(jLabel19)
                            .addComponent(a))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(dailyRate_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(AllocatedSal_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(OtPayment_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(sallary, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jButton4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(108, 108, 108))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(month_combo, javax.swing.GroupLayout.PREFERRED_SIZE, 450, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(36, 36, 36)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(61, 61, 61))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 98, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(month_combo, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1)
                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(search_box, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(59, 59, 59)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel6)
                            .addComponent(full_box, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(half_box, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel8))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel15)
                            .addComponent(totWork_box, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel7)
                            .addComponent(Not_box, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(jLabel13)
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(name_box8, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel9)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel10)
                                .addGap(25, 25, 25)
                                .addComponent(jLabel12))))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(name_box, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(11, 11, 11)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel3)
                                    .addComponent(id_box, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(bsal_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(ot_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel20, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(dept_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel21, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jobtitle_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel22, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(email_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel23, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(gender_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel24, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(status_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(a)
                                            .addComponent(dailyRate_box, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel2))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel16)
                                            .addComponent(AllocatedSal_box, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel17)
                                            .addComponent(OtPayment_box, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel19)
                                            .addComponent(sallary, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(18, 18, 18)
                                        .addComponent(jRadioButton1)
                                        .addGap(18, 18, 18))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addComponent(incompleteAtten_box, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(27, 27, 27)))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(name_box7, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(name_box9, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(33, 33, 33)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel18, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(TotSal_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 48, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        int min = 0;
        int max = 0;
        int pun = 0;
        TotWorkDays = 0;
        Netsal = 0.00;
        pay = 0.00;
        psal = 0.00;
        ot_rate = 0.00;
        FullSal = 0.00;
        decrements = 0.00;
        tot = "";
        full = "";
        half = "";
        incomplete_Attend = "";
        ot = "";
        Spay = "";
        otHours = 0;
        punishments = 0;
        fullDays = 0;
        HalfDays = 0;

        Eid = id_box.getText();

        int Cmonth = (getMonth());

        //SUM of OT Hours
        if ((Eid.equals(""))) {
            JOptionPane.showMessageDialog(null, "Select ID to Calculate Sallary");
        } else {
            name_box7.setText("0.02 %");
            name_box8.setText("0.02 %");
            name_box9.setText("0.02 %");
            jButton4.setEnabled(true);
            jButton5.setEnabled(true);

            try {
                String sql = "SELECT SUM(`OThours`) FROM `eat" + Eid + "` WHERE `month`=('" + Cmonth + "')";
                pst = conn.prepareStatement(sql);
                rs = pst.executeQuery();
                jTable1.setModel(DbUtils.resultSetToTableModel(rs));
                String not = jTable1.getValueAt(0, 0).toString();
                System.out.println("not" + not);
                otHours = Integer.parseInt(not);
            } catch (Exception e) {
                System.out.println(e);
            }

            //Count null || punuishments
            try {
                String sql = "SELECT COUNT(count) FROM `eat" + Eid + "` WHERE `out` IS NULL AND `month`=('" + Cmonth + "')";
                pst = conn.prepareStatement(sql);
                rs = pst.executeQuery();

                jTable1.setModel(DbUtils.resultSetToTableModel(rs));
                String z = jTable1.getValueAt(0, 0).toString();

                punishments = Integer.parseInt(z);
                System.out.println("punishments" + punishments);
            } catch (Exception e) {
                System.out.println(e);

            }

            //Count full days
            try {
                String sql = "SELECT COUNT(`status`) FROM `eat" + Eid + "` WHERE `status`='Full Day' AND `month`=('" + Cmonth + "')";
                pst = conn.prepareStatement(sql);
                rs = pst.executeQuery();
                jTable1.setModel(DbUtils.resultSetToTableModel(rs));
                String nfull = jTable1.getValueAt(0, 0).toString();
                System.out.println("Full days" + nfull);
                fullDays = Integer.parseInt(nfull);
            } catch (Exception e) {
                System.out.println(e);

            }
            //Count Half days
            try {
                String sql = "SELECT COUNT(`status`) FROM `eat" + Eid + "` WHERE `status`='Half Day'";
                pst = conn.prepareStatement(sql);
                rs = pst.executeQuery();
                jTable1.setModel(DbUtils.resultSetToTableModel(rs));
                String nHalf = jTable1.getValueAt(0, 0).toString();
                System.out.println("Half days" + nHalf);
                HalfDays = Integer.parseInt(nHalf);
            } catch (Exception e) {
                System.out.println(e);

            }

            TotWorkDays = fullDays + HalfDays / 2;

            tot = String.valueOf(TotWorkDays);
            full = String.valueOf(fullDays);
            half = String.valueOf(HalfDays);
            incomplete_Attend = String.valueOf(punishments);
            ot = String.valueOf(otHours);

            System.out.println("fullDays:" + fullDays);
            full_box.setText(full);
            System.out.println("HalfDays:" + HalfDays);
            half_box.setText(half);
            System.out.println("Punishment:" + punishments);
            incompleteAtten_box.setText(incomplete_Attend);
            System.out.println("OT hours:" + otHours);
            Not_box.setText(ot);

            totWork_box.setText(tot);
            // Decimal values 2f

            DecimalFormat decfor = new DecimalFormat("0.00");

            //Salary Check
            String sal = bsal_box.getText();
            psal = Double.parseDouble(sal);
            pay = (psal / 26);
            String aaf = String.valueOf(pay);
            Double aad = Double.parseDouble(aaf);
            Spay = String.valueOf(pay);
            dailyRate_box.setText(Spay);
            dailyRate_box.setText(decfor.format(aad));

            if (TotWorkDays > 26) {
                Netsal = psal;
                System.out.println(Netsal);

            } else {
                Netsal = pay * TotWorkDays;
                System.out.println(Netsal);

            }
            String TNetsal = String.valueOf(Netsal);
            Double allocatedasl = Double.parseDouble(TNetsal);
            AllocatedSal_box.setText(decfor.format(allocatedasl));

            //Ot payment value
            ot_rate = Double.parseDouble(ot_box.getText());
            System.out.println("ot_rate:" + ot_rate);

            otpay = ot_rate * otHours;
            OtPayment = String.valueOf(otpay);
            Double OtPaymentval = Double.parseDouble(OtPayment);
            OtPayment_box.setText(decfor.format(OtPaymentval));

            //sal+ot box value
            FullSal = (otpay + Netsal);
            System.out.println(FullSal);
            String fsal = String.valueOf(FullSal);
            Double dec = (FullSal * 6) / 100;
            System.out.println(dec);

            Double NetTotal = FullSal - dec;
            System.out.println(NetTotal);
            sallary.setText(decfor.format(FullSal));
            FullSal = otpay + Netsal - (decrements);
            String TfullSal = String.valueOf(NetTotal);

            TotSal_box.setText(decfor.format(NetTotal));

            // incompleteAtten_box enabling
            if (punishments > 0) {
                jButton7.setEnabled(true);
            } else {
                jButton7.setEnabled(false);

            }
        }

    }//GEN-LAST:event_jButton1ActionPerformed

    private void search_boxKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_search_boxKeyReleased

        // TODO add your handling code here:
        String id = search_box.getText();
        String b = "";
        if (!id.equals(b)) {
            try {
                String sql = "Select id,first_name,salary,ot_rate,Department,job_title,Email,gender,Status from staff_information where id=('" + id + "')";
                pst = conn.prepareStatement(sql);
                rs = pst.executeQuery();
                jTable1.setModel(DbUtils.resultSetToTableModel(rs));;
                String i = jTable1.getValueAt(0, 0).toString();
                String name = jTable1.getValueAt(0, 1).toString();
                String sal = jTable1.getValueAt(0, 2).toString();
                String ot = jTable1.getValueAt(0, 3).toString();
                String dept = jTable1.getValueAt(0, 4).toString();
                String jtitle = jTable1.getValueAt(0, 5).toString();
                String mail = jTable1.getValueAt(0, 6).toString();
                String gender = jTable1.getValueAt(0, 7).toString();
                String status = jTable1.getValueAt(0, 8).toString();

                id_box.setText(i);
                name_box.setText(name);
                bsal_box.setText(sal);
                ot_box.setText(ot);
                dept_box.setText(dept);
                jobtitle_box.setText(jtitle);
                email_box.setText(mail);
                gender_box.setText(gender);
                status_box.setText(status);

            } catch (Exception e) {
            }
        } else {
            clear();
            jButton5.setEnabled(false);
            jButton4.setEnabled(false);
            jButton7.setEnabled(false);

        }

    }//GEN-LAST:event_search_boxKeyReleased

    private void month_comboActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_month_comboActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_month_comboActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        new employee().setVisible(true);
        this.dispose();

    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed

        // TODO add your handling code here:
        DecimalFormat decfor = new DecimalFormat("0.00");

        String a = allowbox.getText();
        String b = decbox.getText();
        if ((validation.isValidAllow(a)) && (validation.isValidAllow(b))) {
            allow = Double.parseDouble(a);
            decsal = Double.parseDouble(b);

            String c = TotSal_box.getText();
            Salbox = Double.parseDouble(c);
            upsallary = (Salbox + allow) - decsal;
            String up = String.valueOf(upsal);

            TotSal_box.setText(decfor.format(upsallary));
            System.out.println("allow" + allow);
            System.out.println("dec" + decsal);
            System.out.println("netsal" + Salbox);
            System.out.println("upsal" + upsallary);
        }
        allowbox.setText("0");
        decbox.setText("0");


    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
        String Esal = "";
        int Cmonth = getMonth();
        Eid = id_box.getText();
        String sal = TotSal_box.getText();

        //check if inseted
        try {
            String sql = "SELECT `sallary` FROM `esal` WHERE `month`=('" + Cmonth + "') AND `eid`=('" + Eid + "')";
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            System.out.println(sql);

            jTable1.setModel(DbUtils.resultSetToTableModel(rs));
            Esal = jTable1.getValueAt(0, 0).toString();

        } catch (Exception e) {
            System.out.println(e);
        }

        //
        if (sal.equals("") || (Eid.equals(""))) {
            JOptionPane.showMessageDialog(null, "No Proper Data !");
        } else {
            int x = JOptionPane.showConfirmDialog(rootPane, "Do you want to Save Sallary Info?");
            if (x == 0) {
                System.out.println("Cmonth :" + Cmonth);
                System.out.println("Eid :" + Eid);
                System.out.println("sal :" + sal);
                if (Esal.equals("")) {
                    try {
                        String sql = "INSERT INTO `esal`(`eid`, `month`, `sallary`) VALUES (('" + Eid + "'),('" + Cmonth + "'),('" + sal + "'))";
                        pst = conn.prepareStatement(sql);
                        pst.execute();
                        System.out.println(sql);
                        JOptionPane.showMessageDialog(rootPane, "Successfully Added to DataBase");
                        clear();

                    } catch (Exception e) {
                        System.out.println(e);
                        JOptionPane.showMessageDialog(rootPane, "Error");

                    }
                } else {
                    try {
                        String sql = "UPDATE `esal` SET `sallary`=('" + sal + "') WHERE `month`=('" + Cmonth + "') AND`eid`=('" + Eid + "')";
                        pst = conn.prepareStatement(sql);
                        pst.execute();
                        System.out.println(sql);
                        JOptionPane.showMessageDialog(rootPane, "Successfully Added to DataBase");
                        clear();
                    } catch (Exception e) {
                        System.out.println(e);
                        JOptionPane.showMessageDialog(rootPane, "Error");

                    }

                }
            }
        }
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jRadioButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButton1ActionPerformed
        // TODO add your handling code here:
        if (jRadioButton1.isSelected()) {
            jPanel2.setVisible(true);
        } else {
            jPanel2.setVisible(false);
        }
    }//GEN-LAST:event_jRadioButton1ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        String name = name_box.getText();
        String id = id_box.getText();
        String dep = dept_box.getText();
        String full = full_box.getText();
        String half = half_box.getText();
        String ot = Not_box.getText();
        int Cmonth = getMonth();
        String month = String.valueOf(Cmonth);
        String sallary = TotSal_box.getText();;

        try {

            com.itextpdf.text.Document document = new com.itextpdf.text.Document();
            PdfWriter.getInstance(document, new FileOutputStream("Employee" + id + "_Report.pdf"));
            document.open();
            document.add(new Paragraph("Sallary Report of " + name + " 2018 -" + month + "", FontFactory.getFont(FontFactory.TIMES_BOLD, 18, Font.BOLD)));
            document.add(new Paragraph("  "));
            document.add(new Paragraph(new Date().toString()));
            document.add(new Paragraph("Sallary Report of Employee :" + name + " in Rajapura Wedhamadura"));
            document.add(new Paragraph("____________________________________________________________________________"));
            document.add(new Paragraph("____________________________________________________________________________"));
            document.add(new Paragraph("Employee Name:                 " + name));
            document.add(new Paragraph("Employee id:                   " + id));
            document.add(new Paragraph("Department:                    " + dep));
            document.add(new Paragraph("-----------------------------------------------------------------------------"));
            document.add(new Paragraph("Sallary Month:                    " + month));
            document.add(new Paragraph("No of Full Days Worked:           " + full));
            document.add(new Paragraph("No of Half Days Worked:           " + half));
            document.add(new Paragraph("No of OT hours Worked:            " + ot));
            document.add(new Paragraph("------------------------------------------------------------------------------"));
            document.add(new Paragraph("Net Sallary:                 " + sallary));
            document.add(new Paragraph("____________________________________________________________________________"));
            document.add(new Paragraph("____________________________________________________________________________"));

            Image image = Image.getInstance("raja_1.png");
            document.add(image);
            document.close();
            int x = JOptionPane.showConfirmDialog(rootPane, "Report Saved. Do you want to open?");
            if (x == 0) {
                try {

                    Desktop.getDesktop().open(new File("C:/Users/KALINDU/Documents/NetBeansProjects/ManagementSystem/Employee" + id + "_Report.pdf"));

                } catch (Exception e) {
                    e.printStackTrace();
                    JOptionPane.showMessageDialog(null, "Error!");
                }

            } else if (x == 1) {
                JOptionPane.showMessageDialog(null, "Report Saved to HDD!");
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error!");
            e.printStackTrace();
        }

    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton5MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton5MouseEntered
        jButton5.setBackground(new java.awt.Color(0, 0, 0));
        jButton5.setForeground(new java.awt.Color(255, 255, 255));
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton5MouseEntered

    private void jButton5MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton5MouseExited
        jButton5.setBackground(new java.awt.Color(255, 255, 255));
        jButton5.setForeground(new java.awt.Color(0, 0, 0));
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton5MouseExited

    private void jButton4MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton4MouseEntered
        jButton4.setBackground(new java.awt.Color(0, 0, 0));
        jButton4.setForeground(new java.awt.Color(255, 255, 255));
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton4MouseEntered

    private void jButton4MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton4MouseExited
        // TODO add your handling code here:
        jButton4.setBackground(new java.awt.Color(255, 255, 255));
        jButton4.setForeground(new java.awt.Color(0, 0, 0));

    }//GEN-LAST:event_jButton4MouseExited

    private void jButton3MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton3MouseEntered
        jButton3.setBackground(new java.awt.Color(0, 0, 0));
        jButton3.setForeground(new java.awt.Color(255, 255, 255));

        // TODO add your handling code here:
    }//GEN-LAST:event_jButton3MouseEntered

    private void jButton3MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton3MouseExited
        jButton3.setBackground(new java.awt.Color(255, 255, 255));
        jButton3.setForeground(new java.awt.Color(0, 0, 0));
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton3MouseExited

    private void jButton1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton1MouseEntered
        jButton1.setBackground(new java.awt.Color(0, 0, 0));
        jButton1.setForeground(new java.awt.Color(255, 255, 255));
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1MouseEntered

    private void jButton1MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton1MouseExited
        jButton1.setBackground(new java.awt.Color(255, 255, 255));
        jButton1.setForeground(new java.awt.Color(0, 0, 0));
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1MouseExited

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        // TODO add your handling code here:
        String name = name_box.getText();
        String id = id_box.getText();
        String dep = dept_box.getText();
        String inc = incompleteAtten_box.getText();

        try {
            String sql = "SELECT  `Email` FROM `staff_information` WHERE `id`=('" + id + "')";
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            jTable1.setModel(DbUtils.resultSetToTableModel(rs));
            semail1 = jTable1.getValueAt(0, 0).toString();

        } catch (Exception e) {
            System.out.println(e);
        }

        int x = JOptionPane.showConfirmDialog(rootPane, "Do you want Send the mail?");
        if (x == 0) {
            try {
                Connection c = DB.mycon();
                final String username = "rwedhamadura@gmail.com";
                final String password = "rajapura123";

                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");

                Session session = null;
                session = session.getInstance(props, new javax.mail.Authenticator() {

                    protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                        return new javax.mail.PasswordAuthentication(username, password);
                    }
                });

                try {
                    javax.mail.Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress("rwedhamadura@gmail.com"));
                    message.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(semail1));
                    message.setSubject("Regarding Incomplete Attendence");
                    message.setContent("<body>This message is informing of your Incomplete Attendence "
                            + "<br><br>"
                            + ""
                            + ""
                            + "Employee ID:" + id
                            + "<br>Employee Name: " + name
                            + "<br> Department: " + dep
                            + "<br> No of Incomplete Attendence: " + inc
                            + ""
                            + "<br><br>"
                            + "Please meet HR manager of Rajapura Wedamadura and discuss this matter<br><br>"
                            + "<br><br>"
                            + "Thank you! "
                            + "<br>Rajapura Wedhamadura</body>", "text/html");

                    Transport.send(message);
                    System.out.println("Email sent");

                } catch (MessagingException e) {
                    throw new RuntimeException(e);
                }

                JOptionPane.showMessageDialog(rootPane, " Email has ben sent!");

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (x == 1) {
        }


    }//GEN-LAST:event_jButton7ActionPerformed

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
            java.util.logging.Logger.getLogger(sal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(sal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(sal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(sal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new sal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel AllocatedSal_box;
    private javax.swing.JLabel Not_box;
    private javax.swing.JLabel OtPayment_box;
    private javax.swing.JLabel TotSal_box;
    private javax.swing.JLabel a;
    private javax.swing.JTextField allowbox;
    private javax.swing.JLabel bsal_box;
    private javax.swing.JLabel dailyRate_box;
    private javax.swing.JTextField decbox;
    private javax.swing.JLabel dept_box;
    private javax.swing.JLabel email_box;
    private javax.swing.JLabel full_box;
    private javax.swing.JLabel gender_box;
    private javax.swing.JLabel half_box;
    private javax.swing.JLabel id_box;
    private javax.swing.JLabel incompleteAtten_box;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton7;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JRadioButton jRadioButton1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JLabel jobtitle_box;
    private javax.swing.JComboBox<String> month_combo;
    private javax.swing.JLabel name_box;
    private javax.swing.JLabel name_box7;
    private javax.swing.JLabel name_box8;
    private javax.swing.JLabel name_box9;
    private javax.swing.JLabel ot_box;
    private javax.swing.JLabel sallary;
    private javax.swing.JTextField search_box;
    private javax.swing.JLabel status_box;
    private javax.swing.JLabel totWork_box;
    // End of variables declaration//GEN-END:variables
}
