/**
 * 
 */

 function calcularNotas(){
	 var primeiraNota = $("#nota01").val();
	 var segundaNota = $("#nota02").val();
	 
	 $.ajax({
  		url: "processo.jsp",
  		data: {"primeiraNota": primeiraNota, "segundaNota": segundaNota},
  		success: function(result){
    		$("#total").text(result);
  		},
  		error: function(request, status, error){
			  $("#total").html(request.responseText);
		  }
	});
 }