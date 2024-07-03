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


.tab {
	margin: 0 auto;
	margin-top: 30px;
	border: thick;
	border-color: black;
}

td {
	border: thick;
	border-color: black;
	padding-right: 30px;
	padding-bottom: 10px;
}
</style>
</head>
<body class="cbody" onload="viewUserDetails()">
<jsp:include page="UserHeader.jsp"></jsp:include>
<center><h2>User Details</h2></center>
<div id="tableview">
<table class="tab" id="usertable">
</table>
</div>
</body>
</html>