<%@page import="br.com.contadores.model.Fiador"%>
<%@page import="br.com.contadores.services.Desenhista"%>
<div class="container-fluid">
<%
	String draw = Desenhista.draw(Fiador.class);
	out.write(draw);
%>
</div>