//Mostrar u ocultar login y registrar
jQuery(document).ready(function($){

	function Presionar(){
		alert (" EXITO");
		document.getElementById('login').click();
	}
	
	$('.btnLogin').on('click', function(event){
		$('.principal').addClass('opacity-body');
	});

	$('.btnCerrar').on('click', function(event){
		$('.principal').removeClass('opacity-body');
	});

	$('.btnRegistrar').on('click', function(event){
		$('.login').addClass('principal');
		$('.registro').removeClass('principal');
		$('.principal2').addClass('visible');
	});

	$('.btnVlogueo').on('click', function(event){
		$('.registro').addClass('principal');
		$('.login').removeClass('principal');
		$('.principal2').removeClass('visible');
	});
});