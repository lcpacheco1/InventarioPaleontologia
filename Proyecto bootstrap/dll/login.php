
<script language= javascript type= text/javascript >
function Presionar(){  	//document.write("er");
	alert (" EXITO");
	document.getElementById('login').click();
}
</script>

<?php
include ("conexion.php");
extract ($_POST);

//	class Login{
		
		//echo "string";
		$cuenta = false;

//		function Validacion(){
			//echo "string";
			$consulta = $conexion->query("select* from persona");
			while($line=$consulta->fetch(PDO::FETCH_BOTH)) {
		    	if ($line['correo']==$txtEmail and $line['contrasenia']==$txtContraseña and $line['rol']=='usuario') {
		    		echo "<script>location.href='../user_reg.php?ced=$line[0]'</script>";
		    		$cuenta = true;
		    	}elseif($line['correo']==$txtEmail and $line['contrasenia']==$txtContraseña and $line['rol']=='administrador'){
		    		echo "<script>location.href='../admin.php?ced=$line[0]'</script>";
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