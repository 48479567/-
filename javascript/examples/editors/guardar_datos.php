<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();
$dom = $_POST['dom_muestra'];
$cod = $_POST['codigo_campo'];

$filtro_codigo = substr("$cod", 0, 3);

if($filtro_codigo == "pry") {
 $sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom' WHERE cod_proyecto = '$cod'"; 
} else {
 $sql_udp = "UPDATE pro_per SET dom_perspectiva = '$dom' WHERE cod_pro_per = '$cod'";
}

if (mysqli_query($conn, $sql_udp)) {
 
} else {
 echo "Error updating record: " . mysqli_error($conn);
}

?>