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
  <title>USERREG</title>
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
            <li class="nav-item active text-color-menu">
              <a class="nav-link navv" id="color" href="userReg.php?ced=<?php echo $cedula ?> #carouselExampleIndicators">Inicio <span class="sr-only">(current)</span></a>
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

  <section>
    <main class="contMain container">
        <ul class="nav nav-tabs justify-content-center m-4" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Direccion provincial de Loja</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Direccion provincial de El Oro</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Direccion provincial de Zamora Chinchipe</a>
        </li>
        </ul>
        <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="row">
            <div class="col-md-7">
                <div class="map-responsive">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d509220.7633271628!2d-79.2541924057374!3d-4.357137057326698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91cb1fb2e66c6153%3A0xf06fa3a6d57268be!2sParque+Nacional+Podocarpus!5e0!3m2!1ses-419!2sec!4v1540771030783" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-5">
                <h5 class="text-center my-4">Dirección Provincial del Ambiente de Loja</h5>
                <p class="text-center my-0">Dirección: Sevilla de Oro y Francisco de Orellana esquina, frente al hospital</p>
                <p class="text-center my-0">Teléfonos: 07 2 605315  / 07 2606606</p>
                <p class="text-center my-0">Correo electrónico: elsy.silva@gmail.com</p>
            </div>
            </div>
            <h3 class="text-center m-4">OFICINAS TÉCNICAS</h3>
            
            <hr>
            <div class="row">   
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina técnica de Loja</h5>
                <p class="my-0 text-center">Dirección: Loja, calle Sucre entre Imbabura y Quito</p>
                <p class="my-0 text-center">Teléfonos: 07 2571534 / 07 2 577-125 ext 107</p>
                <p class="my-0 text-center">Correo electrónico: santos.calderon@ambiente.gob.ec</p>
                <p class="my-0 text-center">Jurisdicción: Loja, Catamayo, Saraguro, Olmedo, Chaguarpamba y Paltas</p>
            </div>
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina técnica Gonzanamá</h5>
                <p class="my-0 text-center">Dirección: Gonzanamá, calle Loja entre Guillermo Bravo y Bolívar</p>
                <p class="my-0 text-center">Teléfono: 07 22664398</p>
                <p class="my-0 text-center">Correo electrónico: cesar.figueroa@ambiente.gob.ec</p>
                <p class="my-0 text-center">Jurisdicción: Calvas, Espíndola, Gonzanamá y Quilanga</p>
            </div>
            </div>
            <hr>
            <div class="row">
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina Técnica Alamor</h5>
                <p class="my-0 text-center">Dirección: Alamor, calle Simón Bolívar y Juan Montalvo</p>
                <p class="my-0 text-center">Teléfonos: 07 2680409</p>
                <p class="my-0 text-center">Correo electrónico: juan.barrazueta@ambiente.gob.ec</p>
                <p class="my-0 text-center">Jurisdicción: Celica, Pindal y Puyango</p>
            </div>
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina Técnica Zapotillo</h5>
                <p class="my-0 text-center">Dirección: Zapotillo,  Avenida Amazonas y Hno. Miguel</p>
                <p class="my-0 text-center">Teléfonos: 07 2647107</p>
                <p class="my-0 text-center">Correo electrónico: cesar.caraguay@ambiente.gob.ec</p>
                <p class="my-0 text-center">Correo electrónico: cesar.caraguay@ambiente.gob.ec</p>
            </div>
            </div>
        </div>
        
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="row">
            <div class="col-md-7">
                <div class="map-responsive">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d509220.7633271628!2d-79.2541924057374!3d-4.357137057326698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91cb1fb2e66c6153%3A0xf06fa3a6d57268be!2sParque+Nacional+Podocarpus!5e0!3m2!1ses-419!2sec!4v1540771030783" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-5">
                <h5 class="text-center my-2">Dirección Provincial del Ambiente El Oro</h5>
                <p>Dirección: Vela entre 25 de Junio y Sucre quinto piso alto del Edificio Ex PREDESUR</p>
                <p>Teléfonos: 07 2934596 / 07 2961965</p>
                <p>Correo electrónico: geomar.loaiza@ambiente.gob.ec</p>
                <p>Twitter: @MAEELOro</p>
            </div>
            </div>
            <h3 class="text-center m-4">OFICINAS TÉCNICAS</h3>
            
            <hr>
            <div class="row">   
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina Técnica El Oro</h5>
                <p class="text-center my-0">Dirección: Vela entre 25 de Junio y Sucre quinto piso alto del Edificio Ex PREDESUR</p>
                <p class="text-center my-0">Teléfonos: 07 2934596 / 07 2961965 ext 15</p>
                <p class="text-center my-0">Correo electrónico: manuel.tinedo@ambiente.gob.ec</p>
                <p class="text-center my-0">Jurisdicción: Arenillas, Chilla, El Guabo, Huaquillas, Las Lajas, Machala,  Pasaje y Santa Rosa.</p>
            </div>
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina Técnica Zaruma</h5>
                <p class="text-center my-0">Dirección: Barrio Sexmo, calle Damian Meneces. Edficio Ex Motel Munucipal.</p>
                <p class="text-center my-0">Teléfonos: 07 2973765</p>
                <p class="text-center my-0">Correo electrónico: lida.leon@ambiente.gob.ec</p>
                <p class="text-center my-0">Jurisdicción: Atahualpa, Balsas, Marcabeli, Piñas, Portovelo y Zaruma.</p>
            </div>
            </div>
        </div>
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            <div class="row">
            <div class="col-md-7">
                <div class="map-responsive">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d509220.7633271628!2d-79.2541924057374!3d-4.357137057326698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91cb1fb2e66c6153%3A0xf06fa3a6d57268be!2sParque+Nacional+Podocarpus!5e0!3m2!1ses-419!2sec!4v1540771030783" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-5">
                <h5 class="text-center my-2">Dirección Provincial del Ambiente de Zamora Chinchipe</h5> 
                <p class="my-0 text-center">Dirección: Sevilla de Oro y Francisco de Orellana esquina, frente al hospital</p>
                <p class="my-0 text-center">Teléfonos: 07 2 605315  / 07 2606606</p>
                <p class="my-0 text-center">Correo electrónico: elsy.silva@gmail.com</p>
                <p class="my-0 text-center">Twitter:</p>
            </div>
            </div>
            <h3 class="text-center m-4">OFICINAS TÉCNICAS</h3>
            
            <hr>
            <div class="row">   
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina Técnica Zamora</h5>
                <p class="text-center my-0">Dirección: Sevilla de Oro y Francisco de Orellana esquina, frente al hospital</p>
                <p class="text-center my-0">Teléfonos: 07 2 605315  / 07 2606606 ext 15</p>
                <p class="text-center my-0">Correo electrónico: byron.medina@ambiente.gob.ec </p>
                <p class="text-center my-0">Jurisdicción: Centinela del Cóndor, Chinchipe, El Pangui, Nangaritza, Palanda, Paquisha, Yacuambi, Yantzaza y Zamora</p>
            </div>  
            <div class="col-md-6">
                <h5 class="text-center py-2">Oficina Técnica Valladolid</h5>
                <p class="text-center my-0">Dirección: Valladolid calle Colonia Agrícola entre Carlos Larreátegui y Av. Amazonas</p>
                <p class="text-center my-0">Teléfonos: 07 03041662</p>
                <p class="text-center my-0">Correo electrónico: jose.luzuriaga@ambiente.gob.ec </p>
                <p class="text-center my-0">Jurisdicción: Palanda y Zumba</p>
            </div>
            </div>
        </div>
        </div>
    </main>
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