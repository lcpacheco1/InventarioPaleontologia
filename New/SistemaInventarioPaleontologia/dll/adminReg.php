<?php 
include("conexion.php");
$cedula = $_GET["ced"];
 ?>
<!doctype html>
<html lang="es">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
    crossorigin="anonymous">
  <link rel="stylesheet" href="../css/animate.css">
  <link rel="stylesheet" href="../css/estilos.css">
  <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
  <title>ADMINREG</title>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="menu">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="../images/logo-3.png" alt="Logo sitio web"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav"
          aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link navv" id="color" href="adminReg.php?ced=<?php echo $cedula ?> #carouselExampleIndicators">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link navv" id="color" href="adminReg.php?ced=<?php echo $cedula ?> #fosil">Fósiles</a>
            </li>
            <li class="nav-item">
              <a class="nav-link navv" id="color" href="adminReg.php?ced=<?php echo $cedula ?> #equipos">Nuestro equipo</a>
            </li>
            <li class="nav-item">
              <a class="nav-link navv" id="color" href="adminReg.php?ced=<?php echo $cedula ?> #contactos">Gestinar usuarios</a>
            </li>
          </ul>
        </div>
        <?php
							$usuario=$conexion->query("SELECT cedula, nombres, apellidos FROM usuario WHERE cedula = $cedula");	
							$user=$usuario->fetch(PDO::FETCH_ASSOC);
						?>
						<div class="seccion-logueo">
							<a class="btnLogout" href="#home">LogOut</a>
							<div class="seccion-logout">
						  		<a class="text-center" href=""><?php echo $user['nombres'].' '.$user['apellidos'] ?></a>
						  		<a class="text-center" href="../index.php">Cerrrar sesion</a>
						  	</div>
						</div>
      </div>
    </nav>
  </header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item">
        <img class="d-block w-100" src="../images/fosil1.jpg" alt="First slide">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="font-weight-bold">ALGUNOS FÓSILES MÁS <span class="text-naranja">REPRESENTATIVOS</span></h2>
          <div class="d-md-none d-lg-block ">
            <p class="fin">Una cría de serpiente atrapada en ámbar</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="../images/fosil2.JPG" alt="Second slide">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="font-weight-bold">ALGUNOS FÓSILES MÁS <span class="text-naranja">REPRESENTATIVOS</span></h2>
          <div class="d-md-none d-lg-block">
            <p class="fin">Cuatro fósiles en ámbar de Birmania con inclusiones de ranas de mediados del Cretácico</p>
          </div>
        </div>
      </div>
      <div class="carousel-item active">
        <img class="d-block w-100" src="../images/fosil3.JPG" alt="Third slide">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="font-weight-bold">ALGUNOS FÓSILES MÁS <span class="text-naranja">REPRESENTATIVOS</span></h2>
          <div class="d-md-none d-lg-block">
            <p class="fin">Cráneo de 'Nochnitsa', recogido en 1994 en la orilla del río Vyatka, en el centro de Rusia.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <section class="intro-area" id="intro-area">
    <div class="container" id="fosil">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2>GALERÍA</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <img src="../images/fosil2.jpg" class="img-fosil mb-4" alt="fosil 1">
            <h3>RANAS</h3>
            <p>Cuatro fósiles en ámbar de Birmania con inclusiones de ranas de mediados del Cretácico.</p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <img src="../images/fosil1.jpg" class="img-fosil mb-4" alt="fosil 2">
            <h3>SERPIENTE</h3>
            <p>Una cría de serpiente atrapada en ámbar. Se considera qué es la primera ejemplar de serpiente
              fosilizado.</p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <img src="../images/fosil3.jpg" class="img-fosil mb-4" alt="fosil 2">
            <h3>NOCHNITSA</h3>
            <p>Cráneo de 'Nochnitsa', recogido en 1994 en la orilla del río Vyatka, en el centro de Rusia.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="testimonials" id="equipos">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="titulo text-center">
            <h2 class="text-white">NUESTRO EQUIPO</h2>
            <div class="sub-texto text-white">
              Geólogos y paleontólogos destacados<br>
              en los descubrimientos realizados.
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="offset-lg-4 col-lg-4">
          <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="item active text-center">
                  <div class="border-team rounded-circle bg-celeste">
                    <img src="../images/Kayla.jpg" alt="Imagen 1" class="img-team rounded-circle">
                  </div>
                  <div class="text-white mt-4">
                    <h2>Daniel Grover</h2>
                    <h4>Geóloga</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium voluptate iure totam ab
                      animi, dolores deleniti sunt, aliquid fugit, tenetur nihil officia aliquam a placeat est. Fugiat
                      debitis iure quo eos sint eum, corporis amet.</p>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="item active text-center">
                  <div class="border-team rounded-circle bg-celeste">
                    <img src="../images/Kayla.jpg" alt="Imagen 1" class="img-team rounded-circle">
                  </div>
                  <div class="text-white mt-4">
                    <h2>Daniel Grover</h2>
                    <h4>Geóloga</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium voluptate iure totam ab
                      animi, dolores deleniti sunt, aliquid fugit, tenetur nihil officia aliquam a placeat est. Fugiat
                      debitis iure quo eos sint eum, corporis amet.</p>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="item active text-center">
                  <div class="border-team rounded-circle bg-celeste">
                    <img src="../images/Kayla.jpg" alt="Imagen 1" class="img-team rounded-circle">
                  </div>
                  <div class="text-white mt-4">
                    <h2>Daniel Grover</h2>
                    <h4>Geóloga</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium voluptate iure totam ab
                      animi, dolores deleniti sunt, aliquid fugit, tenetur nihil officia aliquam a placeat est. Fugiat
                      debitis iure quo eos sint eum, corporis amet.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="contact" id="contactos">
  <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="mb-5">USUARIOS</h2>
        </div>
      </div>
    <div class="container">
    <form method="post" action="dll/crudUsuarios.php">
						<div class="table-responsive">
		  					<table class="table table-condensed table-hover table-striped">
								<tr class="">
									<th>CEDULA</th>
									<th>NOMBRES</th>
									<th>APELLIDOS</th>
									<th>CORREO</th>
									<th>ROL</th>
									<th colspan="2">ACCION</th>
								</tr>
								<?php
									$listUsuarios=$conexion->query("SELECT cedula, nombres, apellidos, correo, rol FROM usuario");
									while ($usuario=$listUsuarios->fetch(PDO::FETCH_ASSOC)){
										$nombres=$usuario['nombres'];
										$apellidos=$usuario['apellidos'];
										echo "<tr class=''>
												<div class='col-sm-12'>
													<form class='col-md-6' method='post' action='crudUsuarios.php'>
														<input name='Persona_cedula' type='text' value='$cedula' hidden>
														<td><input name='cedula' id='cedula' value=".$usuario['cedula']." readonly='readonly'></td>
														<td><input name='nombres' value='$nombres'></td>
														<td><input name='apellidos' value='$apellidos'></td>
														<td><input name='correo' value=".$usuario['correo']."></td>
														<td><input name='rol' value=".$usuario['rol']."></td>
														<td><input class='btn btn-info' name='modificarr' type='submit' value='Modificar'></td>
														<td><input class='btn btn-warning' name='eliminarr' type='submit' value='Eliminar'></td>
													</form>
												</div>
											 </tr>";
									}
								?>
							</table>
						</div>
					</form>
    </div>
  </section>
  <section class="google-map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d6693.827074478832!2d-79.20107380409588!3d-3.9847227066384403!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2sec!4v1545266713615"
      width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>

  </section>
  <footer class="footer bg-oscuro">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <div class="social-icon">
            <div class="img-team-social d-flex justify-content-center">
              <div class="mr-5">
                <i class="fab fa-facebook-f fa-2x my-2 text-white"></i>
              </div>
              <div class="mr-5">
                <i class="fab fa-twitter fa-2x my-2 text-white"></i>
              </div>
              <div class="mr-5">
                <i class="fab fa-google fa-2x my-2 text-white"></i>
              </div>
            </div>
          </div>
          <div class="copyright">
            <p class="text-white">&copy; <br>ARQUIAPPLAR 2019, DERECHOS RESERVADOS</p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script type="text/javascript" src="../js/main.js"></script>
  <script type="text/javascript" src="../js/easing.js"></script>
</body>
</html>