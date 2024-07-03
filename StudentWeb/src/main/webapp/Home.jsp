<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #00284d;
}

hr {
	float: left;
	border: 1px solid red;
	width : 50px;
	margin-top: 0px;
}

h6
{
	margin-top: 0px;
}

header a {
	text-decoration: none;
	color: white;
	padding: 10px 30px 10px 20px;
}

.headClass {
	color: white;
	display: flex;
}

.buttonStyle1 {
	background-color: #0084ff;
	color: white;
	padding: 10px 10px;
	border: none;
	border-radius: 2px;
	
}

.button1 {
	background-color: #0084ff;
	color: white;
	padding: 5px 10px;
	border: none;
	border-radius: 2px;
}

.buttonStyle2 {
	background-color: Black;
	color: #0084ff;
	border-color: #0084ff;
	padding: 10px 15px;
	border-radius: 2px;
}

.boxClass {
	float: center;
	padding: 20px;
	display: flex;
	padding-top: 100px;
	justify-content: center;
}

.boxClass div {
	float: left;
	margin:10px 20px 30px 40px;
	border: 1px solid white;
	background-color: white;
	padding-left:20px;
	padding-top:10px;
	width: 200px;
	height: 200px;
	
	}
	
	.textclass
	{
	text-align: center;
	padding-top: 50px;
	}

.brand {
	margin-left: 100px;
	padding-top: 0px;
	
}

.atag {
	padding-top: 20px;
	margin-left: 50px;
}


.log {
	margin-left: 450px;
	padding-top:20px;
}

.boxClass div i
{ 
font-size: 24px;
padding: 10px;
margin-top: 10px;
border-radius: 5px;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<div class="textclass">
		
				<h4 style="color: #0084ff;">
				Join Us
				</h4>
				<h1 style="color: white;">
					Best Learning <br> Opportunities
				</h1>
				<p style="color: white;">
					We know how large objects will act, but things on a<br> small
					scale just to not act that way.
				</p>
				<input type="button" value="Get Quote Now" class="buttonStyle1">
				<input type="button" value="Learn More" class="buttonStyle2">
		
			</div>
		<div class="boxClass">
			<div>
				<i class="fa fa-map-o" style="background-color:pink;color:red;"></i>
				<h4>Books Library</h4>
				<hr><br>
				<h6>
					The gradual accumulation of <br>information about atomic <br>and
					small-scale behaviour...
				</h6>

			</div>
			<div>
				<i class="fa fa-clone" style="background-color: #c2f0c2;color:#2eb82e;"></i>
				
				<h4>Market Analysis</h4>
				<hr><br>
				<h6>
					The gradual accumulation of <br> information about atomic <br>and
					small-scale behaviour...
				</h6>
			</div>


			<div>
				
				<i class="fa fa-credit-card" style="background-color: #b3e0ff;color:#0084ff;" ></i>
				<h4>2.769 Online Courses</h4>
				<hr><br>
				<h6>
					The gradual accumulation of<br> information about atomic<br>
					and small-scale behaviour...
				</h6>
			</div>
		</div>


	</section>
</body>
</html>