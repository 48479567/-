<?php 

require_once '../../base_de_datos/conexion.php';
session_start();
$cod_usuario = $_SESSION['cod_usuario'];

$sql_pry1 = "SELECT * FROM proyectos";
$res_pry1 = $conn->query($sql_pry1);
$cantidad_proyectos = $res_pry1->num_rows + 1;

$sql_prg1 = "SELECT * FROM perspectivas_generales";
$res_prg1 = $conn->query($sql_prg1);

$sql_equ1 = "SELECT usu_equipo.cod_equipo, equipos.npm_equipo FROM usu_equipo INNER JOIN equipos ON usu_equipo.cod_equipo = equipos.cod_equipo WHERE usu_equipo.cod_usuario = '$cod_usuario'";
$res_equ1 = $conn->query($sql_equ1);

require_once 'datos_proyecto.php';  
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../../../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../popup/style.css">
    <script type="text/javascript" src="../popup/jquery_js.min.js"></script> 
    <title>Document</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#"> <img class="logo" src="../style_vista_proyecto/menu.png" alt="ISG" height="40px"> ISG</a>
  <div class="collapse navbar-collapse" id="navbar1">
    <ul class="navbar-nav ml-auto"> 
      <li class="nav-item active">
        <a class="nav-link" href="#"><?=$_SESSION['usuario']?></a>
      </li>
      <li class="nav-item"><a class="nav-link" href="../vista_proyecto.php">Regresar a Proyectos</a></li>
      <li class="nav-item">
        <a class="btn ml-2 btn-warning" href="../../../../">Salir</a>
      </li>
    </ul>
  </div>
</nav>

<section class="aboutus py-4" id="aboutus">
  <div class="container">
    <div class="row">

      <div class="col-md-8 col-sm-6 col-xs-12">
        <div class="pb-3"></div>
        <h2>Datos Principales del Proyecto a Crear</h2>
        <div class="py-2"></div>
        <p>Creacion del Proyecto ISG para el trabajo colaborativo.</p>
        <div class="py-4"></div>  
        <p>Selecciona Una Imagen para como Portada del Proyecto</p>
          <div class="modal fade" id="popUpWindow">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="box">
                  <div class="image">
                    <img src="../popup/img1.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                    <img src="../popup/img2.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                    <img src="../popup/img3.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                    <img src="../popup/img4.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                    <img src="../popup/img5.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                    <img src="../popup/img6.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                  </div>
                </div>                      
              </div>
            </div>
          </div>
        <button type='button' class="btn btn-warning" id="btn_sel_imagen" data-toggle="modal" data-target="#popUpWindow">Lista de Imágenes</button>
      </div>

      <div class="clearfix visible-sm"></div>

      <div class="col-md-4 cod-sm-6 col-xs-12">
        <div class="card bg-success">
          <div class="card-body">
            
            <form action="validacion_creacion_proyecto.php" method="POST">
              <div class="form-group">
                <div class="input-group-addon">
                    <i class="fa fa-address-card"></i>
                </div>
                <div style="display:none;">
                    <label for="cod_proyecto">Clave del Proyecto</label><input type="text"  id="cod_proyecto" name="cod_proyecto" value="pry<?=$cantidad_proyectos?>" required><br/>
                </div>
                <div class="input-group-addon">
                    <i class="fa fa-address-card"></i>
                </div>
                <label for="nom_equipo" style="float:left">Nombre del Proyecto:</label>
                <input type="text" id="nom_proyecto" name="nom_proyecto" id="nom_proyecto" class="form-control" autocomplete="off" required><br/>
                <label for="nom_equipo" style="float:left">Nombre del Equipo:</label>
                
                <input list="nom_equipo" name="nom_equipo" id="nom_equipo_list" class="form-control" autocomplete="off" required>
                    <datalist id="nom_equipo">
                        <?php
                    if($res_equ1->num_rows > 0){            
                        while($row1 = $res_equ1->fetch_array()) {  
                            ?>            
                    <option class="form-control" value="<?=$row1['npm_equipo']?>">      
                            <?php
                        }
                    }
                    ?>            
                    </datalist>
              </div>

              <div class="form-group">
                <label>Imagen del Proyecto:</label>
                <center class="p-3 mb-2 bg-dark text-white">
                  <img id="img_previa" src="" width="150px" height="150px" style="visibility:hidden">
                </center>
                <input type="text" id="demo" style="display:none;"name="img_proyecto" required>
              </div>
              <div class="py-2"></div>
              <div class="form-group">
                <span>No tienes un equipo?
                <a href="equipos/crear_nom_equipo.php" class="btn btn-outline-dark" value="Crear Equipo" style="float:right">Crear Equipo</a></span>
              </div>
              <textarea style="display:none" name="dom_proyecto" id="dom_proyecto" cols="30" rows="20"><?=$dom_proyecto?></textarea>   
              <div class="py-4"></div>  
              <div style="position:absolute;right:5%">
                <input type="submit" class="btn btn-primary btn-lg" value="Crear Proyecto" onclick="verificarInputImagen(this)">
              </div>   
            </form>

          </div>
        </div>
      </div>
    </div>        
  </div>      
</section>

<script>
  function obtener_src(img) {
    var src_img = img.src;
    var src_img_int = src_img.split("/");
    var input_vista = document.getElementById("demo");
    var img_previa = document.getElementById("img_previa");
  $('#popUpWindow').modal('toggle');
  img_previa.src=src_img;
  img_previa.style.visibility='visible';
    return input_vista.value = src_img_int[8];
  }

  function verificarInputImagen(btnsubmit) {
    var inputImagen = document.getElementById('demo').value,
      inputProyecto = document.getElementById('nom_proyecto').value,
      inputEquipo = document.getElementById('nom_equipo_list').value,
      btnSelImagen = document.getElementById('btn_sel_imagen')

    if ((inputProyecto && inputEquipo) && !inputImagen) {
      alert('Falto Seleccionar Imagen');
      btnSelImagen.click();
    }
  }
</script>
<script src="../../../../bootstrap/js/bootstrap.min.js"></script>
  
</body>
</html>

