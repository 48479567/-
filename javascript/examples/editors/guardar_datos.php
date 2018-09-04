<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();
$dom_proyecto = $_POST['dom_proyecto'];
$cod_proyecto = $_POST['cod_proyecto'];

$sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom_proyecto' WHERE cod_proyecto = '$cod_proyecto'";

if (mysqli_query($conn, $sql_udp)) {
    $_SESSION['cod_proyecto'] = $cod_proyecto;
    $_SESSION['dom_proyecto'] = $cod_proyecto;
    echo '<script>alert ("Cambios Realizados");
            window.location.replace("../../../projects/proyecto_msv/proyecto/vista_proyecto.php");</script>';
} else {
    echo "Error updating record: " . mysqli_error($conn);
}

?>