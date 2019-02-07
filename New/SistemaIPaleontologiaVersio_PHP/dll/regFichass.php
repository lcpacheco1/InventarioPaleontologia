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
  <div class="container border">
        <div class="container ficha">
            <div class="row">
                <div class="col-md-4 ">
                    <h5>COLECCION
                        <span class="label label-default"></span>
                    </h5>
                    <input type="text" class="form-control" id="municipio" placeholder="Nombre de la colección">
                </div>
                <div class="col-md-4">
                    <h5> NOMBRE DEL PROPIETARIO
                        <span class="label label-default"></span>
                    </h5>
                    <input type="text" class="form-control" id="propietario" placeholder="Propietario">

                </div>
                <div class="col-md-4">
                    <h5> CONTROL DE COLECCION
                        <span class="label label-default"></span>
                    </h5>
                    <input type="text" class="form-control" id="control" placeholder="Control">
                </div>
            </div>
        </div>
        <div class="container ficha2">
            <div class="row">
                <div class="col-md-4">
                    <h5>REGIMEN DE PROPIEDAD
                        <span class="label label-default"></span>
                    </h5>
                    <div class="row">
                        <div class="col-md-6">
                            <h5>Público</h5>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optradio" checked>Estatal</label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optradio">Municipal</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h5>Privado</h5>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optradio" checked>Religioso</label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optradio">Particular</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-3">
                            <h5>LOCALIZACIÓN:</h5>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="localizacion" placeholder="Localización">
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <h5>Provincia:</h5>
                        </div>
                        <div class="col-md-2">
                            <select title="Pick a number" class="form-control inputstl">
                                <option>Select...</option>
                                <option>One</option>
                                <option>Two</option>
                                <option>Three</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <h5>Cantón:</h5>
                        </div>
                        <div class="col-md-2">
                            <select title="Pick a number" class="form-control inputstl">
                                <option>Select...</option>
                                <option>One</option>
                                <option>Two</option>
                                <option>Three</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <h5>Ciudad:</h5>
                        </div>
                        <div class="col-md-2">
                            <select title="Pick a number" class="form-control inputstl">
                                <option>Select...</option>
                                <option>One</option>
                                <option>Two</option>
                                <option>Three</option>
                            </select>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <h5>Parroquia:</h5>
                        </div>
                        <div class="col-md-2">
                            <select title="Pick a number" class="form-control inputstl">
                                <option>Select...</option>
                                <option>One</option>
                                <option>Two</option>
                                <option>Three</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <h5>Calles:</h5>
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" id="calles" placeholder="Calles">
                        </div>
                        <div class="col-md-2">
                            <h5>No.:</h5>
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" id="numero" placeholder="Numero">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="containerFicha3 ">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h5>PROYECTO</h5>
                        <div class="form-group">
                            <textarea class="form-control" rows="5" id="desProyecto"></textarea>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h5>FOTO DEL FÓSIL </h5>
                        <img class="d-block w-50" src="../images/Fosil_Insecto.jpg" alt="First slide">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h5>ERA</h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>One</option>
                            <option>Two</option>
                            <option>Three</option>
                        </select>
                    </div>
                    <div class="col">
                        <h5>PERIODO</h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>One</option>
                            <option>Two</option>
                            <option>Three</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h5>EPOCA</h5>
                        <input type="text" class="form-control" id="calles" placeholder="Descripción">

                    </div>
                    <div class="col">
                        <h5>CRONOLOGÍA</h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 ">
                        <h5 class="text-center">DIMENSIONES </h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <h6>Largo (cm)</h6>
                        <input type="text" class="form-control" id="calles" placeholder="Descripción">
                    </div>
                    <div class="col">
                        <h6>Ancho (cm.)</h6>
                        <input type="text" class="form-control" id="calles" placeholder="Descripción">
                    </div>
                    <div class="col">
                        <h6>Diámetro (cm.)</h6>
                        <input type="text" class="form-control" id="calles" placeholder="Descripción">
                    </div>
                    <div class="col">
                        <h6>Espesor (cm.)</h6>
                        <input type="text" class="form-control" id="calles" placeholder="Descripción">
                    </div>
                    <div class="col">
                        <h6>Peso (gr.)</h6>
                        <input type="text" class="form-control" id="calles" placeholder="Descripción">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h5 class="text-center">CLASIFICACIÓN TAXONÓMICA</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h5>Reino: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <h5>Filo: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <h5>Clase: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h5>Subclase: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <h5>Orden: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <h5>Suborden: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h5>Superfamilia: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <h5>Familia: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <h5>Subfamilia: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h5>Orden: </h5>
                        <select title="Pick a number" class="form-control inputstl">
                            <option>Selecccione...</option>
                            <option>Relativa</option>
                            <option>Absoluta</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h5>ESTADO DE CONSERVACIÓN</h5>
                        <textarea class="form-control" rows="5" id="desProyecto"></textarea>
                    </div>
                    <div class="col-md-6">
                        <h5>DESCRIPCIÓN GEOLÓGICA</h5>
                        <textarea class="form-control" rows="5" id="desProyecto"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <h5>Registrado:</h5>
                    </div>
                    <div class="col-md-3.5">
                        <input type="text" class="form-control" id="registrado" placeholder="Nombre y Apellido">
                    </div>
                    <div class="col-md-2">
                        <h5>Revisado:</h5>
                    </div>
                    <div class="col-md-3.5">
                        <input type="text" class="form-control" id="revisado" placeholder="Ej: Instituto Nacional de Patrimonio Cultural">
                    </div>
                </div>
                <div class="row final_ficha">
                    <div class="col-md-4">
                        <h5>Curador/Custodio:</h5>
                    </div>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="curador" placeholder="Ej: Al que designe el municipio">
                    </div>
                    <div class="col-md-3 pt-2">
                    <button type="submit" class="btn btn-dark">Guardar Ficha</button>
                    </div>
                </div>
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
  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script type="text/javascript" src="../js/main.js"></script>
  <script type="text/javascript" src="../js/easing.js"></script>
</body>
</html>