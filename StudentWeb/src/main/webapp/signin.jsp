<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/login.js"></script>
<script src="js/jquery-3.7.1.js" type="text/javascript"></script>
<style type="text/css">
body {
	background-color: #00284d;
}
.signindiv {
	text-align: right;
/* 	background-image: url("wp4489241.jpg");
			background-repeat: no-repeat;
			background-size: auto;  */
	background-color: #00284d;
	margin-right: 100px;
	margin-top: 30px;
	
}

.textstyle {
	height: 40px;
	width: 290px;
	margin-top:20px;
	background-color: #00284d;
	border-left: none;
	border-color:white;
	color: white;
	border-right: none;
	border-top: none;	
}

h1 {
	color: white;
	margin-right: 50px;
	
}
.divelemnt {
	justify-content: center;
	background-image: url("log-in.png");
	background-repeat: no-repeat;
	background-size: 800px; 
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

</style>
</head>
<body onload="getuserid()">
<jsp:include page="header.jsp"></jsp:include>
<form id="signinForm" method="post">
<div class="signindiv">
	<div class="divelemnt">
		<div><input type="number" placeholder="Id"  id="uid" class="textstyle" readonly/></div>
		<div><input type="text" placeholder="Name"  id="uname" class="textstyle"/></div>
		<div><input type="email" placeholder="Email" id="email" class="textstyle"/></div>
		<div><input type="password" placeholder="Password" id="password" class="textstyle"/></div>
		<div><input type="password" placeholder="Confirm password" id="cnfrmpwd" class="textstyle"/></div>
		<div><input type="number" placeholder="Ph no"  id="phno" class="textstyle"/></div>
		<div><input type="number" placeholder="Age"  id="age" max="33" min="17" class="textstyle"/></div>
		<div><input type="date" placeholder="DOB"  id="dob" class="textstyle"/></div>
		<div><select class="textstyle" id="gender"><option value="Female">Female</option>
		<option value="Male">Male</option></select></div>
		<div><input type="number" placeholder="CGPA"  id="cgpa" class="textstyle"/></div>
		<div><select class="textstyle" id="course"><option value="Javascript">Javascript</option>
		<option value="Javascript">Javascript</option>
		<option value="Java">Java</option>
		<option value="C++">C++</option>
		<option value="NodeJS">NodeJS</option>
		<option value="Python">Python</option>
		</select></div>
		
		<div><input type="button" id="submit" onclick="signinpage()" value="Sign In"  class="buttonStyle1"/>
		<input type="reset" id="reset"  value="Reset"  class="buttonStyle1"/></div>	
		
	</div>
	
</div>
</form>
</body>
</html>