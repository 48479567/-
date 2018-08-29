<?php
require_once '../base_de_datos/conexion.php';
session_start();
$cod_usuario = $_SESSION['cod_usuario'];
echo '';

$var_consulta= "SELECT * FROM usuarios";
$var_resultado = $conn->query($var_consulta);

$sql_equ1 = "SELECT usu_equipo.cod_equipo, equipos.npm_equipo FROM usu_equipo INNER JOIN equipos ON usu_equipo.cod_equipo = equipos.cod_equipo WHERE usu_equipo.cod_usuario = '$cod_usuario'";
$res_equ1 = $conn->query($sql_equ1);

$sql_pry1 = "SELECT proyectos.nom_proyecto, equipos.npm_equipo, usu_equipo.cod_equipo FROM ((proyectos INNER JOIN equipos ON proyectos.cod_equipo = equipos.cod_equipo) INNER JOIN usu_equipo ON usu_equipo.cod_equipo = equipos.cod_equipo) WHERE usu_equipo.cod_usuario = '$cod_usuario' ";
$res_pry1 = $conn->query($sql_pry1);

 
echo'
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ISG | '.$_SESSION['usuario'].'</title>
</head>
<body>

  <h1>'.$_SESSION['usuario'].'</h1>
';


if($res_pry1->num_rows > 0){
  echo '
  <ul>';
  while($row = $res_pry1->fetch_assoc()) {
  echo '
    <li><a href="../../../javascript/examples/editors/diagrameditor.html">'.$row['nom_proyecto'].'</a></li></br>';
    $_SESSION['cod_proyecto'] = $row['cod_proyecto'];
  }
  echo '
  </ul>';
}
echo '
</br>
</br>
<a href="./creacion_de_proyecto/crear_proyecto.php" target="_blank">Crear Proyecto</a>

</body>
</html>'
?>