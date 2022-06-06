<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>My Account</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Contact us.css">
        <script>
            function close() {
                alert("Your message has been send");
            }
        </script>
    </head>
    <body>
        <div id="body">
            <header>
                <ul type="none">
                    <%
                        if(session.getAttribute("username")==null){
                    %>
                            <a href="index.jsp"><li>Home</li></a>
                            <a href="About-us.jsp"><li>About us</li></a>
                            <a href="Contact us.jsp"><li>Contact us</li></a>
                            <a href="Login.jsp"><li>Customer Login</li></a>
                    <%
                        }else{
                    %>     
                            <li style="margin-left: 7.5%;">Welcome ${username}</li>
                            <li>|</li>
                            <form action="Logout">
                                <li><input type="submit" value="Logout" id="logout"></li>
                            </form>
                    <%
                        }
                    %>
                </ul>
                <div style="clear: both;"></div>
            </header>
            <div id="name">
                <h2>Online Shopping System</h2><br>
                <p>Free delivery, great discounts, variety of product</p>
            </div>
            <div id="container">
                <nav>
                    <ul type='none'>
                        <a href="index.jsp"><li>HOME</li></a>
                        <a href="About-us.jsp"><li>ABOUT</li></a>
                        <a href="Dashboard.jsp"><li>DASHBOARD</li></a>
                        <a href="AllProduct.jsp"><li>
                            <div class="dropdown">
                                <button class="dropbtn">SHOPPING MORE</button>
                                <div class="dropdown-content">
                                    <a href="Pantry.jsp">Pantry</a>
                                    <a href="Books.jsp">Books</a>
                                    <a href="Computer.jsp">Computer & Accessories</a>
                                </div>
                            </div>
                            </li></a>
                        <a href="Order.jsp"><li>MY ORDERS</li></a>
                        <a href="Customer Account.jsp"><li>MY ACCOUNT</li></a>
                        <a href="Contact us.jsp"><li>CONTACT US</li></a>
                    </ul>
                    <div style="clear: both;"></div>
                </nav>
                <hr>
                <div id="image-2"><img src="Slider.jpg"></div>
                <hr>
                <div id="sub-container">
                    <h3>Registration Details</h3><hr><br>
                    <%
                        Connection con = null;
                        Statement st = null;
                        ResultSet rs = null;
                                
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
                            st = con.createStatement();

                            String qry = "select * from registration_details";
                            rs = st.executeQuery(qry);
                            if(rs.next()){
                    %>
                            <form action="Update-process.jsp" method="post">
                                <input type="hidden" name="id" value="<%=rs.getString("Id") %>">
                                
                                <label for="name">Name<span class="required">*</span></label>
                                <input type="text" id="name" name="name" value="<%=rs.getString("Username") %>" required>

                                <label for="name">Email<span class="required">*</span></label>
                                <input type="email" id="name" name="email" value="<%=rs.getString("Email") %>" required>
                                
                                <label for="name">Password<span class="required">*</span></label>
                                <input type="password" id="name" name="pass_1" value="<%=rs.getString("Password") %>" required>
                                    
                                <label for="name">Confirm Password<span class="required">*</span></label>
                                <input type="password" id="name" name="pass_2" value="<%=rs.getString("Retype_password") %>" required>
                   <%
                            }
                        }catch(Exception e){
                            out.println("Cause"+e);
                        }
                    %>
                                <input type="submit" value="Updated Account" id="contact-submit">
                            </form>
                </div>
            </div>
        </div>
        <footer>
            <div id="footer">
                <h2>copyright &copy; 2020</h2>
            </div>
        </footer>
    </body>
</html>
