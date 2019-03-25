<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
$codigo_perspectiva = $_POST['codigo_perspectiva'];

$sql_verificar_perspectiva = 
  " UPDATE pro_per 
    SET estado = 1 
    WHERE cod_pro_per = '$codigo_perspectiva'";

if (mysqli_query($conn, $sql_verificar_perspectiva)) {

} else {
  echo "Error en la Verificación de la Perspectiva" . mysqli_error($conn);
}

?>