
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

<link rel="stylesheet" href="./style_vista_proyecto/style.css">

<title>ISG | <?=$_SESSION['usuario']?></title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark navegador">
	<a class="navbar-brand" href="#"> <img class="logo" src="./style_vista_proyecto/menu.png" alt="ISG" height="40px"> ISG</a>
  <div class="collapse navbar-collapse" id="navbar1">
    <ul class="navbar-nav ml-auto"> 
<li class="nav-item active">
<a class="nav-link" href="#"><?=$_SESSION['usuario']?></a>
</li>
<li class="nav-item"><a class="nav-link" href="./creacion_de_proyecto/crear_proyecto.php">Crear Proyecto</a></li>
<li class="nav-item">
<a class="btn ml-2 btn-warning" href="../../../">Salir</a></li>
    </ul>
  </div>
</nav>

<div>
<ul class="dinamic" style="background-image: url(bg7.jpg);">
<?php 
while($row = $res_pry1->fetch_assoc()) {
?>
  <li style="background-color:red;">
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="proyecto_descripcion text-white">
      <h2><?=$row['nom_proyecto']?></h2>
      <p>Ingresando al diagramador principal de forma colaborativa, este proyecto sera manejado solo por los usuarios autorizados.</p>
    </div>
      <form action="../../../javascript/examples/editors/diagrameditor.php" method="POST">
        <input type="text" class="oculto" name="cod_proyecto" value="<?=$row['cod_proyecto']?>"/>
        <input style="" class="alert btn_oculto" type="submit" id="<?=$row['cod_proyecto']?>" value="Ingresar"/>
        
      </form>
  </li>
<?php
}
?>
</ul>
</div>
<script src="../../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>