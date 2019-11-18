<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</main>
<!-- page-content" -->
</div>
<!-- page-wrapper -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="<c:url value = "/resources/js/cep.js"/>"></script>
<%--     <script src="<c:url value = "/resources/js/ConverterVariables.js"/>"></script> --%>
<script type="text/javascript">
	$('.icon-close-error').click(function(){
		console.log($(this).parent());
		let divError = $($(this).parent());
		sumirAlertaErros(divError,()=>$($(this).parent()).css('display', 'none'));
	})
	
	function sumirAlertaErros(div, funcaoCallback){
// 		$('.div-error').css('opacity', '0')
		$(div).css('opacity', '0')
		let intervalo = setInterval(function(){
			if($('.div-error').css('opacity') == '0'){
				funcaoCallback();
				clearInterval(intervalo);
			}
			console.log("foi executado.")
		},500);
	}
</script>
</body>

</html>