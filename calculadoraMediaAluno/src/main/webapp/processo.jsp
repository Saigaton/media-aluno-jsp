<%@ page language="java" contentType="text/html; charset=utf-8" %>
	<%
		String num1Str = request.getParameter("primeiraNota");
	    String num2Str = request.getParameter("segundaNota");
	    Double num1 = null;
	    Double num2 = null;
	    boolean validInput = true;
	    String mensagemError = "";
	
	    // Validando e convertendo os parâmetros
	    try {
	        num1 = Double.parseDouble(num1Str);
	    } catch (NumberFormatException e) {
	        validInput = false;
	        mensagemError += "<p style='color:red;'>Primeira nota inválido</p>";
	    }
	
	    try {
	        num2 = Double.parseDouble(num2Str);
	    } catch (NumberFormatException e) {
	        validInput = false;
	        mensagemError += "<p style='color:red;'>Segunda nota inválido</p>";
	    }
	
	    if (validInput) {
	    	//Double media = num1 + num2 / 2;
	    	Double media = num1 / num2;
	        out.println(media);
	    }else{
	    	response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
	        out.println(mensagemError);
	    }
	%>
