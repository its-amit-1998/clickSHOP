<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            window.close("Product_details.jsp");
        </script>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String price = request.getParameter("price");
            String quantity = request.getParameter("quantity");
            int p = Integer.parseInt(price);
            int q = Integer.parseInt(quantity);
            int t = p*q;
            String total = String.valueOf(t);

            Connection con = null;
            Statement st = null;
                       
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
                    st = con.createStatement();

                    String qry  = "insert into cart_details(Title, Price_Per_Unit, No_of_Items, Total) values('"+name+"', '"+price+"', '"+quantity+"', '"+total+"')";
                    if(session.getAttribute("username") == null){
                        response.sendRedirect("Login.jsp");
                    }else{
                        int i = st.executeUpdate(qry);
                        response.sendRedirect("Cart items.jsp");
                    }
                }catch(Exception e){
                    out.println("Cause"+e);
                }
        %>
    </body>
</html>
