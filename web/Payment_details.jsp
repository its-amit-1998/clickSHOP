<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
                alert("Payment has been successfully done");
        </script>
    </head>
    <body>
        <%
        String name = request.getParameter("cardname");
        String number = request.getParameter("cardnumber");
        String month = request.getParameter("expmonth");
        String year = request.getParameter("expyear");
        String cvv = request.getParameter("cvv");
        
        Connection con = null;
        Statement st = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
            st = con.createStatement();
                
            String qry  = "insert into payment_details(Name, Card_Number, Exp_month, Exp_year, CVV) values('"+name+"', '"+number+"', '"+month+"', '"+year+"', '"+cvv+"')";
            if(session.getAttribute("username") == null){
                response.sendRedirect("Login.jsp");
            }else{
                int i = st.executeUpdate(qry);
                response.sendRedirect("Order.jsp");
            }
        }catch(Exception e){
            out.print("Cause:"+e);
        }
        %>
    </body>
</html>
