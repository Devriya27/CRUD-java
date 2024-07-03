<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.7.1.js" type="text/javascript"></script>
<script type="text/javascript" src="js/login.js"></script>
<style type="text/css">

body {
	background-color: #00284d;
}
h1 {
	color: #0084ff;
}
.loginDiv {
	display: grid;
	grid-template-columns: auto auto;
	text-align: center;
	justify-content: center;
	background-color: white;
	border-radius: 5px;
	height: 70%;
	width:55%;
	margin:auto;
	margin-top:150px;
	padding:50px;
	
}

img {
	margin-left:20px;
}
.textstyle {
	height: 40px;
	width: 190px;
	margin-top:20px;
	border-radius: 5px;
	
}

.logindiv a {
	text-decoration: none;
	
}

.buttonStyle1 {
	background-color: #0084ff;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	margin-top:20px;
	margin-bottom:20px;
	margin-left: 10px;
	margin-right: 10px;
	text-decoration: none;
}


.error {
  color: red;
  margin-left: 5px;
}

label.error {
  display: inline;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	
<div class="loginDiv">
		<div><img src="login-animate.gif" height="300px" width="500px" ></div>
		<div><div><h1>User LogIn</h1></div>
		<div><input type="number" placeholder="user name"  id="uname" class="textstyle" required/></div>
		<div><input type="password" placeholder="password" id="password" class="textstyle" required></div>
		<div><input type="button" id="submit" onclick="loginpage()" value="Login"  class="buttonStyle1"/>
		<a href="signin.jsp" id="signin" class="buttonStyle1">Sign Up</a>  </div></div>
</div>

</body>
</html>