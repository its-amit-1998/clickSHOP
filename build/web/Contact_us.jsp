<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String subject = request.getParameter("subject");
        
        Connection con = null;
        Statement st = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
            st = con.createStatement();
                
            String qry  = "insert into contact_details(Name, Email, Country, Message) values('"+name+"', '"+email+"', '"+country+"', '"+subject+"')";
            if(session.getAttribute("username") == null){
                response.sendRedirect("Login.jsp");
            }else{
                int i = st.executeUpdate(qry);
                response.sendRedirect("Contact us.jsp");
            }
        }catch(Exception e){
            out.print("Cause:"+e);
        }
        %>
    </body>
</html>
