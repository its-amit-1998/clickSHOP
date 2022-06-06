<!DOCTYPE html>
<html>
    <head>
        <title>clickSHOP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Signup.css">
        <link rel="icon" type="image/jpg" href="e-logo.jpg">
        <script>
            function error_2(){
		var password_1 = document.getElementById("password_1").value;
		var password_2 = document.getElementById("password_2").value;
		var username = document.getElementById("id-2").value;
		var email = document.getElementById("email").value;
		
                if (password_1==password_2){
                    alert('Your account have register\nUsername: '+username+'\nPassword: '+password_1+'\nEmail: '+email);
                    window.close("Register-process.jsp");
                    window.open("Login.jsp");
                }else{
                    alert('Password are not same, Retype the password');
                    window.close("Register-process.jsp");
                    window.open("Signup.jsp");
                }
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
                <form name="frm" action="Register-process.jsp" method="post">
                    <div class="input-group">
			<label>Username</label>
			<input class="in1" type="text" name="username" placeholder="Type your username" id="id-2" required>
                    </div>
                    <div class="input-group">
			<label>Email</label>
			<input class="in1" type="email" name="email" placeholder="email@gmail.com" id="email" required>
                    </div>
                    <div class="input-group">
			<label>Password</label>
			<input class="in1" type="password" name="password_1" placeholder="Type your password" id="password_1" required>
                    </div>
                    <div class="input-group">
			<label>Confirm password</label>
			<input class="in1" type="password" name="password_2" placeholder="Retype your password" id="password_2" required>
                    </div>
                    <div class="input-group">
                        <input onclick="error_2();" type="submit" value="Sign up" class="btn" name="register_btn">
                    </div>
                    <p>Already a member? <a href="Login.jsp" id="Signin" style="color: blue;">SIGN IN</a></p>
		</form>
            </div>
        </div>
        <footer>
            <div id="footer">
                <h2>copyright &copy; 2020</h2>
            </div>
        </footer>
    </body>
</html>
