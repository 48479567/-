<?php 
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
$cod_proyecto = $_POST['cod_proyecto'];

$get_dom_proyecto = "SELECT * FROM proyectos WHERE cod_proyecto = '$cod_proyecto'";
$res_dom_proyecto =  mysqli_query($conn, $get_dom_proyecto);

while($row_dom_proyecto = mysqli_fetch_assoc($res_dom_proyecto)) { 
echo  $row_dom_proyecto['dom_proyecto'];
}

?>