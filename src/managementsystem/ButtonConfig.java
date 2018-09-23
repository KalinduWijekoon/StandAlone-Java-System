/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managementsystem;

import javax.swing.JPanel;

/**
 *
 * @author KALINDU
 */
public class ButtonConfig {
    
    public static void setColor(JPanel panel){
        panel.setBackground(new java.awt.Color(0,51,51));
    }
    public static void resetColor(JPanel panel){
        panel.setBackground(new java.awt.Color(0,102,102));
    }
    public static void resetColor2(JPanel panel){
        panel.setBackground(new java.awt.Color(210,210,210));
    }
    public static void exitcolor(JPanel panel){
        panel.setBackground(new java.awt.Color(255,0,0));
    }
}
