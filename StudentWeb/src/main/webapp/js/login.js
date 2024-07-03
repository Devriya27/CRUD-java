/**
 * 
 */
function loginpage()
{
	var valid=false;
	valid=validate();
	if(valid) {
		  $(".error").remove();

		$.ajax({
		type: "post",
		url : "LoginController",
		data : {
			userName : $('#uname').val(), 
			password : $('#password').val()
		},	
		success : checkAccess
	});
	}
	
}

function validate()
{
	 var uname = $('#uname').val();
    var pwd = $('#password').val();
     if (uname.length < 1) {
      alert("please enter username");
      	return false;
    }
    if (pwd.length < 1) {
     alert("please enter password");
      return false;
    }
    return true;
    
}

function checkAccess(response){
		var data=response.loginAccess;
		var message;
		var role;
		
		Object.values(data).forEach(value => 
		{
			message = value.message;
			role=value.role;
		});
			if(message=="success" && role=="admin")
			{
				//alert(responseText);
				window.location.href = "./ViewAdmin.jsp";
			}
			else if(message=="success" && role=="user")
			{
				//alert(responseText);
				window.location.href = "./ViewUser.jsp";
			}
			else {
				alert("Please check!! ");
				window.location.reload();
			}
		}

function signinpage()
{
	var valid=false;
	valid=validateSignIn();
	if(valid) {
	$.ajax({
		type: "post",
		url: "AddUserController",
		data: {
			uid : $('#uid').val(),
			userName : $('#uname').val(),
			email : $('#email').val(),
			password : $('#password').val(),
			age : $('#age').val(),
			phno : $('#phno').val(),
			dob : $('#dob').val(),
			gender : $('#gender').val(),
			cgpa : $('#cgpa').val(),
			course : $('#course').val()
		},
		success : function(response) {
			//alert(response);
			if(response=="success") {
				document.location.reload();
				window.location.href = "./ViewUser.jsp";
			}
			else {
				alert("Please check!! ");
				
			}
			
		}
		
	});
	}
}
function validateSignIn()
{
	var userName = $('#uname').val();
	var email = $('#email').val();
	var	password = $('#password').val();
	var	age = $('#age').val();
	var phno = $('#phno').val();
	var	dob = $('#dob').val();
	var	gender = $('#gender').val();
	var	cgpa = $('#cgpa').val();
	var	course = $('#course').val();
	 if (userName.length < 1) {
      alert("please enter username");
      	return false;
    }
    if (email.length < 1) {
     alert("please enter email");
      return false;
    }
    
     if (password.length < 1) {
      alert("please enter password");
      	return false;
    }
     if (age.length < 1) {
      alert("please enter username");
      	return false;
    }
    if (phno.length < 1) {
     alert("please enter phno");
      return false;
    }
    if (dob.length < 1) {
      alert("please enter dob");
      	return false;
    }
    if (gender.length < 1) {
     alert("please enter gender");
      return false;
    }
    
     if (cgpa.length < 1) {
     alert("please enter cgpa");
      return false;
    }
    
     if (course.length < 1) {
     alert("please enter course");
      return false;
    }
    return true;
}

function getuserid()
{
	$.ajax({
		type: "post",
		url: "GetUserId",
		success : function(response) {
		//	alert(response);
		document.getElementById("uid").value=Number(response.trim())+1;	
		}
	});
	
}


 