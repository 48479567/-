
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<?php
require_once '../base_de_datos/conexion.php';
session_start();
$cod_usuario = $_SESSION['cod_usuario'];
echo '';

$var_consulta= "SELECT * FROM usuarios";
$var_resultado = $conn->query($var_consulta);

$sql_equ1 = "SELECT usu_equipo.cod_equipo, equipos.npm_equipo FROM usu_equipo INNER JOIN equipos ON usu_equipo.cod_equipo = equipos.cod_equipo WHERE usu_equipo.cod_usuario = '$cod_usuario'";
$res_equ1 = $conn->query($sql_equ1);

$sql_pry1 = "SELECT proyectos.cod_proyecto, proyectos.nom_proyecto, equipos.npm_equipo, usu_equipo.cod_equipo, proyectos.tmc_proyecto FROM ((proyectos INNER JOIN equipos ON proyectos.cod_equipo = equipos.cod_equipo) INNER JOIN usu_equipo ON usu_equipo.cod_equipo = equipos.cod_equipo) WHERE usu_equipo.cod_usuario = '$cod_usuario' ORDER BY proyectos.tmc_proyecto DESC";
$res_pry1 = $conn->query($sql_pry1);
?>
<link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
<title>ISG | <?=$_SESSION['usuario']?></title>
</head>
<body>

<h1><?=$_SESSION['usuario']?></h1>


<ul>
<?php 
while($row = $res_pry1->fetch_assoc()) {
?>
  <li><form action="../../../javascript/examples/editors/diagrameditor.php" method="POST">
        <input type="text" name="cod_proyecto" value="<?=$row['cod_proyecto']?>"/>
        <input type="submit" id="<?=$row['cod_proyecto']?>" onsubmit ="<?=$row['cod_proyecto']?>()" value="<?=$row['nom_proyecto']?>"/>
      </form></li></br>
<?php
}
?>
</ul>

</br>
</br>
<a href="./creacion_de_proyecto/crear_proyecto.php">Crear Proyecto</a>

<script src="../../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>