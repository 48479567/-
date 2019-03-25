<?php 
if(isset($_POST['crear_perspectiva'])) {
  $cod_proyecto_perspectiva = $_POST['cod_proyecto'];
  $cont_put_pro_per = $_POST['cont_usu_equipo'];

	$cant_pers_cod = $cantidad_perspectivas_total + 1;
	$cod_perspectiva_proyecto = "pro_per".$cant_pers_cod;

	for ($i=0; $i < $cont_put_pro_per ; $i++) { 
		$nom_perspectiva = $_POST["nom_perspectiva$i"];
		$usu_perspectiva = $_POST["usu_perspectiva$i"];

		$sql_pro_per .= 
			"	INSERT INTO pro_per (cod_pro_per, nom_perspectiva, cod_proyecto, cod_usuario, dom_perspectiva) 
				VALUES ('$cod_perspectiva_proyecto', '$nom_perspectiva', '$cod_proyecto_perspectiva', '$usu_perspectiva', '$dom_perspectiva');";

		$cod_perspectiva_proyecto++;
	}

	$sql_pro_per = substr($sql_pro_per, 0, -1);

	if(mysqli_multi_query($conn, $sql_pro_per)) { 
    $_SESSION['cod_proyecto'] = $cod_proyecto_perspectiva;
?>

	<script>
    location.replace('../../../projects/proyecto_msv/proyecto/vista_proyecto.php');
    location.replace('../../../javascript/examples/editors/diagrameditor.php');
  </script>
<?php 
	} else {
    echo 'no se pudo crear'.$conn->error;
	}

}   
?>