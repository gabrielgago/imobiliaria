 <%@page import="br.com.contadores.services.JSPConverter"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<strong class="title">Dashboard</strong>
 
 <script>
 
	 let nome = 'Gabriel'
	 const conversor = new ConverterVariables();
	 conversor.sendToConvert('<%= "/Imobiliaria/conversor/converter" %>', {nome}, (resposta) => console.log(resposta));
 
 </script>
 
 <%
 
//   	String nome = new JSPConverter<String>(session).fromJavaScriptToJava("nome");
//  	System.out.println(nome);
 	
 %>
 
  
  <html>
  <body>
  </body>
  </html>