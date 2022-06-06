<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String data = request.getParameter("t1");
          
            
            Connection con = null;
            Statement st = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
                st = con.createStatement();
                
                String qry  = "insert into tb_1(data) values('"+data+"')";
                st.executeUpdate(qry);
                
            }catch(Exception e){
                out.print("cause:"+e);
            }
        %>
    </body>
</html>
