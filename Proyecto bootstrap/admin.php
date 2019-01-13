<?php 
	include("dll/conexion.php");
	$cedulaa = $_GET["ced"];
 ?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Sistema de Audios UTPL</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="audios, utpl" />
	<!--<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>-->
	<!-- //Meta-Tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!--bootstrap-css-->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!--font-awesome-css-->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<!--flexslider-css-->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="icons/font.css">
	<!--style-sheet-->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Raleway:200,300,400,600,700,800,900" rel="stylesheet">
	<!--//fonts-->

</head>

<body>
	<!--banner start here-->
	<div class="inicio" id="home">
		<div class="contenedor-cabecera">
			<div class="header">
				<div id="header-main" class="">
					<div class="container">
						<nav class="navbar barra-navegacion">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<h1>
									<a href="user_reg.php?ced=<?php echo $cedulaa ?>"><b>SISTEMA </b><span class="subt">Audios</span></a>
								</h1>
							</div>
							<!-- navbar-header -->
							<div class="collapse navbar-collapse cl-effect-13" id="bs-example-navbar-collapse-1">

								<ul class="nav navbar-nav navbar-right">
									<li>
										<a href="user_reg.php?ced=<?php echo $cedulaa ?>" class="">Inicio</a>
									</li>
									<li>
										<a href="user_reg.php?ced=<?php echo $cedulaa ?> #audios" class="">Audios</a>
									</li>
									<li>
										<a href="user_reg.php?ced=<?php echo $cedulaa ?> #cargar-audio" class="">Cargar</a>
									</li>
									<li>
										<a href="categorias_user_admin.php?ced=<?php echo $cedulaa ?>" class="">Categorias</a>
									</li>
									<li>
										<a href="juegos.php?ced=<?php echo $cedulaa ?>" class="">Juegos</a>
									</li>
									<li>
										<a href="#usuarios" class="scroll">Gestionar</a>
									</li>
								</ul>

							</div>

							<div class="seccion-buscar">
								<div class="seccion-buscar-boton">
									<ul class="boton-buscar">
										<li>
											<a class="cd-search-trigger" href="#cd-search">
												<span></span>
											</a>
										</li>
									</ul>
									<!-- cd-header-buttons -->
								</div>
								<div id="cd-search" class="cd-search">
									<form method="post" action="dll/buscar-user-admin.php">
										<input name="busqueda" type="search" placeholder="Ingrese para buscar">
										<?php 
											echo "<input name='cedulaLo' type='text' value='$cedulaa'>";
										?>
									</form>
								</div>
							</div>
							<div class="clearfix"> </div>
						</nav>
						<?php
							$usuario=$conexion->query("SELECT cedula, nombres, apellidos FROM persona WHERE cedula = $cedulaa");	
							$user=$usuario->fetch(PDO::FETCH_ASSOC);
						?>
						<div class="seccion-logueo">
							<a class="btnLogout" href="#home">LogOut</a>
							<div class="seccion-logout">
						  		<a class="text-center" href=""><?php echo $user['nombres'].' '.$user['apellidos'] ?></a>
						  		<a class="text-center" href="index.php">Cerrrar sesion</a>
						  	</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="banner-bottom">
						<section class="slider">
							<div class="flexslider">
								<ul class="slides">
									<li>
										<div class="banner-bottom-text">
											<h3>Nuestro entorno no es sólo color, sino también sonido y otras cosas. </h3>

										</div>
									</li>
									<li>
										<div class="banner-bottom-text">
											<h3>El sonido es una puerta hacia otro universo</h3>
										</div>
									</li>
									<li>
										<div class="banner-bottom-text">
											<h3>La melodia llena nuestra vida con felicidad</h3>

										</div>
									</li>
									<li>
										<div class="banner-bottom-text">
											<h3>Presiona play y vamos</h3>
										</div>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</section>
						<div class="thim-click-to-bottom">
							<a href="#about" class="scroll">
								<i class="fa fa-chevron-down" aria-hidden="true"></i>
							</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!--banner end here-->
	<div class="usuarios" id="usuarios">
		<div class="container">
			<div id="content" >
				<div class="container">
				    <h3 class="titulo-seccion">Usuarios
						<span>...</span>
					</h3>
					<form method="post" action="dll/crudUsuarios.php">
						<div class="table-responsive">
		  					<table class="table table-condensed table-hover table-striped">
								<tr class="">
									<th>CEDULA</th>
									<th>NOMBRES</th>
									<th>APELLIDOS</th>
									<th>CORREO</th>
									<th>FECH.NACIMIENTO</th>
									<th>ROL</th>
									<th colspan="2">ACCION</th>
								</tr>
								<?php
									$listUsuarios=$conexion->query("SELECT cedula, nombres, apellidos, correo, fechaNacimiento, rol FROM persona");
									while ($usuario=$listUsuarios->fetch(PDO::FETCH_ASSOC)){
										$nombres=$usuario['nombres'];
										$apellidos=$usuario['apellidos'];
										echo "<tr class=''>
												<div class='col-sm-12'>
													<form class='col-md-6' method='post' action='dll/crudUsuarios.php'>
														<input name='Persona_cedula' type='text' value='$cedulaa' hidden>
														<td><input name='cedula' id='cedula' value=".$usuario['cedula']." readonly='readonly'></td>
														<td><input name='nombres' value='$nombres'></td>
														<td><input name='apellidos' value='$apellidos'></td>
														<td><input name='correo' value=".$usuario['correo']."></td>
														<td><input name='fechaNacimiento' value=".$usuario['fechaNacimiento']."></td>
														<td><input name='rol' value=".$usuario['rol']."></td>
														<td><input class='btn btn-success' name='modificarr' type='submit' value='Modificar'></td>
														<td><input class='btn btn-success' name='eliminarr' type='submit' value='Eliminar'></td>
													</form>
												</div>
											 </tr>";
									}
								?>
							</table>
						</div>
						<h2 class="titulo" style="margin-top: 1em;">Ingresar Usuario</h2>
						<div style="padding-left: 23em;">
							<p>
				            <label for="username" class="icon-user labell"> Cédula
				                <span class="required">*</span>
				            </label>
				            <input name="txtCedula" type="text" class="form-control cargarA" placeholder="Ingrese su cédula ..." required="required">
					        </p>
					        <p>
					            <label for="usermail" class="icon-envelope labell"> Nombres
					                <span class="required">*</span>
					            </label>
					            <input name="txtNombre" type="text" class="form-control cargarA" placeholder="Nombres completos ..." required="required">
					        </p>
					        <p>
					            <label for="usersite" class="icon-link labell"> Apellidos
					            	<span class="required">*</span>
					            </label>
					            <input name="txtApellido" type="text" class="form-control cargarA" placeholder="Apellidos completos ..." required="required">
					        </p>
					        <p>
					            <label for="subject" class="icon-bullhorn labell"> Correo
					            	<span class="required">*</span>
					            </label>
					            <input name="txtCorreo" type="email" class="form-control cargarA" placeholder="Ingrese su correo ..." required="required">
					        </p>
					        <p>
					            <label for="message" class="icon-comment labell"> Fecha de Nacimiento
					                <span class="required">*</span>
					            </label>
					            <input name="txtNacimiento" type="date" class="form-control cargarA" placeholder="Insertar la fecha de publicación ..." required="required">
					        </p>
					        <p>
					            <label for="message" class="icon-comment labell"> Contraseña
					                <span class="required">*</span>
					            </label>
					            <input name="txtPassword" type="password" class="form-control cargarA" placeholder="Establezca una contraseña ..." required="required">
					        </p>
					        <p>
					            <label for="message" class="icon-comment labell">Confirmar contraseña
					                <span class="required">*</span>
					            </label>
					            <input name="txtCoPassword" type="password" class="form-control cargarA" placeholder="Confirmar contraseña ..." required="required">
					        </p>
					        <p>
					            <label for="message" class="icon-comment labell"> Rol
					                <span class="required">*</span>
					            </label>
					            <select class="form-controlAA cargarA" id="tipo" name="txtRol" required="required">
							 		<option value="administrador">Administrador</option>
							 		<option value="usuario">Usuario</option>
							 	</select>
					        </p>
					        <input class="btn btn-success enviar" name="insertar" type="submit" value="Insertar Usuario !!!" title="Insertar Usuario !!!" >	
						</div>
					</form>
					 <h2 class="titulo"></h2>
				</div>
			</div>
		</div>
	</div>
	<div class="about" id="about">
		<div class="seccion-acerca-de">
			<div class="container">
				<h3 class="titulo-seccion">Acerca
					<span>De</span>
				</h3>
				<div class="contenedor-datos">
					<div class="col-md-4 cuadro-datos">
						<div class="dato vista-principal ab1">
							<div class="caja-texto">
								<span class="fa fa-bullhorn" aria-hidden="true"></span>
								<h3>Fernando Alvarez</h3>
								<p class="paragraph-w3l">Desarrollador nato, experto en lenguajes como Java, Python, Php, C#</p>
							</div>
							<div class="mask ab1">
								<br> 
								<h3>Informacion de contacto</h3>
								<br>
								<p class="paragraph-w3l">Correo: lfalvarez2@utpl.edu.ec <br> Telefono: 0959240843<br> Twitter <a href="https://twitter.com/fercho011094">@fercho011094</a> <br> Facebook: <a href="https://www.facebook.com/luisfernando.alvarezcastillo">luisfernando.alvarezcastillo</a></p><br>
							</div>
						</div>
					</div>
					<div class="col-md-4 cuadro-datos">
						<div class="dato vista-principal ab2">
							<div class="caja-texto">
								<span class="fa fa-cubes" aria-hidden="true"></span>
								<h3>Daniela Paladines</h3>
								<p class="paragraph-w3l">Experta en diseño de proyectos, especializada en base de datos semanticas. Scrum master.</p>
							</div>
							<div class="mask ab2">
								<br> 
								<h3>Informacion de contacto</h3>
								<br>
								<p class="paragraph-w3l">Correo: edpaladines@utpl.edu.ec <br> Telefono: 0994532538<br> Twitter <a href="https://twitter.com/">@dani</a> <br> Facebook: <a href="https://www.facebook.com/evelyndaniela.paladinesavila">evelyndaniela.paladinesavila</a></p><br>
							</div>
						</div>
					</div>

					<div class="col-md-4 cuadro-datos">
						<div class="dato vista-principal ab3">
							<div class="caja-texto">
								<span class="fa fa-camera-retro" aria-hidden="true"></span>
								<h3>Rocio Jaramillo</h3>
								<p class="paragraph-w3l">Ingeniera en Sistemas Informaticos, cepilla del curso, ganadora del premio humanistico Tomas Moro</p>
							</div>
							<div class="mask ab3">
								<br> 
								<h3>Informacion de contacto</h3>
								<br>
								<p class="paragraph-w3l">Correo: rcjaramillo2@utpl.edu.ec <br> Telefono: 079630617<br> Twitter <a href="https://twitter.com/RocioJaramilloR">@RocioJaramilloR</a> <br> Facebook: <a href="https://www.facebook.com/rocio.jaramillorosales">rocio.jaramillorosales</a></p><br>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about-bottom -->
	<!-- //about -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>Stereo</h4>
					<img src="images/bann.jpg" alt=" " class="img-responsive">
					<h5>We are the best in this field</h5>
					<p>We work closely with you to understand your goals and aims, and then develop a new business plan,Our team of experts
						can help you succeed in managing any kind of conflicts.</p>
				</div>
			</div>
		</div>
	</div>

	<!-- contact -->
	<!-- mail -->
	<div class="seccion-contacto" id="contact">
		<div class="container">
			<h3 class="titulo-seccion white-title">Contactanos
			</h3>
			<div class="w3-agile_mail_grids">
				<div class="col-md-5 contact-left-w3-agile-sectn">
					<h2>Informacion de contacto</h2>
					<div class="visit">
						<div class="col-md-2 col-sm-2 col-xs-2 contact-icon">
							<span class="fa fa-home" aria-hidden="true"></span>
						</div>
						<div class="col-md-10 col-sm-10 col-xs-10 contact-text-w3-agile">
							<h4>Visitanos</h4>
							<p>San Cayetano Alto, Calle Paris, Loja</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="mail-w3ls">
						<div class="col-md-2 col-sm-2 col-xs-2 contact-icon">
							<span class="fa fa-envelope" aria-hidden="true"></span>
						</div>
						<div class="col-md-10 col-sm-10 col-xs-10 contact-text-w3-agile">
							<h4>Escribenos</h4>
							<p>
								<a href="mailto:info@example.com">@utpl.edu.com</a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="call">
						<div class="col-md-2 col-sm-2 col-xs-2 contact-icon">
							<span class="fa fa-phone" aria-hidden="true"></span>
						</div>
						<div class="col-md-10 col-sm-10 col-xs-10 contact-text-w3-agile">
							<h4>Llamanos</h4>
							<p>+12345678</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //mail -->
	<!-- map -->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3980.1625784740722!2d-79.20152538573846!3d-3.9869566971004566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91cb47fe833955bd%3A0xfd3e8617b7393995!2sUniversidad+T%C3%A9cnica+Particular+de+Loja!5e0!3m2!1ses!2sec!4v1530168179814"></iframe>
	</div>
	<!-- //map -->
	<!-- /contact -->
	<div class="footer">
		<p>© CreativeConmons Todos los derechos reservados | Diseñado por
			<a href="http://w3layouts.com/">@rcjaramillo2</a>
		</p>
	</div>
	<!--/footer -->

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!--search-bar-->
	<script src="js/main.js"></script>
	<!--//search-bar-->
	<!-- FlexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(function () {});
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				start: function (slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- FlexSlider -->
	<!-- about-section-flexisel-slider-->
	<script type="text/javascript">
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: false,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 2
					}
				}
			});

		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- //about-section-flexisel-slider-->
	<script src="js/jzBox.js"></script>
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
		});
	</script>
	<!--boton para regresar al inicio-->
	<a href="#home" class="arriba icon-expand_less">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- //smooth scrolling -->
	<script src="js/bootstrap.js"></script>

</body>

</html>