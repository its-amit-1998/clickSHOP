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
        String street = request.getParameter("street");
        String house_no = request.getParameter("house no");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String pincode = request.getParameter("pincode");
        
        Connection con = null;
        Statement st = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
            st = con.createStatement();
                
            String qry  = "insert into shipping_details(Name, Street, House_No, City, State, Country, Pincode) values('"+name+"', '"+street+"', '"+house_no+"', '"+city+"', '"+state+"', '"+country+"', '"+pincode+"')";
            if(session.getAttribute("username") == null){
                response.sendRedirect("Login.jsp");
            }else{
                int i = st.executeUpdate(qry);
                response.sendRedirect("Payment.jsp");
            }
        }catch(Exception e){
            out.print("Cause:"+e);
        }
        %>
    </body>
</html>
