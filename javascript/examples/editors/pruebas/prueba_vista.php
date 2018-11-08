<?php
require_once './conexion_prueba.php';
session_start();
$nombre = $_POST['nombre'];
$sql_clt = "SELECT * FROM cliente WHERE nombre = '$nombre'";
$res_clt = mysqli_query($conn, $sql_clt); 
$acumulador = ""; ?>

<table>
<?php
while ($row_clt = mysqli_fetch_assoc($res_clt)) { ?> 
<tr>
  <td><?=$row_clt['id']?></td>
  <td><?=$row_clt['nombre']?></td>
  <td><?=$row_clt['direccion']?></td>
</tr>
<?php
  $acumulador .= $row_clt['id'];
} 
echo "$acumulador";
 
?>
</table>
