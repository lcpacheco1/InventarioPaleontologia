<?php
//require_once ("../dominio/puertos/BDInterface.interface.php");
//require_once("BDInterface.interface.php");

class ConexionMySQL implements BDInterface{ 
    public function conexion(){
        echo "<br>Se estableció conexión a BD MySQL"; 
    }
}
?>