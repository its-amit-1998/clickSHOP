<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
        <script>
           window.close("Delete.jsp");
           window.open("Cart items.jsp");
        </script>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            
            Connection con = null;
            Statement st = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
                st = con.createStatement();

                int i = st.executeUpdate("DELETE FROM cart_details WHERE Id="+id);
            }catch(Exception e){
                out.println("cause:"+e);
            }
            response.sendRedirect("Cart items.jsp");
        %>
    </body>
</html>
