<?php 
	include("dll/conexion.php");
	$cedula = $_GET["ced"];
 ?>
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
  <title>ADMINREG</title>
</head>

<body>
  <div class="principal">
    <div class="container">
      <div class="login caja-login">
        <div class="login-header">
          Login
          <a class="btnCerrar icon-close" href="index.html">X</a>
        </div>
        <div class="login-body">
          <form>
            <div class="form-group">
              <label for="label_email">Email address</label>
              <input class="form-control" id="txtEmail" type="email" placeholder="Enter email" required>
            </div>
            <div class="form-group">
              <label for="label_contraseña">Password</label>
              <input class="form-control" id="txtContraseña" type="password" placeholder="Password" required>
            </div>
            <div class="form-group">
              <div class="form-check">
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
          <a class="btnCerrar icon-close" href="index.html">X</a>
        </div>
        <div class="registro-body">
          <form>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <label for="exampleInputName">Nombres</label>
                  <input class="form-control" id="txtNombres" type="text" placeholder="Ingrese sus nombres" required="">
                </div>
                <div class="col-md-6">
                  <label for="exampleInputLastName">Apellidos</label>
                  <input class="form-control" id="txtApellidos" type="text" placeholder="Ingrese sus apellidos"
                    required="">
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Dirección e-mail</label>
              <input class="form-control" id="txtEmail" type="email" placeholder="Ingresar email" required="">
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <label for="exampleInputPassword1">Contraseña</label>
                  <input class="form-control" id="txtCoPassword" type="password" placeholder="Contraseña" required="">
                </div>
                <div class="col-md-6">
                  <label for="exampleConfirmPassword">Confirmar contraseña</label>
                  <input class="form-control" id="txtCoPassword" type="password" placeholder="Confirmar contraseña"
                    required="">
                </div>
              </div>
            </div>
            <input type="submit" name="" class="btn btn-dark btn-block" value="Registrar">
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
              <a class="nav-link btnLogin navv" id="color" href="#carouselExampleIndicators ">Login</a>
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
          <div class="d-md-none d-lg-block " >
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
          <h2>TRABAJA CON UNA SONRISA</h2>
          <div class="sub-texto">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, quos.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, necessitatibus!</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <i class="fas fa-paint-brush fa-2x rounded-circle p-3 mb-3 bg-celeste text-white"></i>
            <h3>DISEÑO UNICO</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates obcaecati rerum delectus
              exercitationem distinctio, aperiam non illum velit, error, provident eius voluptate ipsa animi corporis
              possimus sapiente? Ipsa, hic dignissimos?</p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <i class="fab fa-angellist fa-2x rounded-circle p-3 mb-3 bg-celeste text-white"></i>
            <h3>IMAGEN CORPORATIVA</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates obcaecati rerum delectus
              exercitationem distinctio, aperiam non illum velit, error, provident eius voluptate ipsa animi corporis
              possimus sapiente? Ipsa, hic dignissimos?</p>
          </div>
        </div>
        <div class="col-md-4 text-center">
          <div class="intro-block py-5 px-4 bg-light">
            <i class="fab fa-angellist fa-2x rounded-circle p-3 mb-3 bg-celeste text-white"></i>
            <h3>IMAGEN CORPORATIVA</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates obcaecati rerum delectus
              exercitationem distinctio, aperiam non illum velit, error, provident eius voluptate ipsa animi corporis
              possimus sapiente? Ipsa, hic dignissimos?</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- <section class="feature-area" id="trabajo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="titulo text-center text-white">
            <h2>CARACTERISTICAS DE TRABAJO</h2>
            <div class="sub-texto">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde, totam.</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, atque!</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-8">
          <div class="row text-center">
            <div class="col-md-6">
              <div class="intro-block py-5 px-4 bg-transparent">
                <i class="fas fa-exchange-alt fa-2x rounded-circle p-3 mb-3 bg-celeste text-white"></i>
                <h3 class="font-weight-bold text-celeste">BARRAS DE DESPLAZAMIENTO</h3>
                <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, accusantium ad quis velit quaerat dolorum!</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="intro-block py-5 px-4 bg-transparent">
                <i class="fas fa-star-half-alt fa-2x rounded-circle p-3 mb-3 bg-celeste text-white"></i>
                <h3 class="font-weight-bold text-celeste">DEMO ROBUSTO</h3>
                <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, accusantium ad quis velit quaerat dolorum!</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="intro-block py-5 px-4 bg-transparent">
                <i class="fas fa-arrows-alt fa-2x rounded-circle p-3 mb-3 bg-celeste text-white"></i>
                <h3 class="font-weight-bold text-celeste">FACIL DE USAR</h3>
                <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, accusantium ad quis velit quaerat dolorum!</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="intro-block py-5 px-4 bg-transparent">
                <i class="fas fa-cog fa-2x rounded-circle p-3 mb-3 bg-celeste text-white"></i>
                <h3 class="font-weight-bold text-celeste">MUCHOS APIS</h3>
                <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, accusantium ad quis velit quaerat dolorum!</p>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </section> -->
  <!-- <section class="more-feature-area" id="servicios">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="titulo text-center">
            <h2>CARACTERISTICAS MÓVILES</h2>
            <div class="sub-texto text-plomo">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus aspernatur quae temporibus suscipit atque tempore laborum corrupti perspiciatis reprehenderit recusandae.
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-7">
          <img src="images/feature-mockup.png" alt="Imagen More">
        </div>
        <div class="col-md-5">
          <div class="media">
            <i class="fas fa-cog fa-2x rounded-circle p-3 mb-3 mr-3 bg-celeste text-white"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-celeste mt-0">PANTALLA DE RETINA</h5>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, temporibus!
            </div>
          </div>
          <div class="media mt-5">
            <i class="fas fa-arrows-alt fa-2x rounded-circle p-3 mb-3 mr-3 bg-celeste text-white"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-celeste mt-0">HERMOSOS CALLBACKS</h5>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, temporibus!
            </div>
          </div>
          <div class="media mt-5">
            <i class="fab fa-android fa-2x rounded-circle p-3 mb-3 mr-3 bg-celeste text-white"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-celeste mt-0">IOS/WINDOWS/ANDROID</h5>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, temporibus!
            </div>
          </div>
          <div class="media mt-5">
            <i class="fas fa-undo fa-2x rounded-circle p-3 mb-3 mr-3 bg-celeste text-white"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-celeste mt-0">REDIRECCIONAMIENTO</h5>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, temporibus!
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->
  <section class="testimonials" id="equipos">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="titulo text-center">
            <h2 class="text-white">CLIENTES IMPRESIONANTES</h2>
            <div class="sub-texto text-white">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi, culpa.<br>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit.
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
                    <h4>Sr Ingeniero</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium voluptate iure totam ab
                      animi, dolores deleniti sunt, aliquid fugit, tenetur nihil officia aliquam a placeat est. Fugiat
                      debitis iure quo eos sint eum, corporis amet.</p>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src=".../800x400?auto=yes&bg=666&fg=444&text=Second slide" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src=".../800x400?auto=yes&bg=555&fg=333&text=Third slide" alt="Third slide">
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
            <i class="fas fa-home fa-2x mr-3 text-celeste"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-celeste mt-0">Dirección</h5>
              <div class="address-phone">
                <span>99999 rolls new</span>
                <span>New York</span>
              </div>
            </div>
          </div>
          <div class="media mt-5">
            <i class="fas fa-phone fa-2x mr-3 text-celeste"></i>
            <div class="media-body">
              <h5 class="font-weight-bold text-celeste mt-0">Dirección</h5>
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
  <footer class="footer bg-celeste">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <div class="social-icon mb-5">
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
            <p class="text-white">&copy; <br>BEATUFIED 2018, DERECHOS RESERVADOS</p>
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