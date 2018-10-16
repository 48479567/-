<?php
require_once './conexion_prueba.php';

$usuario = $_POST['usuario_entrante'];
$direccion = $_POST['direccion_entrante'];

$sql_ins1 = "INSERT INTO cliente (nombre, direccion) VALUES ('$usuario', '$direccion')";

if (mysqli_query($conn, $sql_ins1)) {
} else {
echo "Error: <br>" . mysqli_error($conn);
}
?>




