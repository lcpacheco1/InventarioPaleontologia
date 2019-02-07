<%-- 
    Document   : ficha2
    Created on : 06/02/2019, 14:25:14
    Author     : Liz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="es">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="Templates/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="Templates/css/estilos.css">

        <title>Contactenos</title>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <link href=dashboard/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin CSS-->
        <link href="dashboard/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
        <!-- Custom styles for this template-->
        <link href="dashboard/css/sb-admin.css" rel="stylesheet">

    </head>

    <body id="page-top">
        <header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="menu">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="Templates/images/logo-3.png" alt="Logo sitio web"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav"
          aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active text-color-menu">
              <a class="nav-link navv" id="color" href="#carouselExampleIndicators">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item text-color-menu">
              <a class="nav-link navv" id="color" href="#fosil">Fósiles</a>
            </li>
            <li class="nav-item text-color-menu">
              <a class="nav-link navv" id="color" href="#equipos">Nuestro equipo</a>
            </li>
            <li class="nav-item text-color-menu">
              <a class="nav-link navv" id="color" href="#contactos">Contáctanos</a>
            </li>
            <li class="nav-item text-color-menu">
              <a class="nav-link btnLogin navv" style="color: #EAAB00;" id="color" href="#carouselExampleIndicators ">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

        <!-- Parte intermedia de la página(direccion) --><!-- -->
        <main class="contMain container" style="margin-top: 5em;">


            <ul class="nav nav-tabs justify-content-center m-4" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Localización del fósil</a>
                </li>
                <li class="nav-item">

                    <a class="nav-link " id="home-tab" data-toggle="tab" href="#Coleccion" role="tab" aria-controls="home" aria-selected="true">Colección | Proyecto </a>

                </li>
                <li class="nav-item">
                    <a class="nav-link" id="fosil-tab" data-toggle="tab" href="#Fosil" role="tab" aria-controls="contact" aria-selected="false">FÓSIL</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <!-- PRIMERA SECCION LOCALIZACIÓN DE FÓSIL-->
                <div class="tab-pane fade show  active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <form role="form">
                        <div class="row">
                            <div class="col-md-6">
                                <!--INGRESAR DATOS PARA CALLE -->
                                <div class="form-group">
                                    <label for="inputCalle" class="col-sm-2 control-label">Calle</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputCalle" placeholder="Calle">
                                    </div>
                                </div>
                                <!--INGRESAR DATOS PARA NÚMERO -->
                                <div class="form-group">
                                    <label for="inputNumero" class="col-sm-2 control-label">Número</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputNumero" placeholder="Número">
                                    </div>
                                </div>
                                <!--INGRESAR DATOS PARA UTMESTE -->
                                <div class="form-group">
                                    <label for="inputUTMEste" class="col-sm-2 control-label">UTMEste</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputUTMEste" placeholder="UTMEste">
                                    </div>
                                </div>
                                <!--INGRESAR DATOS PARA UTMOeste -->

                                <div class="form-group">
                                    <label for="inputUTMOeste" class="col-sm-2 control-label">UTMOeste</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputUTMOeste" placeholder="UTMOeste">
                                    </div>
                                </div>

                            </div>
                            <!--COMBOS PARA CARGAR CANTONES DE LA BASE DE DATOS  -->
                            <div class="col-md-6">
                                <label for="ooptionCantones" class="col-sm-2 control-label">Cantón</label>
                                <select title="Pick a number" class="form-control inputstl">
                                    <option>Selecccione...</option>
                                    <option>Relativa</option>
                                    <option>Absoluta</option>
                                </select>
                                <label for="ooptionCantones" class="col-sm-2 control-label">Parroquia</label>
                                <select title="Pick a number" class="form-control inputstl">
                                    <option>Selecccione...</option>
                                    <option>Relativa</option>
                                    <option>Absoluta</option>
                                </select><br>
                                <button type="submit" class="btn btn-default">Siguiente</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- SEGUNDA SECCION COLECCIÓN -PROYECTO -->
                <div class="tab-pane fade" id="Coleccion" role="tabpanel" aria-labelledby="contact-tab">
                    <div class="row">
                        <div class="col-md-5">
                            <h3 class="text-center m-4">Colección</h3>
                            <div class="form-group">
                                <label for="inputNombreC" class="col-sm-2 control-label">Colección</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputNombreC" placeholder="Nombre colección">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPropietario" class="col-sm-2 control-label"> Propietario</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPropietario" placeholder="Nombre Propietario">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputControl" class="col-sm-2 control-label"> Control</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputControl" placeholder="Control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputCurador" class="col-sm-2 control-label"> Curador</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputCurador" placeholder="Curador">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-7">
                            <h3 class="text-center m-4">Proyecto</h3>
                            <div class="row">
                                <label for="inputNombrePro" class="col-sm-2 control-label"> Nombre</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" rows="5" id="nombrePro"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="ooptionCantones" class="col-sm-2 control-label">Era</label>
                                    <select title="Pick a number" class="form-control inputstl">
                                        <option>Selecccione...</option>
                                        <option>Paleozóico</option>
                                        <option>Mezozóico</option>
                                        <option>Cenozóico</option>
                                    </select><br>
                                    <label for="ooptionPeriodo" class="col-sm-2 control-label">Periodo</label>
                                    <select title="Pick a number" class="form-control inputstl">
                                        <option>Selecccione...</option>
                                        <option>Cámbrico</option>
                                        <option>Ordovícico</option>
                                        <option>Silúrico</option>
                                        <option>Devónico</option>
                                        <option>Carbonífero Misisipiense</option>
                                        <option>Carbonífero Pensilvanien</option>
                                        <option>Pérmico</option>
                                        <option>Triásico</option>
                                        <option>Jurásico</option>
                                        <option>Silúrico</option>
                                        <option>Cretácico</option>
                                        <option>Terciario Paleógeno</option>
                                        <option>Terciario Neógeno</option>
                                        <option>Cuaternario</option>
                                    </select><br>
                                    <label for="ooptionEpoca" class="col-sm-2 control-label">Epoca</label>
                                    <select title="Pick a number" class="form-control inputstl">
                                        <option>Selecccione...</option>
                                        <option>Cámbrico Inferior</option>
                                        <option>Cámbrico Medio</option>
                                        <option>Cámbrico Superior</option>
                                        <option>Ordovícico Inferior</option>
                                        <option>Ordovícico Medio</option>
                                        <option>Ordovícico Superior</option>
                                        <option>Silúrico Inferior</option>
                                        <option>Silúrico Superior</option>
                                        <option>Devónico Inferior</option>
                                        <option>Devónico Medio</option>
                                        <option>Devónico Superior</option>
                                        <option>Carbonífero Misisipiense Inferior</option>
                                        <option>Carbonífero Pensilvianense Superior</option>
                                        <option>Pérmico Inferior</option>
                                        <option>Pérmico Superior</option>
                                        <option>Triásico Inferior</option>
                                        <option>Triásico Medio</option>
                                        <option>Triásico Superior</option>
                                        <option>Jurásico Inferior Lías</option>
                                        <option>Jurásico Medio Dogger</option>
                                        <option>Jurásico Superior Malm</option>
                                        <option>Cretácico Inferior Neocomiense</option>
                                        <option>Cretácico Inferior </option>
                                        <option>Cretácico Superior</option>
                                        <option>Cretácico Superior Senonense</option>
                                        <option>Paleoceno Inferior</option>
                                        <option>Paleoceno Superior</option>
                                        <option>Eoceno Inferior</option>
                                        <option>Eoceno Medio</option>
                                        <option>Eoceno Superior</option>
                                        <option>Oligoceno Inferior</option>
                                        <option>Oligoceno Superior</option>
                                        <option>Mioceno Inferior</option>
                                        <option>Mioceno Medio</option>
                                        <option>Plioceno Inferior</option>
                                        <option>Plioceno Superior</option>
                                        <option>Pleistoceno Inferior</option>
                                        <option>Pleistoceno Superior</option>
                                        <option>Holoceno</option>
                                    </select><br>
                                </div>
                                <div class="col-md-6">
                                    <h5>CRONOLOGÍA</h5>
                                    <select title="Pick a number" class="form-control inputstl">
                                        <option>Selecccione...</option>
                                        <option>Relativa</option>
                                        <option>Absoluta</option>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Atrás</button>
                            <button type="submit" class="btn btn-primary">Siguiente</button>
                        </div>
                    </div>
                </div>
                <!-- TERCERA SECCION FÓSIL-->
                <div class="tab-pane fade" id="Fosil" role="tabpanel" aria-labelledby="contact-tab">
                    <div class="row">
                        <div class="col-md-8">
                            <h3>Dimensiones</h3>
                            <div class="row">
                                <div class="col-md-2">
                                    <h6>Largo (cm)</h6>
                                    <input type="text" class="form-control" id="calles" placeholder="Descripción">
                                </div>
                                <div class="col-md-2">
                                    <h6>Ancho (cm.)</h6>
                                    <input type="text" class="form-control" id="calles" placeholder="Descripción">
                                </div>
                                <div class="col-md-2">
                                    <h6>Diám (cm.)</h6>
                                    <input type="text" class="form-control" id="calles" placeholder="Descripción">
                                </div>
                                <div class="col-md-2">
                                    <h6>Espesor (cm.)</h6>
                                    <input type="text" class="form-control" id="calles" placeholder="Descripción">
                                </div>
                                <div class="col-md-2">
                                    <h6>Peso (gr.)</h6>
                                    <input type="text" class="form-control" id="calles" placeholder="Descripción">
                                </div>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <h3>Detalles Generales</h3>
                            <div class="form-group">
                                <label for="inputEstadoConservacion" class="col-sm-2 control-label">Estado Conservacion</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEstadoConservacion" placeholder="Estado Conservacion">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputRegistrador" class="col-sm-2 control-label">Registrador</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputRegistrador" placeholder="Registrador">
                                </div>
                            </div>
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
                        </select><br>
                    </div>
                </div>
                </div>
            </div>

        </main>
        <!-- Parte inferior de la página (footer) -->
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
  <script src="Templates/js/jquery-3.3.1.min.js"></script>
  <script src="Templates/js/popper.min.js"></script>
  <script src="Templates/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="Templates/js/main.js"></script>
  <script type="text/javascript" src="Templates/js/easing.js"></script>
    </body>
</html>
