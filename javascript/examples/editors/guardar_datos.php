<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();
$dom_proyecto1 = $_POST['dom_proyecto'];
$cod_proyecto1 = $_POST['cod_proyecto'];

$sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom_proyecto1' WHERE cod_proyecto = '$cod_proyecto1'";

if (mysqli_query($conn, $sql_udp)) {
    $_SESSION['cod_proyecto'] = $cod_proyecto1;
    $_SESSION['dom_proyecto'] = $dom_proyecto1;
    
} else {
    echo "Error updating record: " . mysqli_error($conn);
}

?>