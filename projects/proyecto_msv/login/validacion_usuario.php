<?php 
require_once '../base_de_datos/conexion.php';

$txt_usuario = $_POST['txt_usuario'];
$psw_contrasenna = $_POST['psw_contrasenna'];

$sql = "SELECT * FROM usuarios WHERE cor_usuario = '$txt_usuario'";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    if($txt_usuario == $row['cor_usuario'] && $psw_contrasenna == $row['pas_usuario']){
        session_start();
        $_SESSION['usuario'] = $row['nom_usuario'];
        $_SESSION['cod_usuario'] = $row['cod_usuario'];
        echo '<script> window.location.replace("../proyecto/vista_proyecto.php");</script>';       
    } else {
        echo '<script>alert ("Datos Incorrectos");
            window.location.replace("../../..");</script>'; 
    }
    } 
} 
else {
    echo '<script>alert ("Datos Incorrectos");
        window.location.replace("../../..");</script>';
}
?>
