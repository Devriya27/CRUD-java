<html>
<head>
	<style type="text/css">
		body {
			/* background-image: url("wp4489241.jpg");
			background-repeat: no-repeat;
			background-size: auto; */
			background-color: #00284d;
		}
		
		.header {
			text-align: center;
			margin-top: 50px;
			color: white;	
		}
		
		.login {
			display: grid;
			grid-template-columns: auto auto;
			column-gap: 80px;
			justify-content: center;
		}
		.contact table {
			color: white;	
			padding-left: 10px;
		}
		
		td {
			padding-top: 10px;
			padding-left: 10px;
			padding-bottom: 5px;	
		}
		.contact i,h4 {
			color: white;
		}
		.contact p {
			padding-bottom:2px;
		}
		.inputalign {
			width: 300px;
			height: 450px;
			border-radius: 4px;
			background-color: white;
			padding-top: 15px;
			
		}
		.inputalign div {
			padding: 10px;
			margin-left: 30px;
		}
		input {
			padding: 5px;
			width: 210px;
			height: 40px;
			border-radius: 4px;
		}
		textarea {
			height: 100px;
			width: 210px;
			border-radius: 4px;
		}
		
		button {
			background-color: #53B1BD;
			height: 40px;
			width: 120px;
			border-radius: 4px;
			color:white;
		}
		
		h3 {
			margin-left: 38px;	
		}
	</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="header">
		<h2>Contact Form</h2> 
	</div>
	<div class="login">
	<div class="contact">
		<h4>Contact us</h4>
		<table><tr><td><i class="fa fa-map-marker" ></i></td><td><p>ADDRESS:</p></td></tr>
		<tr><td></td><td><p>198 West 21th Street, Suite 721 New York NY</p></td></tr>
		<tr><td></td><td style="padding-bottom:4px;"><p>10016</p></td></tr><tr></tr>
		<tr><td><i class="fa fa-phone"></i></td><td><p>PHONE:</p></td></tr>
		<tr><td></td><td style="padding-bottom:4px;"><p>+ 1235 2355 98</p></td></tr>
		<tr><td><i class="fa fa-location-arrow"></i></td><td><p>EMAIL:</p></td></tr>
		<tr><td></td><td  style="padding-bottom:4px;"><p >info@yoursite.com</p></td></tr>
		<tr><td><i class="fa fa-globe"></i></td><td><p>WEBSITE:</p></td></tr>
		<tr><td></td><td><p>info@yoursite.com</p></td></tr></table>		
	</div>
	<div class="inputalign">
		<h3>Get in touch</h3>
		<div><input type="text" placeholder="Name" id="name"/></div>
		<div><input type="email" placeholder="Email" id="email"/></div>
		<div><input type="text" placeholder="Subject" id="subject"/></div>
		<div><textarea placeholder="Message" id="message"/></textarea></div>
		<div><button type="button" />Send Message</button></div>	
	</div>
	</div>
</body>
</html>