<?php 
require_once 'conexion/conexion.php';
session_start();
$cod_us_eq = $_SESSION['cod_usuario'];
$npm_equipo = $_POST["npm_equipo"];


$sql_us = "SELECT * FROM equipos";
$res_us = $conn->query($sql_us);
$cantidad_equipos = $res_us->num_rows + 1;
$cod_equipo="equ".$cantidad_equipos;

$sql_us_eq = "SELECT * FROM usu_equipo";
$res_us_eq = $conn->query($sql_us_eq);
$cant_usu_equipo = $res_us_eq->num_rows + 1;
$cod_usu_equipo = "eu".$cant_usu_equipo;

$sql = "INSERT INTO equipos values('$cod_equipo','$npm_equipo');";
$sql.= "INSERT INTO usu_equipo VALUES ('$cod_usu_equipo', '$cod_us_eq', '$cod_equipo')";

$result = mysqli_multi_query($conn, $sql);

if($result){
    session_start();
        $_SESSION['npm_equipo']=$npm_equipo;
        $_SESSION['cod_equipo']=$cod_equipo;
        echo '<script>
            window.location.replace("crear_per_equipo.php");</script>';  
}
?>