<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            window.close();
        </script>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String pwd_1 = request.getParameter("password_1");
            String pwd_2 = request.getParameter("password_2");
            
            Connection con = null;
            Statement st = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
                st = con.createStatement();
                
                String qry  = "insert into registration_details(Username, Email, Password, Retype_password) values('"+username+"', '"+email+"', '"+pwd_1+"', '"+pwd_2+"')";
                int i = st.executeUpdate(qry);
                if(pwd_1==pwd_2){
                    out.println("Data have been successfully install");
                    response.sendRedirect("Login.jsp");
                }else{
                    response.sendRedirect("Signup.jsp");
                }
            }catch(Exception e){
                out.print("cause:"+e);
            }
        %>
    </body>
</html>
