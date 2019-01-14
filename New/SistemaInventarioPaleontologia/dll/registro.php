<?php 
	include ("conexion.php");
	extract ($_POST);
	//echo "".$txtNombre;
	//echo "".$txtApellido;
	if (isset($registrar)) {
		if ($txtPassword == $txtCoPassword) {
            $contarUsers=$conexion->query("SELECT MAX(idUsuario) FROM usuario");
		    $ids = $contarUsers->fetch();
			$consulta = $conexion->prepare("insert into usuario values($ids[0]+1,'$txtCedula','$txtNombre','$txtApellido','$txtCorreo','$txtPassword','Usuario')");
			//echo "".$consulta;
			$consulta->execute();
			echo '<script>alert("Datos guardados")</script>';
			echo "<script>location.href='userReg.php?ced=$txtCedula'</script>";
		}else{
			echo '<script>alert("Las contrasenas no coinciden")</script>';
			echo "<script>location.href='../index.php'</script>";
		}
	}
	
	
 ?>