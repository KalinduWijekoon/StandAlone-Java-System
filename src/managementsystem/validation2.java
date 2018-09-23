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

public class validation2 {

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
        if (name.length() == 0) {
            JOptionPane.showMessageDialog(rootPane, "Name Field is Empty");
        }
        char c;
        for (int i = 0; i < name.length(); i++) {
            c = name.charAt(i);
            if (!Character.isLetter(c)) {
                JOptionPane.showMessageDialog(rootPane, "Enter Charactors Only Name Field");
                return false;

            }

        }
        return true;
    }

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

    public static boolean isValidEmail(String email) {

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

}
