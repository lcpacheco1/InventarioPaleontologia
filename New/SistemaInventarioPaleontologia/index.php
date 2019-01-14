<?php 
	require 'dll/conexion.class.php'; 
  /*Creamos la instancia del objeto. Ya estamos conectados*/ 
  $bd=conexion::getInstance(); 
 ?>
<!DOCTYPE html>
<!doctype html>
<html lang="es">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
    crossorigin="anonymous">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/estilos.css">
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <title>Sistema de Paleontología</title>
</head>

<body>
  <div class="principal">
    <div class="container">
      <div class="login caja-login">
        <div class="login-header">
          Login
          <a class="btnCerrar icon-close" href="">X</a>
        </div>
        <div class="login-body">
          <form method="post" action="dll/login.php">
            <div class="form-group">
              <label for="label_email">Usuario</label>
              <input class="form-control" name="txtEmail" type="email" placeholder="Enter email" required>
            </div>
            <div class="form-group">
              <label for="label_contraseña">Password</label>
              <input class="form-control" name="txtContraseña" type="password" placeholder="Password" required>
            </div>
            <div class="form-group">
              <div class="form-check">
                <label class="form-check-label">
                  <input class="form-check-input" type="checkbox"> Recordar contraseña</label>
              </div>
            </div>
            <button class="btn btn-dark btn-block" type="submit">Login</button>
          </form>
          <div class="text-center acceso">
            <a class="small btnRegistrar" href="#home">Registrarse ahora</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="principal2">
    <div class="container">
      <div class="registro caja-registro">
        <div class="registro-header">Registrar una Cuenta
          <a class="btnCerrar icon-close" href="index.php">X</a>
        </div>
        <div class="registro-body">
          <form method="post" action="dll/registro.php">
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <label for="exampleInputName">Nombres</label>
                  <input class="form-control" name="txtNombre" type="text" placeholder="Ingrese sus nombres" required="">
                </div>
                <div class="col-md-6">
                  <label for="exampleInputLastName">Apellidos</label>
                  <input class="form-control" name="txtApellido" type="text" placeholder="Ingrese sus apellidos"
                    required="">
                </div>
              </div>
              <div class="form-group">
                <div class="form-row">
                  <div class="col-md-6">
                    <label for="exampleInputCedula">Cedula</label>
                    <input class="form-control" name="txtCedula" type="text" placeholder="Ingrese su cedula" required="">
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Dirección e-mail</label>
              <input class="form-control" name="txtCorreo" type="email" placeholder="Ingresar email" required="">
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <label for="exampleInputPassword1">Contraseña</label>
                  <input class="form-control" name="txtPassword" type="password" placeholder="Contraseña" required="">
                </div>
                <div class="col-md-6">
                  <label for="exampleConfirmPassword">Confirmar contraseña</label>
                  <input class="form-control" name="txtCoPassword" type="password" placeholder="Confirmar contraseña"
                    required="">
                </div>
              </div>
            </div>
            <input type="submit" name="registrar" class="btn btn-dark btn-block" value="Registrar">
          </form>
          <div class="text-center acceso">
            <a class="small btnVlogueo" href="#home">Página de Logueo</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="menu">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="images/logo-3.png" alt="Logo sitio web"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav"
          aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link navv" id="color" href="#carouselExampleIndicators">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link navv" id="color" href="#fosil">Fósiles</a>
            </li>
            <li class="nav-item">
              <a class="nav-link navv" id="color" href="#equipos">Nuestro equipo</a>
            </li>
            <li class="nav-item">
              <a class="nav-link navv" id="color" href="#contactos">Contáctanos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link btnLogin navv" style="color: #EAAB00;" id="color" href="#carouselExampleIndicators ">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item">
        <img class="d-block w-100" src="images/fosil1.jpg" alt="First slide">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="font-weight-bold">ALGUNOS FÓSILES MÁS <span class="text-naranja">REPRESENTATIVOS</span></h2>
          <div class="d-md-none d-lg-block ">
            <p class="fin">Una cría de serpiente atrapada en ámbar</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="images/fosil2.JPG" alt="Second slide">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="font-weight-bold">ALGUNOS FÓSILES MÁS <span class="text-naranja">REPRESENTATIVOS</span></h2>
          <div class="d-md-none d-lg-block">
            <p class="fin">Cuatro fósiles en ámbar de Birmania con inclusiones de ranas de mediados del Cretácico</p>
          </div>
        </div>
      </div>
      <div class="carousel-item active">
        <img class="d-block w-100" src="images/fosil3.JPG" alt="Third slide">
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
            <img src="images/fosil2.jpg" class="img-fosil mb-4" alt="fosil 1">
            <h3>RANAS</h3>
            <p>Cuatro fósiles en ámbar de Birmania con inclusiones de ranas de mediados del Cretácico.</p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <img src="images/fosil1.jpg" class="img-fosil mb-4" alt="fosil 2">
            <h3>SERPIENTE</h3>
            <p>Una cría de serpiente atrapada en ámbar. Se considera qué es la primera ejemplar de serpiente
              fosilizado.</p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <img src="images/fosil3.jpg" class="img-fosil mb-4" alt="fosil 2">
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
                    <img src="images/Kayla.jpg" alt="Imagen 1" class="img-team rounded-circle">
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
                    <img src="images/Kayla.jpg" alt="Imagen 1" class="img-team rounded-circle">
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
                    <img src="images/Kayla.jpg" alt="Imagen 1" class="img-team rounded-circle">
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
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="titulo text-center">
            <h2>DESCARGAR</h2>
            <div class="sub-texto text-plomo">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis laboriosam recusandae numquam iure
              soluta ad officia ullam dolorem commodi perspiciatis.
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3">
          <h3>CONTACTO</h3>
          <div class="media mt-5">
            <i class="fas fa-home fa-2x mr-3 text-oscuro"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-oscuro mt-0">Dirección</h5>
              <div class="address-phone">
                <span>99999 rolls new</span>
                <span>New York</span>
              </div>
            </div>
          </div>
          <div class="media mt-5">
            <i class="fas fa-phone fa-2x mr-3 text-oscuro"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-oscuro mt-0">Dirección</h5>
              <div class="address-phone">
                <span>99111 24 de Mayo</span>
                <span>Loja, Ecuador</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-9">
          <h3 class="mb-5">ENVIA UN MENSAJE</h3>
          <form>
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" class="form-control" id="inputEmail4" placeholder="Primer nombre">
                <input type="password" class="form-control mt-4" id="inputEmail4" placeholder="contacto@contacto.com">
              </div>
              <div class="form-group col-md-6">
                <textarea class="form-control" id="exampleForm" rows="4"></textarea>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" class="form-control" id="inputNumber" placeholder="Tu número de teléfono">
              </div>
              <div class="form-group col-md-6">
                <button type="submit" class="btn btn-celeste btn-block">Sign in</button>
              </div>
            </div>
          </form>
        </div>

      </div>
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
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>
  <script type="text/javascript" src="js/easing.js"></script>
</body>
</html>