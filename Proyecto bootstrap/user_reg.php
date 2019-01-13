<?php 
	include("dll/conexion.php");
	$cedula = $_GET["ced"];
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
									<a href="user_reg.php?ced=<?php echo $cedula ?>"><b>SISTEMA </b><span class="subt">Audios</span></a>
								</h1>
							</div>
							<!-- navbar-header -->
							<div class="collapse navbar-collapse cl-effect-13" id="bs-example-navbar-collapse-1">

								<ul class="nav navbar-nav navbar-right">
									<li>
										<a href="user_reg.php?ced=<?php echo $cedula ?>" class="">Inicio</a>
									</li>
									<li>
										<a href="#audios" class="scroll">Audios</a>
									</li>
									<li>
										<a href="#cargar-audio" class="scroll">Cargar</a>
									</li>
									<li>
										<a href="categorias_user_admin.php?ced=<?php echo $cedula ?>" class="">Categorias</a>
									</li>
									<li>
										<a href="juegos.php?ced=<?php echo $cedula ?>" class="">Juegos</a>
									</li>
									<li>
										<a href="admin.php?ced=<?php echo $cedula ?> #usuarios" class="">Gestionar</a>
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
									<form action="dll/buscar-user-admin.php" method="post">
										<input name="busqueda" type="search" placeholder="Ingrese para buscar">
										<input name="cedulaLog" type="text" value="<?php echo $cedula ?>">
									</form>
								</div>
							</div>
							<div class="clearfix"> </div>
						</nav>
						<?php
							$usuario=$conexion->query("SELECT cedula, nombres, apellidos FROM persona WHERE cedula = $cedula");	
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
	<!-- about -->
	<div class="audios" id="audios">
		<div class="container">
			<h3 class="titulo-seccion">Audios</h3>
			<div class="row">
				<div class="Caja-audios">
					<?php
						$listAudios=$conexion->query("SELECT idAudio, titulo, autor, descripcion, audio, portada, likes, dislikes FROM audio ORDER BY idAudio");

								while ($audio=$listAudios->fetch(PDO::FETCH_BOTH)){
									echo "<div class='box-audio'><div class='listaud'>
									<a class='tituloAud' href='audio_r.php?id2=$audio[0]&ced=$cedula&autoplay=false'>".$audio['titulo']."</a>
									<label>".$audio['autor']."</label>
									<p>".$audio['descripcion']."</p>
									";
									$id=$audio[0];
								
								
						?>
					
							<?php
							$cont=0;
							$listaCom = $conexion->query("SELECT p.nombres, p.apellidos, c.comentario, c.fecha FROM comentario c, persona p  WHERE c.Persona_cedula=p.cedula AND c.Audio_idAudio = $id order by fecha desc");
							while ($coment=$listaCom->fetch(PDO::FETCH_ASSOC)){ 
								$cont=$cont+1;
							}
							echo "<a class='icon-thumb_up like'><span>".$audio['likes']."</span></a><a class='icon-insert_comment coment'><span>".$cont."</span></a></div><div class='back'><img src='data:image/jpg;base64, ".base64_encode($audio['portada'])."'></div><a  href = 'audio_r.php?id2=$audio[0]&ced=$cedula&autoplay=true' class='icon-play_circle_outline repro'><span>Reproducir</span></a></div>";
					}
					?>
				</div>
			</div>
		</div>
	</div>
	<div class="cargar-audio" id="cargar-audio">
		<div class="container">
			<h3 class="titulo-seccion">Cargar Audio</h3>
			<div id="content" >
				<div >
				    <h2 class="titulo">Subir Audio</h2>
				    <form method="POST" enctype="multipart/form-data" action="dll/cargaraudio.php" autocomplete="on" style="padding-left: 23em;">
				    	<input name="Persona_cedula" type="text" value="<?php echo $cedula ?>" hidden>
				        <p>
				            <label for="username" class="icon-user labell"> Título
				                <span class="required">*</span>
				            </label>
				            <input name="titulo" type="text" class="form-control cargarA" placeholder="Título del audio ..." required="required">
				        </p>
				        <p>
				            <label for="usermail" class="icon-envelope labell"> Autor
				                <span class="required">*</span>
				            </label>
				            <input name="autor" type="text" class="form-control cargarA" placeholder="Nombre del autor ..." required="required">
				        </p>
				        <p>
				            <label for="usersite" class="icon-link labell"> Descripción
				            	<span class="required">*</span>
				            </label>
				            <input name="descripcion" type="text" class="form-control cargarA" placeholder="Referencia del audio ..." required="required">
				        </p>
				        <p>
				            <label for="subject" class="icon-bullhorn labell"> Audio
				            	<span class="required">*</span>
				            </label>
				            <input name="audio" type="file" class="form-controlAA cargarA" placeholder="Cargar el audio ..." required="required">
				        </p>
				        <p>
				            <label for="message" class="icon-comment labell"> Portada
				                <span class="required">*</span>
				            </label>
				            <input name="portada" type="file" class="form-controlAA cargarA" placeholder="Portada del audio ...">
				        </p>
				        <p>
				            <label for="message" class="icon-comment labell"> Categoría
				                <span class="required">*</span>
				            </label>
				            <select class="form-controlAA cargarA" id="tipo" name="Categoria_idCategoria" required="required">
						 		<option value="1">Política</option>
						 		<option value="2">Deportes</option>
						 		<option value="3">Economía</option>
						 	</select>
				        </p>
				        <p>
				            <label for="message" class="icon-comment labell"> Fecha de publicación
				                <span class="required">*</span>
				            </label>
				            <input name="fecha" type="date" class="form-controlAA cargarA" placeholder="Insertar la fecha de publicación ..." required="required">
				        </p>
				        <input name="insertar" type="submit" class="btn btn-success enviar" value="Insertar Audio !!!" title="Insertar Audio !!!">
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
		<!-- about-bottom-->
		
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