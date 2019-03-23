
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

function obtenerPerspectivas($codigoProyecto, $coneccion) {
  $sql_per = 
    " SELECT pro_per.nom_perspectiva, pro_per.estado FROM pro_per 
      WHERE pro_per.cod_proyecto = '$codigoProyecto'";
  $res_per = $coneccion->query($sql_per);
  return $res_per;
}

$sql_pry1 = 
  " SELECT proyectos.cod_proyecto, proyectos.nom_proyecto, equipos.npm_equipo, usu_equipo.cod_equipo, proyectos.img_proyecto, proyectos.tmc_proyecto, pro_rol.nom_pro_rol FROM proyectos
    INNER JOIN pro_rol ON proyectos.cod_proyecto = pro_rol.cod_proyecto  
    INNER JOIN equipos ON proyectos.cod_equipo = equipos.cod_equipo 
    INNER JOIN usu_equipo ON usu_equipo.cod_equipo = equipos.cod_equipo 
    WHERE usu_equipo.cod_usuario = '$cod_usuario' AND pro_rol.cod_usuario = '$cod_usuario'
    ORDER BY proyectos.tmc_proyecto DESC
  ";


$res_pry1 = $conn->query($sql_pry1);
?>
<link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./style_vista_proyecto/style.css">
<link rel="stylesheet" href="style_vista_proyecto/slider/swiper.min.css">
<link rel="stylesheet" type="text/css" href="./popup/style.css">
<script type="text/javascript" src="./popup/jquery_js.min.js"></script> 

<link rel="stylesheet" href="style_vista_proyecto/slider/style.css">

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
      <li class="nav-item">
        <a class="nav-link" href="./creacion_de_proyecto/crear_proyecto.php">Crear Proyecto</a>
      </li>
      <li class="nav-item">
        <a class="btn ml-2 btn-warning" href="../../../">Salir</a>
      </li>
    </ul>
  </div>
</nav>

<div class="swiper-container">
  <div class="swiper-wrapper">
<?php 
while($row = $res_pry1->fetch_assoc()) {
  if ($row['nom_pro_rol'] == 'gestor') {
    $color = 'secondary';
  }
  else {
    $color = 'light';
  }
?>
    <div class="swiper-slide bg-<?=$color?>">
    <div class="imgBx">
      <img src="./popup/<?=$row['img_proyecto']?>">
    </div>
    <div class="details">
      <h3><?=$row['nom_proyecto']?></h3>
      <center>
        <div style="padding-top:5px;">
        <?php  
        $per_res = obtenerPerspectivas($row['cod_proyecto'], $conn);
        while($row_per = $per_res->fetch_assoc()) {
          if ($row_per['estado'] == 0) {
            $color_perspectiva = 'dark';
          } else {
            $color_perspectiva = 'primary';
          } ?>
          <a class="btn btn-<?=$color_perspectiva?> btn-sm " href="#" style="height:20px; font-size:10px"><?=$row_per['nom_perspectiva']?></a>
        <?php
        }
        ?>
        </div>
      </center>
      
      
      
      <form action="../../../javascript/examples/editors/diagrameditor.php" method="POST">
        <input type="text" class="oculto" name="cod_proyecto" value="<?=$row['cod_proyecto']?>"/>
        <input style="" class="alert btn_oculto" type="submit" id="<?=$row['cod_proyecto']?>" value="Ingresar"/>
        <input type="text" class="oculto" name="nom_proyecto" value="<?=$row['nom_proyecto']?>"/>
      </form>
    </div>
 </div>
<?php
}
?>  
</div>

<div class="swiper-pagination"></div>
</div>

<script src="style_vista_proyecto/slider/swiper.min.js"></script>
<script>
  var swiper = new Swiper('.swiper-container', {
    effect: 'coverflow',
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: 'auto',
    coverflowEffect: {
      rotate: 60,
      stretch: 0,
      depth: 300,
      modifier: 3,
      slideShadows : true,
    },
    pagination: {
      el: '.swiper-pagination',
    },
  });
</script>
<script src="../../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>