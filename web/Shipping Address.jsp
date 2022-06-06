<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Shipping Address.css">
        <link rel="icon" type="image/jpg" href="e-logo.jpg">
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
            <hr>
            <div id="image-2"><img src="Slider.jpg"></div>
            <hr>
            <table>
                <tr>
                    <td>
                        <h3>Shipping Address</h3><hr id="hr-2"><br>
                        <div id="sub-container">
                            <form action="Shipping Address_details.jsp" method="post">
                                <label for="name">Name<span class="required">*</span></label>
                                <input type="text" id="name" name="name" required>

                                <label for="name">Street<span class="required">*</span></label>
                                <input type="text" id="name" name="street" required>
                                    
                                <label for="name">House No<span class="required">*</span></label>
                                <input type="text" id="name" name="house no" required>

                                <label for="name">City<span class="required">*</span></label>
                                <input type="text" id="name" name="city" required>

                                <label for="name">State<span class="required">*</span></label>
                                <input type="text" id="name" name="state" required>

                                <label for="country">Country<span class="required">*</span></label>
                                <select id="country" name="country">
                                    <option value="India">India</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Canada">Canada</option>
                                    <option value="USA">USA</option>
                                </select>

                                <label for="name">Pin code<span class="required">*</span></label>
                                <input type="text" id="name" name="pincode" required>

                                <input type="submit" value="Proceed to Payment">
                            </form>
                        </div>
                    </td>
                </tr>
            </table>
            </div>
        <footer>
            <div id="footer">
                <h2>copyright &copy; 2020</h2>
            </div>
        </footer>
        </div>               
        
    </body>
</html>
