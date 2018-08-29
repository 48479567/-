<?php 

require_once '../conexion.php';



$sql_equ2 = "SELECT cod_equipo FROM usu_equipo WHERE cod_usuario = 'usu00000001'";
$res_equ2 = $conn->query($sql_equ2);

if($res_equ2->num_rows > 0){            
    while($row = $res_equ2->fetch_assoc()) {
    echo '
<input type="checkbox" name="'.$row['cod_equipo'].'" value="'.$row['cod_equipo'].'" id="'.$row['cod_equipo'].'">
<label for="'.$row['cod_equipo'].'">'.$row['cod_equipo'].'</label><br>';
    }
}

?>