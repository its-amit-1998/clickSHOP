package com.login.dao;

import java.sql.*;

public class LoginDao {
   Connection con = null;
   Statement st = null;
   ResultSet rs = null;
   public boolean check(String uname, String pass){
       try{
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online shopping store", "root", "");
           String sql = "select * from registration_details where Username=? and Password=?";
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1, uname);
           st.setString(2, pass);
           rs = st.executeQuery();
           if(rs.next()){
               return true;
           }
       }catch(Exception e){
           System.out.println("Cause:"+e);
       }
       return false;
   }
}
