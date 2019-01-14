<?php
include("conexion.php");
	extract($_POST);
	if (isset($_POST['eliminarr'])) {
        $eliminar=$conexion->query("DELETE FROM `usuario` WHERE `usuario`.`cedula` ='$cedula'");
        echo '<script>alert("Usuario eliminado!!!")</script>';
		echo "<script>location.href='adminReg.php?ced=$Persona_cedula #carouselExampleIndicators'</script>";
	
	}elseif (isset($_POST['modificarr'])) {
		$nombres=$_POST['nombres'];
		$apellidos=$_POST['apellidos'];
		$correo=$_POST['correo'];
        $rol=$_POST['rol'];
        echo '<script>alert("Usuario modificado correctamente!!!")</script>';
		$modificar=$conexion->query("UPDATE `usuario` SET `nombres` = '$nombres', `apellidos` = '$apellidos', `correo` = '$correo', `rol` = '$rol' WHERE `usuario`.`cedula` ='$cedula'");
		echo "<script>location.href='adminReg.php?ced=$Persona_cedula #carouselExampleIndicators'</script>";
	}
?>