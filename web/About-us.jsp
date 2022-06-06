<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="About-us.css">
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
                <hr id="hr-1">
                <div class="sub-container">
                    <h3>Introduction of clickSHOP</h3><hr>
                    <table>
                        <tr>
                            <td>
                                <img src="mac.jpg">
                            </td>
                            <td>
                                <p>
                                    Welcome to clickSHOP, your number one source for all things product, ie: shoes, bags, groceries. 
                                    We're dedicated to giving you the very best of products, with a focus on dependability, customer service and uniqueness.
                                    <br><br>
                                    Founded in 2020 by Amit Singh, clickSHOP has come a long way from its beginnings as a solely operating e-commerce and being a company that has it branches all over India.
                                    When Amit Singh first started out, his/her passion for helping people top get access to their needs on the hand and get it delivered to the doorstep with more affordable price and discount offer.
                                    We now serve customers all over India, and are thrilled to be a part of the new generation of an e-commerce business industry.
                                    <br><br>
                                    We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don't hesitate to contact us.
                                    <br><br>
                                    Sincerely,<br>
                                    Founder of clickSHOP<br>
                                    Amit Singh
                                </p>
                            </td>
                        </tr>
                    </table>
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
