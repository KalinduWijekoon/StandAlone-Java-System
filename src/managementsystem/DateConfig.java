/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managementsystem;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author KALINDU
 */
public class DateConfig {
    public static String datepick(Date date){
       SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String ff = df.format(date);
        return ff;
    }
    
 

}
