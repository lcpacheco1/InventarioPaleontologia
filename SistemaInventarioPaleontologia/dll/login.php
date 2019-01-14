
<script language= javascript type= text/javascript >
function Presionar(){  	//document.write("er");
	alert (" EXITO");
	document.getElementById('login').click();
}
</script>

<?php
include ("database.php");
extract ($_POST);

		$cuenta = false;

			$consulta = $conexion->query("select* from usuario");
			while($line=$consulta->fetch(PDO::FETCH_BOTH)) {
		    	if ($line['correo']==$txtEmail and $line['contrasenia']==$txtContraseña and $line['rol']=='Usuario') {
		    		echo "<script>location.href='../userReg.php?ced=$line[1]'</script>";
		    		$cuenta = true;
		    	}elseif($line['correo']==$txtEmail and $line['contrasenia']==$txtContraseña and $line['rol']=='Administrador'){
		    		echo "<script>location.href='../adminReg.php?ced=$line[1]'</script>";
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