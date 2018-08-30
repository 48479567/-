<?php
	session_start();
	require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
	$sql_sdp = "SELECT * FROM proyectos WHERE cod_proyecto = 'pry1'";
	$res_sdp = mysqli_query($conn, $sql_sdp);
	$dom_proyecto;

	while($row = mysqli_fetch_assoc($res_sdp)) {
		$dom_proyecto = $row['dom_proyecto'];
		}

	$dom_mod_proyecto = str_replace('<mxGraphModel>','<mxGraphModel as="model">', $dom_proyecto);
	
	echo $dom_mod_proyectos;

	?>