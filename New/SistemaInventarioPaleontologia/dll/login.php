
<script language= javascript type= text/javascript >
function Presionar(){  	//document.write("er");
	alert (" EXITO");
	document.getElementById('login').click();
}
</script>

<?php
extract ($_POST);
$cuenta = false;
/*Incluimos el fichero de la clase*/ 
require 'conexion.class.php'; 
 
/*Creamos la instancia del objeto. Ya estamos conectados*/ 
$bd=conexion::getInstance(); 
 
/*Creamos una query sencilla*/ 
$sql='SELECT * FROM usuario'; 
 
/*Ejecutamos la query*/ 
$stmt=$bd->consultar($sql); 

/*Realizamos un bucle para ir obteniendo los resultados*/
while ($line=$bd->obtener_fila($stmt,0)){ 
    if ($line['correo']==$txtEmail and $line['contrasenia']==$txtContraseña and $line['rol']=='Usuario') {
        echo "<script>location.href='userReg.php?ced=$line[1]'</script>";
        $cuenta = true;
    }elseif($line['correo']==$txtEmail and $line['contrasenia']==$txtContraseña and $line['rol']=='Administrador'){
        echo "<script>location.href='adminReg.php?ced=$line[1]'</script>";
        $cuenta = true;
    } 
} 

if (!$cuenta) {
    echo '<script>alert("Usuario y/o contrasena incorrectos")</script>';
    echo "<script>location.href='../index.php'</script>";
    echo "<script type='text/javascript'>";
    echo "Presionar()"; 
     echo "</script> ";
}     
?>