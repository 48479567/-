<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();
$cod_usu_proyecto = $_SESSION['cod_usuario'];

if(isset($_POST['cod_proyecto'])) {
  $cod_proyecto = $_POST['cod_proyecto'];
  $nom_proyecto = $_POST['nom_proyecto'];
} else {
  $cod_proyecto = $_SESSION['cod_proyecto'];
  $nom_proyecto = $_SESSION['nom_proyecto'];
}
$_SESSION['cod_proyecto'] = $cod_proyecto;
$_SESSION['nom_proyecto'] = $nom_proyecto;

$sql_sdp = 
	"	SELECT * FROM proyectos 
		WHERE cod_proyecto = '$cod_proyecto'";

$res_sdp = mysqli_query($conn, $sql_sdp);

while($row = mysqli_fetch_assoc($res_sdp)) {
  $dom_proyecto = $row['dom_proyecto'];
  $nom_proyecto = $row['nom_proyecto'];
  $cod_equipo = $row['cod_equipo'];
}

$sql_usu_equipo = 
	"	SELECT usuarios.nom_usuario, usuarios.cor_usuario, usu_equipo.cod_usuario 
		FROM usuarios 
		INNER JOIN usu_equipo ON usuarios.cod_usuario = usu_equipo.cod_usuario 
		WHERE usu_equipo.cod_equipo = '$cod_equipo'";

$res_usu_equipo = mysqli_query($conn, $sql_usu_equipo);

$dom_proyecto = str_replace('<mxGraphModel>','<mxGraphModel as="model">', $dom_proyecto);

$_SESSION['dom_proyecto'] = $dom_proyecto;
?>