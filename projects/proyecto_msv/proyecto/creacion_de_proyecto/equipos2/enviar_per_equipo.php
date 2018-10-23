<?php 
require_once 'conexion/conexion.php';

session_start();
$cod_equipo = $_SESSION['cod_equipo'];
$cod_usuario = $_POST['name1'];
$sql_us = "SELECT * FROM usu_equipo";
$res_us = $conn->query($sql_us);
$cant_usu_equ = $res_us->num_rows + 1;
$cod_usu_equ="eu".$cant_usu_equ;

$sql= "INSERT INTO usu_equipo values ('$cod_usu_equ','$cod_usuario','$cod_equipo')";
$result = $conn->query($sql);
if($result){
	echo '<script>
	window.location.replace("../crear_proyecto.php");</script>'; 
}

?>
