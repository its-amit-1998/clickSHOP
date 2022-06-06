<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Product Details.css">
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
                <hr id="hr-1">
                <table>
                    <tr>
                        <td id="details-of-product">
                            <div class="table-container">
                    		<h3>Details of think Straight: Change Your Thoughts, Change Your Life Paperback</h3><hr><br>
                    		<form action="Product_details.jsp" method="post">  
                                    <div id="product-image">
                            		<img src="think.jpg">
                                    </div>
                                    <div id="product-details">
                            		<table id="inner-table">
                                            <caption>Details of Book</caption>
                                            <tr>
                                                <td id="rows">Name</td>
                                    		<td id="rows">
                                                    <label for="name">Think Straight: Change Your Thoughts, Change Your Life</label>
                                                    <input type="text" name="name" value="Think Straight: Change Your Thoughts, Change Your Life" id="hidden">
                                                </td>
                                            </tr>
                                            <tr>
                                    		<td id="rows">Type</td>
                                    		<td id="rows">Book</td>
                                            </tr>
                                            <tr>
                                    		<td id="white-rows">Price</td>
                                    		<td id="white-rows">
                                                    <label for="price">&#8377; 600</label>
                                                    <input type="text" name="price" value="600" id="hidden">
                                                </td>
                                            </tr>
                                            <tr>
                                    		<td id="rows">Quantity</td>
                                    		<td id="rows">
                                                    <input type="number" name="quantity" value="1" min="1" max="5" step="1"></td>
                                            </tr>
                                            <tr>
                                                <td id="textarea" colspan="2" rows="5" cols="50" style="word-wrap: break-word; padding-bottom: 4%;">Description: I know something about you without knowing you. I bet you spend A LOT of time in your head. You know, thinking, worrying, stressing, freaking out -- call it whatever you want. I call it a preoccupied mind. And with what? 99% of your thoughts are useless. William James, once the leading psychologist in America, and one of the founders of the philosophical school of pragmatism, put it best: "A great many people think they are thinking when they are merely rearranging their prejudices."</td>
                                            </tr>
                            		</table>
                                    </div>
                                    <div style="clear: both;"></div>
                                    <a href="Cart items.jsp"><input type="submit" id="submit" value="Add to Cart"></a>
                   		</form>
                            </div>
                	</td>
               		<td>
                            <div id="ads-image">
                		<ul type="none">
                                    <li><img src="ph.jpg"></li>
                                    <li><img src="mac.jpg"></li>
                    		</ul>
                            </div>
                	</td>
                    </tr>
                </table>
            </div>
        </div>
        <footer>
            <div id="footer">
                <h2>copyright &copy; 2020</h2>
            </div>
        </footer>
    </body>
</html>
