/**
 * 
 */

 $(document).ready(function(){
	$('#studSave').click(function(){
		alert("hi");
		$.ajax({
			type : "post",
			url : 'StudInfoController',
			data : {
				studName : $('#sname').val(),
				studAge : $('#sage').val(),
				studGen : $('#sgender').val(),
				studDob : $('#sdob').val(),
				studEmail : $('#semail').val()
			},
			success : function(responseText){
				alert(responseText);
				$('#responseText').text(responseText);
			}
		});
	});
});