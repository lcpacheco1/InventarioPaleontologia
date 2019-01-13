<?php 
	include ("conexion.php");
	extract ($_POST);
	//echo "".$txtNombre;
	//echo "".$txtApellido;
	if (isset($registrar)) {
		if ($txtPassword == $txtCoPassword) {
			$consulta = $conexion->prepare("insert into persona values('$txtCedula','$txtNombre','$txtApellido','$txtCorreo','$txtNacimiento','$txtPassword','usuario')");
			//echo "".$consulta;
			$consulta->execute();
			echo '<script>alert("Datos guardados")</script>';
			echo "<script>location.href='../user_reg.php?ced=$txtCedula'</script>";
		}else{
			echo '<script>alert("Las contrasenas no coinciden")</script>';
			echo "<script>location.href='../index.php'</script>";
		}
	}

	if (isset($publicar)) {
		$consulta = $conexion->prepare("insert into comentario values('','$mensaje','2018-07-18','','$idAudio','$cedula')");
		//$consulta2 = $conexion->query("select max(idComentario) from comentario");
		//while ($line=$consulta2->fetch(PDO::FETCH_NUM)) {
		//	$idAud=$line[0];
		//}
		//echo "string".$idAud[0];
		$consulta->execute();
		echo "<script>location.href='../audio_r.php?id2=$idAudio&ced=$cedula&autoplay=false'</script>";
	}
	
	
 ?>