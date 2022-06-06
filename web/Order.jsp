<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Cart items.css">
        <link rel="icon" type="image/jpg" href="e-logo.jpg">
        <script>
            function delete(){
                myWindow.close("Delete.jsp");
                window.open("Cart items.jsp");
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
                        <%
                            if(session.getAttribute("username")==null){
                        %>  
                            <a href="Login.jsp"><li>MY ORDERS</li></a>
                        <%
                            }else{
                        %>
                                <a href="Order.jsp"><li>MY ORDERS</li></a>
                        <%
                            }
                        %>
                                <%
                            if(session.getAttribute("username")==null){
                        %>  
                                <a href="Login.jsp"><li>MY ACCOUNT</li></a>
                        <%
                            }else{
                        %>
                                <a href="Customer Account.jsp"><li>MY ACCOUNT</li></a>
                        <%
                            }
                        %>
                        <a href="Contact us.jsp"><li>CONTACT US</li></a>
                    </ul>
                    <div style="clear: both;"></div>
                </nav>
                <hr id="hr-1">
                <div class="table-container">
                    <h3>Order Confirmation Receipt</h3><hr>
                    <div id="product-details">
                        <h4>Order details:</h4>
                        <table>
                            <form action="Product_details.java" method="get">
                                <tr>
                                    <td id="heading">Title</td>
                                    <td id="heading">Price Per Unit</td>
                                    <td id="heading">No. of Items</td>
                                    <td id="heading">Total</td>
                                </tr>
                    <%
                        Connection con = null;
                        Statement st = null;
                        ResultSet rs = null;
                        
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online shopping store", "root", "");
                            st = con.createStatement();
                        
                            String qry = "select * from cart_details";
                            rs = st.executeQuery(qry);
                         
                            while(rs.next()){
                                int i = 0;
                    %>
                                <tr>
                                    <td><%=rs.getString("Title") %></td>
                                    <td>&#8377; <%=rs.getString("Price_Per_Unit") %></td>
                                    <td><%=rs.getString("No_of_Items") %></td>
                                    <td>&#x20B9; <%=rs.getString("Total") %></td>
                                </tr>
                    <%
                                i++;
                            }
                        }catch(Exception e){
                            out.print("cause:"+e);
                        }
                        
                    %>
                   
                            </form>
                                <tr>
                    <%
                            String total = "select sum(Total) from cart_details";
                            rs  = st.executeQuery(total);
                            String sum = "";
                            
                            while (rs.next()){
                                sum = rs.getString(1);
                    %>
                                    <td colspan="3">Total Amount</td>
                                    <td>&#8377; <% out.println(sum); %></td>
                    <%
                            }
                    %> 
                                </tr>
                    </table>
                    </div>
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