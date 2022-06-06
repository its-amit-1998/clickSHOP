<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="index.css">
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
                <h2>clickSHOP</h2><br>
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
                <div id="image-1"><img src="HP.jpg"></div>
                <hr>
                <div id="list">
                    <div id='list-1'>
                        <h4>FREE DELIVERY</h4><hr>
                        <img src="FD.jpg">
                        <h4>GREAT DISCOUNTS</h4><hr>
                        <img src="GD.jpg">
                        <h4>ONLINE PAYMENTS</h4><hr>
                        <a href="Payment.jsp"><img src="OP.jpg"></a>
                        <h4>LATEST FASHION</h4><hr>
                        <img src="LF.jpg">
                    </div>
                    <div id='list-2'>
                        <h4>ONLINE SHOPPING SYSTEM</h4><hr>
                        <div id="image-2">
                            <ul type="none">
                                <a href="#"><li><img src="sandisk.jpg"></li></a>
                                <a href="#"><li><img src="lapy.jpg"></li></a>
                                <a href="#"><li><img src="harddisk.jpg"></li></a>
                                <a href="#"><li><img src="rich.jpg"></li></a>
                                <a href="#"><li><img src="think.jpg"></li></a>
                                <a href="#"><li><img src="monk.jpg"></li></a>
                                <a href="#"><li><img src="salt.jpg"></li></a>
                                <a href="#"><li><img src="saffola.jpg"></li></a>
                            </ul>
                            <div style="clear: both;"></div>
                        </div>
                    </div>
                    <div style='clear: both;'></div>
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
