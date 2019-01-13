<?php 
	extract($_POST);
	$buscar=$_POST['busqueda'];
	echo "<script>location.href='../busquedas.php?buscar=".$buscar."'</script>";
?>