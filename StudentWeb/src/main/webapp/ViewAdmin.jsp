<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/viewuser.js"></script>
<script src="js/jquery-3.7.1.js" type="text/javascript"></script>
<style type="text/css">
body {
	background-color : #e6f3ff;
}

.usertab {
	margin-left: 10px;
	margin-right: 10px;
}
td {
	width:300px;
}
table tr:nth-child(even) {
    background-color: lightgrey;
}

table tr:nth-child(odd) {
    background-color: white;
}

tr {
	height: 40px;
	width: 100%;
}
/*
.sidemenu {	
	text-decoration: none;
	font-size: 15px;
	display: block;
	margin-top:12px;
	margin-bottom:12px;
	height: 100%;
}

.sidediv {
	position : relative;
	float: left;
	height: 100%;
	width: 300px;
}

.ulsidemenu li a{
	text-decoration: none;
	height: 100%;	
}

ul {
	list-style-type: none;
	height: 100%;
}
*/

.updatediv {
	text-align: right;
	padding-right: 490px;
	margin-top: 30px;	
}

.textstyle {
	height: 20px;
	width: 200px;
	margin-top:10px;
}

.lablestyle {
	width: 160px;
	margin-right: 170px;
}

h1 {
	color: lightgrey;
	margin-right: 50px;	
}
.divelemnt {
	justify-content: center;
}	


.buttonStyle1 {
	background-color: #0084ff;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	margin-top: 30px;
    margin-bottom: 28px;
    margin-left: -83px;
    margin-right: 123px;
	text-decoration: none;
}

</style>
</head>
<body onload="viewUser()">
<jsp:include page="UserHeader.jsp"></jsp:include>
<form id="updateForm" method="post">
<center><h3>User Details</h3></center>
<div class="updatediv">
	<div class="divelemnt">
		<div><label for="uid" class="lablestyle" >Id</label><input type="number"  id="uid" class="textstyle" readonly/></div>
		<div><label for="role" class="lablestyle" >Role</label><input type="text"  id="urole" class="textstyle" readonly/></div>
		<div><label for="uname" class="lablestyle" >Name</label><input type="text"  id="uname" class="textstyle"/></div>
		<div><label for="email" class="lablestyle" >Email</label><input type="email" id="email" class="textstyle"/></div>
		<div><label for="password" class="lablestyle" >Password</label><input type="password"  id="password" class="textstyle"/></div>
		<div><label for="phno" class="lablestyle" >Ph No</label><input type="number"   id="phno" class="textstyle"/></div>
		<div><label for="age" class="lablestyle" >Age</label><input type="number"  id="age" max="33" min="17" class="textstyle"/></div>
		<div><label for="dob" class="lablestyle" >Dob</label><input type="date"  id="dob" class="textstyle"/></div>
		<div><label for="gender" class="lablestyle" >Gender</label><select class="textstyle" id="gender"><option value="Female">Female</option>
		<option value="Male">Male</option></select></div>
		<div><label for="cgpa" class="lablestyle" >CGPA</label><input type="number"  id="cgpa" class="textstyle"/></div>
		<div><label for="course" class="lablestyle" >Course</label><select class="textstyle" id="course"><option value="Javascript">Javascript</option>
		<option value="Javascript">Javascript</option>
		<option value="Java">Java</option>
		<option value="C++">C++</option>
		<option value="NodeJS">NodeJS</option>
		<option value="Python">Python</option>
		</select></div>
		
		<div><input type="button" id="submit" onclick="updatepage()" value="Update"  class="buttonStyle1"/>
		<input type="reset" id="reset"  value="Reset"  class="buttonStyle1"/></div>	
		
	</div>
	
</div>
</form>

<div id="tableview">
	<table class="usertab" id="demo">
		<thead><tr><th>Id</th><th>Role</th><th>Name</th><th>Gender</th><th>Dob</th><th>Course</th><th>Cgpa</th><th>Password</th><th>Phno</th><th>Email</th><th>Age</th><th>Action</th></tr></thead>
	</table>
</div>
</body>
</html>