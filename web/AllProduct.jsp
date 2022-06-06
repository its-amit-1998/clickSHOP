<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="AllProduct.css">
        <link rel="stylesheet" href="bootstrap.css">
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
            <div class="container">
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
                        <td id="head" class="part-1">
                            <h4>Choose your category</h4>
                            <hr id="hr-2">
                        </td>
                        <td id="head">
                            <h4>Online Shopping Store</h4>
                            <hr id="hr-2">
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="part-1">
                            <div class="filter">
                                <ul type="none">
                                    <a href="Pantry.jsp"><li><input type="checkbox" name="Bag">
                                    <lable for="Bag">Pantry</lable></li></a><br>
                                    <a href="Books.jsp"><li><input type="checkbox" name="Bag">
                                    <lable for="Bag">Book</lable></li></a><br>
                                    <a href="Computer.jsp"><li><input type="checkbox" name="Bag">
                                    <lable for="Bag">Computer & Accessories</lable></li></a><br>
                            </div>
                        </td>
                        <td>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details.jsp"><img src="salt.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details.jsp">Tata Salt</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 19</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 18</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-3.jsp"><img src="maggi.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details-3.jsp">Maggi</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 144</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 120</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-1.jsp"><img src="saffola.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details-1.jsp">Saffola</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 838</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 699</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-5.jsp"><img src="lapy.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details-5.jsp">HP Laptop</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 39990</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 36990</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-6.jsp"><img src="harddisk.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details-6.jsp">Lenovo HDD</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 6230</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 4860</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-7.jsp"><img src="sandisk.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details-7.jsp">Sandisk pen drive</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 379</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 271</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-10.jsp"><img src="monk.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details-10.jsp">Think like a Monk</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 388</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 300</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-12.jsp"><img src="think.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title" style="text-align: center;"><a href="Product Details-12.jsp">Think Straight</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 641</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 600</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12  single-item noPadding">
                                        <div class="top"><a href="Product Details-13.jsp"><img src="rich.jpg"></a></div>
                                        <div class="bottom">
                                            <h3 class="item-title"><a href="Product Details-13.jsp">Rich Dad and Poor Dad</a></h3>
                                            <div class="pull-right cutted-price text-muted"><del>&#8377; 310</del></div>
                                            <div class="clearfix"></div>
                                            <div class="pull-right discounted-price">&#8377; 300</div>
                                        </div>
                                    </div>
                                </div>
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
</html></div>
    </body>