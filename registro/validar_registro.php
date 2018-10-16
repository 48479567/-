<?php 
require_once 'conexion/conexion.php';

$nom_usuario = $_POST["nom_usuario"];
$cor_usuario = $_POST["cor_usuario"];
$pas_usuario = $_POST["pas_usuario"];

$sql_us = "SELECT * FROM usuarios";
$res_us = $conn->query($sql_us);
$cantidad_usuarios = $res_us->num_rows + 1;
$cod_usuario="usu".$cantidad_usuarios;

$sql = "INSERT INTO usuarios values('$cod_usuario','$cor_usuario','$nom_usuario','$pas_usuario','rol1')";
$result = $conn->query($sql);

if($result){
    session_start();
    $_SESSION['usuario'] = $nom_usuario;
        $_SESSION['cod_usuario'] = $cod_usuario;
        echo '<script>
            window.location.replace("../projects/proyecto_msv/proyecto/vista_proyecto.php");</script>';  
}
?>
