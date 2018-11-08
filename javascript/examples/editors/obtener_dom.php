<?php 
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
$cod_pro_per = $_POST['cod_pro_per'];

$get_dom_pro_per = "SELECT * FROM pro_per WHERE cod_pro_per = '$cod_pro_per'";
$res_dom_pro_per =  mysqli_query($conn, $get_dom_pro_per);

while($row_dom_pro_per = mysqli_fetch_assoc($res_dom_pro_per)) { 
echo  $row_dom_pro_per['dom_perspectiva'];
}

?>