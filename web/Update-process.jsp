<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
        <script>
        
        </script>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String username = request.getParameter("name");
            String email = request.getParameter("email");
            String pwd_1 = request.getParameter("pass_1");
            String pwd_2 = request.getParameter("pass_2");
            
            if(id != null){
                Connection con = null;
                PreparedStatement ps = null;

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
                    String sql="Update registration_details set Id=?, Username=?, Email=?, Password=?, Retype_password=? where Id="+id;
                    ps = con.prepareStatement(sql);
                    ps.setString(1,id);
                    ps.setString(2, username);
                    ps.setString(3, email);
                    ps.setString(4, pwd_1);
                    ps.setString(5, pwd_2);
                    int i = ps.executeUpdate();
                    if(i > 0)
                    {
                        response.sendRedirect("index.jsp");
                        out.print("Record Updated Successfully");
                    }
                    else
                    {
                        response.sendRedirect("Customer Account.jsp");
                        out.print("There is a problem in updating Record.");
                    }


                }catch(Exception e){
                    out.println("cause:"+e);
                }
            }
        %>
    </body>
</html>
