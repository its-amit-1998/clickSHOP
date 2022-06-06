<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Payment.css">
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
                 <div id="sub-container">
                <h3>Checkout Form</h3><hr>
                <div class="row">
                    <div class="col-75">
                        <div class="container1">
                            <form action="Payment_details.jsp" method="post">
                               <div class="row">
                                    <div class="col-50">
                                        <h3>Payment</h3>
                                        <label for="fname">Accepted Cards</label>
                                        <div class="icon-container">
                                            <img src="visa.svg">
                                            <img src="american-express.svg">
                                            <img src="mastercard.svg">
                                            <img src="discover.svg">
                                        </div>
                                        
                                        <label for="cname">Name on Card<span class="required">*</span></label>
                                        <input type="text" id="cname" name="cardname" placeholder="Card Holder name" required>
                                        
                                        <label for="ccnum">Credit card number<span class="required">*</span></label>
                                        <input type="password" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" maxlength="16" required>
                                        
                                        <label for="expmonth">Exp Month<span class="required">*</span></label>
                                        <select id="expmonth" name="expmonth">
                                            <option value="January">January</option>
                                            <option value="February">February</option>
                                            <option value="March">March</option>
                                            <option value="April">April</option>
                                            <option value="May">May</option>
                                            <option value="June">June</option>
                                            <option value="July">July</option>
                                            <option value="August">August</option>
                                            <option value="September">September</option>
                                            <option value="October">October</option>
                                            <option value="November">November</option>
                                            <option value="December">December</option>
                                        </select>
                                        <div class="row">
                                            <div class="col-50">
                                                <label for="expyear">Exp Year<span class="required">*</span></label>
                                                <input type="text" id="expyear" name="expyear" placeholder="2020" required>
                                            </div>
                                            <div class="col-50">
                                                <label for="cvv">CVV<span class="required">*</span></label>
                                                <input type="password" id="cvv" name="cvv" placeholder="352" maxlength="3" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <label>
                                    <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                                </label>
                                <input onclick="submit();" type="submit" value="Continue to checkout" id="contact-submit">
                            </form>
                        </div>
                    </div>
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
