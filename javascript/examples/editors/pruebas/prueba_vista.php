<?php
require_once './conexion_prueba.php';

$sql_clt = "SELECT * FROM cliente";
$res_clt = mysqli_query($conn, $sql_clt); ?>

<table>
<?php
while ($row_clt = mysqli_fetch_assoc($res_clt)) { ?> 
<tr>
  <td><?=$row_clt['id']?></td>
  <td><?=$row_clt['nombre']?></td>
  <td><?=$row_clt['direccion']?></td>
</tr>
<?php
} ?>
</table>