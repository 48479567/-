<?php 
require_once 'conexion/conexion.php';

session_start();
$cod_equipo = $_SESSION['cod_equipo'];
$cant_input = $_POST['cant_input'];

$sql_us = "SELECT * FROM usu_equipo";
$res_us = $conn->query($sql_us);
$cant_usu_equ = $res_us->num_rows + 1;
$sql_usu_equ = "";
for ($i=1; $i <= $cant_input ; $i++) { 
$cod_usuario = $_POST["name$i"];
$cod_usu_equ="eu".$cant_usu_equ;
$sql_usu_equ .= "INSERT INTO usu_equipo values ('$cod_usu_equ','$cod_usuario','$cod_equipo');";
$cant_usu_equ ++;
}

$result = mysqli_multi_query($conn, $sql_usu_equ);
if($result){
	echo '<script>
	window.location.replace("../crear_proyecto.php");</script>'; 
}

?>
