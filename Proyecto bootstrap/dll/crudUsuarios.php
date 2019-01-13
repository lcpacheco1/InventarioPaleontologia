<?php
include("conexion.php");
	extract($_POST);
	if (isset($_POST['eliminarr'])) {
		$eliminar=$conexion->query("DELETE FROM `persona` WHERE `persona`.`cedula` ='$cedula'");
		echo "<script>location.href='../admin.php?ced=$Persona_cedula #usuarios'</script>";
	
	}elseif (isset($_POST['modificarr'])) {
		$nombres=$_POST['nombres'];
		$apellidos=$_POST['apellidos'];
		$correo=$_POST['correo'];
		$fechaNacimiento=$_POST['fechaNacimiento'];
		$rol=$_POST['rol'];
		$modificar=$conexion->query("UPDATE `persona` SET `nombres` = '$nombres', `apellidos` = '$apellidos', `correo` = '$correo', `fechaNacimiento` = '$fechaNacimiento', `rol` = '$rol' WHERE `persona`.`cedula` ='$cedula'");
		echo "<script>location.href='../admin.php?ced=$Persona_cedula #usuarios'</script>";
	}elseif (isset($_POST['insertar'])) {
		if ($txtPassword == $txtCoPassword) {
			$consulta = $conexion->prepare("insert into persona values('$txtCedula','$txtNombre','$txtApellido','$txtCorreo','$txtNacimiento','$txtPassword','$txtRol')");
			//echo "".$consulta;
			$consulta->execute();
			echo '<script>alert("Registro correcto!!!")</script>';
			echo "<script>location.href='../admin.php?ced=$Persona_cedula'</script>";
		}else{
			echo '<script>alert("Las contraseñas no coinciden !!!")</script>';
			echo "<script>location.href='../admin.php?ced=$Persona_cedula #usuarios'</script>";
		}
	}
?>