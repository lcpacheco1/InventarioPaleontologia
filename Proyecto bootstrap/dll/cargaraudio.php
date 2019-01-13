<?php 
	include("conexion.php");
	extract($_POST);

	//CARGAR AUDIOS A LA BASE DE DATOS
	if(isset($_POST['insertar']))//si apretamos el boton..
	{
		$titulo=$_POST['titulo'];
		$autor=$_POST['autor'];
		$duracion=120;
		$descripcion=$_POST['descripcion'];
		$cargaraudio=($_FILES['audio']['tmp_name']);//carga el archivo
		$audio=fopen($cargaraudio, 'rb');//leer el archivo como binario
		$cargarportada=($_FILES['portada']['tmp_name']);//cargar/obtener el archivo
		$portada=fopen($cargarportada, 'rb');//leer como binario
		$fecha=$_POST['fecha'];
		$Categoria_idCategoria=$_POST['Categoria_idCategoria'];
		$Persona_cedula=$_POST['Persona_cedula'];

		$insertarPJ=$conexion->prepare("INSERT INTO audio(duracion, autor, titulo, descripcion, portada, audio, fechaPublicacion, Categoria_idCategoria, Persona_cedula) VALUES(:duracion, :autor, :titulo, :descripcion, :portada, :audio, :fecha, :Categoria_idCategoria, :Persona_cedula)");
		$insertarPJ->bindParam(':duracion', $duracion, PDO::PARAM_STR);
		$insertarPJ->bindParam(':autor', $autor, PDO::PARAM_STR);
		$insertarPJ->bindParam(':titulo', $titulo, PDO::PARAM_STR);
		$insertarPJ->bindParam(':descripcion', $descripcion, PDO::PARAM_STR);
		$insertarPJ->bindParam(':portada', $portada, PDO::PARAM_LOB);
		$insertarPJ->bindParam(':audio', $audio, PDO::PARAM_LOB);
		$insertarPJ->bindParam(':fecha', $fecha, PDO::PARAM_STR);
		$insertarPJ->bindParam(':Categoria_idCategoria', $Categoria_idCategoria, PDO::PARAM_STR);
		$insertarPJ->bindParam(':Persona_cedula', $Persona_cedula, PDO::PARAM_STR);
		$insertarPJ->execute();
		echo "<script>location.href='../index.php'</script>";
		if($insertarPJ)//si la query se ejecuta con exito lanza el mensaje:
		{
			
			$mensaje="<div class='col-md-offset-4 col-md-4 alert alert-success text-center'>
			¡PERSONAJE AÑADIDO EXITOSAMENTE! <a href='index.php'>VER AQUÍ</a></div>";
		}

		else //pero si no se ejecuta correctamente, lanza el mensaje:
		{
			$mensaje="<div class='col-md-offset-4 col-md-4 alert alert-danger text-center'>
			¡EL PERSONAJE NO PUDO AGREGARSE!</div>";
		}
		fclose($audio);
		fclose($portada);
	}
?>