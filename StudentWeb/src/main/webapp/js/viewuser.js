/**
 * 
 */
  function viewUserDetails()
  {
	//  alert("hai");
	  $.ajax({
		type: "post",
		url: "UserDetailsController",
		success : userview
	});
  }
  
  function userview(response)
  {
	var data=response.userDetails;
	var table=document.getElementById('usertable');
	const tableBody = document.createElement('tbody');
	table.appendChild(tableBody);
	data.forEach(item => 
	{
		var i=0;
		//alert(Object.keys.role.values);
		Object.keys(item).forEach(value => 
		{
			var k= Object.keys(item);
  			var val = Object.values(item);
			let row = tableBody.insertRow();
			let cell = row.insertCell();
			cell.textContent = k[i];
			let cell2 = row.insertCell();
			cell2.textContent = val[i];
			
			i++;
		});
  });  
  }


function viewUser()
{
	$.ajax({
		type: "post",
		url: "ViewUserController",
		success : tableview
	});
}


	function updatedetails(value)
	{
		
	/*	var table=document.getElementById('demo');
		var row = table.getElementsByTagName('tr')[0].innerHTML;
		var cells = row.getElementsByTagName('td')[0].innerHTML;
		alert(cells);
    console.log("fffffffffffffffff "+cells);
    */
   	//	alert(value.l);
  // var table = document.getElementById("demo"); 
	var sr = value.parentElement.parentElement; 
	
	//alert(sr.length);
		$('#uid').val(sr.cells[0].innerHTML);
		$('#urole').val(sr.cells[1].innerHTML);
		$('#uname').val(sr.cells[2].innerHTML);
		$('#email').val(sr.cells[9].innerHTML);
		$('#password').val(sr.cells[7].innerHTML);
		$('#phno').val(sr.cells[8].innerHTML);
		$('#age').val(sr.cells[10].innerHTML);
		$('#dob').val(sr.cells[4].innerHTML);
		$('#gender').val(sr.cells[3].innerHTML);
		$('#cgpa').val(sr.cells[6].innerHTML);
		$('#course').val(sr.cells[5].innerHTML);
    //console.log("sssssssss "+status);
   // alert(status); 
 	//  list.getElementsByTagName("li")[0].innerHTML 
}

function tableview(response)
{
	var data=response.studDetails;
	var table=document.getElementById('demo');
	const tableBody = document.createElement('tbody');
	table.appendChild(tableBody);
	data.forEach(item => 
	{
		let row = tableBody.insertRow();
		Object.values(item).forEach(value => 
		{
			let cell = row.insertCell();
			cell.textContent = value;
		});
    	let cell=row.insertCell();
    	cell.innerHTML="<input type='button' onclick='updatedetails(this)' value='edit' id='updatestd'>"
    	+"<input type='button' onclick='deleteUser(this)' value='delete' id='deletestd'>";
  });
  }
  
  
  function updatepage()
  {
		$.ajax({
		type: "post",
		url: "UpdateController",
		data: {
			uid : $('#uid').val(),
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
			if(response=="success") {
				alert("Updated Successfully");
						document.location.reload();
			}
			else {
				alert("Please check!! ");	
			}	
		}
	});  
  }
  
  function deleteUser(value)
  {
		var sr = value.parentElement.parentElement; 
		var result = confirm("Are you sure to delete?");
    if(result){
		$('#uid').val(sr.cells[0].innerHTML); 		
		$.ajax({
		type: "post",
		url: "DeleteController",
		data: {
			uid : $('#uid').val()
		},
		success : function(response) {
			if(response=="success") {
				alert("Deleted Successfully");
						document.location.reload();
				}
			else {
				alert("Please check!! ");	
				}	
			}
		}); 
		 }
  }
  

  
  
  function logout()
  {
	  window.location.href = "login.jsp";
  }