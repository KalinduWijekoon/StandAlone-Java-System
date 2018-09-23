/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managementsystem;

import java.awt.Component;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.swing.JOptionPane;
import java.util.regex.*;

/**
 *
 * @author KALINDU
 */
public class validation {

    private static Component rootPane;

    public static boolean isValidID(String id) {
        /*
        Validate NIC no
         */
        char c;
        if (id.charAt(9) == 'V' || id.charAt(9) == 'v') {
            for (int i = 0; i < 9; i++) {
                c = id.charAt(i);
                if (Character.isDigit(c)) {
                    return true;
                } else {
                    JOptionPane.showMessageDialog(rootPane, "Enter A Valid NIC number");
                    return false;
                }
            }
        }
        JOptionPane.showMessageDialog(rootPane, "Enter A Valid NIC number");
        return false;
    }

    public static boolean isValidName(String name) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < name.length(); i++) {
            c = name.charAt(i);
            if (!Character.isLetter(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Charactors only in Name Field");
                return false;

            }
        }
        return true;
    }

    public static boolean isValidPhoneNumber(String phoneNumber) {
        /*
        Validate Phonenumber
         */
        if (!(phoneNumber.length() == 10)) {
            JOptionPane.showMessageDialog(rootPane, "Enter 10 Digits Only For Phone Number");
            return false;
        } else {
            char c;
            for (int i = 0; i < phoneNumber.length(); i++) {
                c = phoneNumber.charAt(i);
                if (!Character.isDigit(c)) {
                    JOptionPane.showMessageDialog(rootPane, "Enter Digits Only For Phone Number");
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isValidAccNo(String accno) {

        if (!(accno.length() == 12)) {
            JOptionPane.showMessageDialog(rootPane, "Enter a correct Account number!");
            return false;
        } else {
            char c;
            for (int i = 0; i < accno.length(); i++) {
                c = accno.charAt(i);
                if (!Character.isDigit(c)) {
                    JOptionPane.showMessageDialog(rootPane, "Enter a correct Account number!");
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isValidEmail(String email) {
        /*
        Validate Email
        mihiranga1996@gmail.com
        kalindu.wijekoon@my.sliit.lk
         */
        String ePattern = "^[a-zA-Z0-9./]{1,50}@[a-zA-Z0-9./]{1,50}.[a-zA-Z]{2,3}$";
        Pattern p = Pattern.compile(ePattern);
        Matcher m = p.matcher(email);
        if (m.find() && m.group().equals(email)) {
            return true;
        } else {
            JOptionPane.showMessageDialog(rootPane, "Email Is Invalid!");
            return false;
        }

    }

    public static boolean isValidBankName(String name) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < name.length(); i++) {
            c = name.charAt(i);
            if (!Character.isLetter(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Charactors only in Bank Name Field");
                return false;

            }
        }
        return true;
    }

    public static boolean isValidAccName(String name) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < name.length(); i++) {
            c = name.charAt(i);
            if (!Character.isLetter(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Charactors only in Account type Field");
                return false;

            }
        }
        return true;
    }

    public static boolean isValidID1(String id) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < id.length(); i++) {
            c = id.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits only in id Field");
                return false;

            }
        }
        return true;
    }

    public static boolean isValidIncome(String id) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < id.length(); i++) {
            c = id.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits only in income Field");
                return false;

            }
        }
        return true;
    }

    public static boolean isValidName1(String name) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < name.length(); i++) {
            c = name.charAt(i);
            if (!(Character.isLetter(c) || Character.isSpace(c))) {

                return false;

            }
        }
        return true;
    }

    public static boolean isValidID2(String id) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < id.length(); i++) {
            c = id.charAt(i);
            if (!Character.isDigit(c)) {

                return false;

            }
        }
        return true;
    }

    public static boolean notEmptyDate(Date date) {
        if (date == null) {
            JOptionPane.showMessageDialog(rootPane, "Date field cannot be empty");
            return false;
        } else {
            return true;
        }

    }

    public static boolean notEmptyDate(Date date, Date date2) {
        if (date == null || date2 == null) {
            JOptionPane.showMessageDialog(rootPane, "Date fields cannot be empty");
            return false;
        } else {
            return true;
        }

    }

    public static boolean correctDate(Date date) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        //given date partitioning
        String dte = df.format(date);
        String dateyear;
        dateyear = dte.substring(0, 4);
        String datemonth;
        datemonth = dte.substring(5, 7);
        String datedate;
        datedate = dte.substring(8);
        //today's date partitioning
        String today = df.format(new Date());
        String todaysyear;
        todaysyear = today.substring(0, 4);
        String todaysmonth;
        todaysmonth = today.substring(5, 7);
        String todaysdate;
        todaysdate = today.substring(8);
        //converting to int
        int datetoday, monthtoday, yeartoday, dategiven, monthgiven, yeargiven;
        dategiven = Integer.parseInt(datedate);
        monthgiven = Integer.parseInt(datemonth);
        yeargiven = Integer.parseInt(dateyear);
        datetoday = Integer.parseInt(todaysdate);
        monthtoday = Integer.parseInt(todaysmonth);
        yeartoday = Integer.parseInt(todaysyear);

        return (dategiven >= datetoday && yeargiven >= yeartoday && monthgiven >= monthtoday) || (yeargiven > yeartoday && (datetoday >= dategiven || dategiven > datetoday));
    }

    public static boolean correctDate1(Date date) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        //given date partitioning
        String dte = df.format(date);
        String dateyear;
        dateyear = dte.substring(0, 4);
        String datemonth;
        datemonth = dte.substring(5, 7);
        String datedate;
        datedate = dte.substring(8);
        //today's date partitioning
        String today = df.format(new Date());
        String todaysyear;
        todaysyear = today.substring(0, 4);
        String todaysmonth;
        todaysmonth = today.substring(5, 7);
        String todaysdate;
        todaysdate = today.substring(8);
        //converting to int
        int datetoday, monthtoday, yeartoday, dategiven, monthgiven, yeargiven;
        dategiven = Integer.parseInt(datedate);
        monthgiven = Integer.parseInt(datemonth);
        yeargiven = Integer.parseInt(dateyear);
        datetoday = Integer.parseInt(todaysdate);
        monthtoday = Integer.parseInt(todaysmonth);
        yeartoday = Integer.parseInt(todaysyear);

        return (dategiven == datetoday && yeargiven == yeartoday && monthgiven == monthtoday);
    }

    //BBR new
    public static boolean isValidPcode(String pcode) {
        if (pcode.length() == 0) {
            JOptionPane.showMessageDialog(rootPane, "Post code is empty");
            return false;
        }
        return true;
    }

    public static boolean isValidSurName(String name) {
        /*
        Validate Name
         */
        if (name.length() == 0) {
            JOptionPane.showMessageDialog(rootPane, "Surname Field is Empty");
        }
        char c;
        for (int i = 0; i < name.length(); i++) {
            c = name.charAt(i);
            if (!Character.isLetter(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Charactors Only in Surname Field");
                return false;

            }

        }
        return true;
    }

    public static boolean isValidGender(String gender) {

        if (gender.equals("")) {
            JOptionPane.showMessageDialog(rootPane, "Select the Gender ");
            return false;

        }
        return true;
    }

    public static boolean isValidDept(String dep) {

        if (dep.equals("Select the Department")) {
            JOptionPane.showMessageDialog(rootPane, "Select the Department ");
            return false;

        } else {
            return true;
        }
    }

    public static boolean isValidDesig(String desig) {

        if (desig.equals("")) {
            JOptionPane.showMessageDialog(rootPane, "Enter Designation ");
            return false;

        } else {
            return true;
        }
    }

    public static boolean isValidBdate(String bday) {
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
        String Date = dateFormat.format(date);

        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        String[] units = Date.split("/");
        int a = Integer.parseInt(units[2]);

        String[] bunits = bday.split("/");
        int b = Integer.parseInt(units[2]);

        if (a < b || bday.equals("")) {
            JOptionPane.showMessageDialog(rootPane, "Invalid Bday ");
            return false;

        } else {
            return true;
        }
    }

    public static boolean isValidAllow(String allow) {
        char c;
        for (int i = 0; i < allow.length(); i++) {
            c = allow.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits Only Allowance/Decrement Fields");
                return false;
            }
        }

        return true;
    }
    //End of BBR 
    
    public static boolean isValidDfee(String dfee) {
        char c;
        for (int i = 0; i < dfee.length(); i++) {
            c = dfee.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits Only For Doctor Fee Field");
                return false;
            }
        }
        return true;
    }

    public static boolean isValidchanelfee(String chanelfee) {
        char c;
        for (int i = 0; i < chanelfee.length(); i++) {
            c = chanelfee.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits Only For Chanel Fee Field");
                return false;
            }
        }
        return true;
    }

    public static boolean isValidNoOfApp(String no) {
        char c;
        for (int i = 0; i < no.length(); i++) {
            c = no.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits Only For No Of Appointment Field");
                return false;
            }
        }
        return true;
    }
    public static boolean Timevalidation(String time) {
        if (time.equals("")) {
            JOptionPane.showMessageDialog(rootPane, "Time field cannot be empty!");
        }
        return true;
    }
    public static boolean isValidAge(String age) {
        /*
        Validate Age
         */
        char c;
        for (int i = 0; i < age.length(); i++) {
            c = age.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits only in Age Field");
                return false;

            }
        }
        return true;
    }

    public static boolean isValidAppointments(String no) {
        /*
        Validate No Of Appointments
         */
        char c;
        for (int i = 0; i < no.length(); i++) {
            c = no.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits only in No Of Appointments Field");
                return false;

            }
        }
        return true;
    }

    public static boolean isValidPid(String no) {
        /*
        Validate No Of Appointments
         */
        char c;
        for (int i = 0; i < no.length(); i++) {
            c = no.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits only in PID Field");
                return false;

            }
        }
        return true;
    }

    public static boolean Pidvalidation(String pid) {

        if (pid.equals("")) {
            JOptionPane.showMessageDialog(rootPane, "PID field cannot be empty!");
        }
        return true;
    }

    public static boolean isValidPhoneNumber1(String phone) {
        /*
        Validate Phonenumber
         */
        if (!(phone.length() == 10)) {
            JOptionPane.showMessageDialog(rootPane, "Enter 10 Digits Only For Phone Number");
            return false;
        } else if (!(phone.charAt(0) == '0')) {
            JOptionPane.showMessageDialog(rootPane, "Phone Number First Digit Must Be A 0");
            return false;
        } else if (!(phone.charAt(1) == '7')) {
            JOptionPane.showMessageDialog(rootPane, "Phone Number Second Digit Must Be A 7");
            return false;
        } else if (!(phone.charAt(2) == '0' || phone.charAt(2) == '1' || phone.charAt(2) == '2' || phone.charAt(2) == '5' || phone.charAt(2) == '6' || phone.charAt(2) == '7' || phone.charAt(2) == '8')) {
            JOptionPane.showMessageDialog(rootPane, "Phone Number Trird Digit Must Be One Of 0,1,2,5,6,7,8");
            return false;
        } else {
            char c;
            for (int i = 0; i < phone.length(); i++) {
                c = phone.charAt(i);
                if (!Character.isDigit(c)) {
                    JOptionPane.showMessageDialog(rootPane, "Enter Digits Only For Phone Number");
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isValidphn(String phone) {

        if (phone.charAt(0) != 0) {
            JOptionPane.showMessageDialog(rootPane, "Phone Number First Digit Must Be A 0");
            return false;
        } else if (phone.charAt(1) != 7) {
            JOptionPane.showMessageDialog(rootPane, "Phone Number Second Digit Must Be A 7");
            return false;
        } else if (phone.charAt(2) != 0 || phone.charAt(2) != 1 || phone.charAt(2) != 2 || phone.charAt(2) != 5 || phone.charAt(2) != 6 || phone.charAt(2) != 7 || phone.charAt(2) != 8) {
            JOptionPane.showMessageDialog(rootPane, "Phone Number Trird Digit Must Be One Of 0,1,2,5,6,7,8");
            return false;
        }
        return true;

    }
    //End of anjula
    
    public static boolean isValidno(String id) {
        /*
        Validate Name
         */
        char c;
        for (int i = 0; i < id.length(); i++) {
            c = id.charAt(i);
            if (!Character.isDigit(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Digits only");
                return false;

            }
        }
        return true;
    }

}
