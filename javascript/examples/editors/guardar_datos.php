<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
$dom_proyecto = $_POST['ingreso'];

$sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom_proyecto' WHERE cod_proyecto = 'pry1'";

if (mysqli_query($conn, $sql_udp)) {
    header("Location: ./diagrameditor.php"); exit;
} else {
    echo "Error updating record: " . mysqli_error($conn);
}

?>