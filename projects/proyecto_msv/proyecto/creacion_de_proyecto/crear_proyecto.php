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
<a class="btn ml-2 btn-warning" href="../../../../">Salir</a></li>
    </ul>
  </div>
</nav>

<section class="aboutus bg-secondary text-white py-5" id="aboutus" style="height:100%">
<div class="mx-auto">
    <div class="container">
        <div class="row">
        
            <div class="col-md-8 col-sm-6 col-xs-12">
            <div class="pb-3"></div>
                    <h2>Datos Principales del Proyecto a Crear</h2>
                    <div class="py-2"></div>
                    <p>Creacion del Proyecto ISG para el trabajo colaborativo.</p>
                    <div class="py-2"></div>
                    
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
                                    <label for="cod_proyecto">Clave del Proyecto</label><input type="text"  id="cod_proyecto" name="cod_proyecto" value="pry<?=$cantidad_proyectos?>"><br/>
                                </div>
                                <div class="input-group-addon">
                                    <i class="fa fa-address-card"></i>
                                </div>
                                <label for="nom_equipo" style="float:left">Nombre del Proyecto:</label>
                                <input type="text" id="nom_proyecto" name="nom_proyecto" class="form-control"><br/>
                                <label for="nom_equipo" style="float:left">Nombre del Equipo:</label>
                                
                                <input list="nom_equipo" name="nom_equipo" class="form-control" autocomplete="off">
                                    <datalist id="nom_equipo" >
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
                                <label for="nom_equipo" style="float:left">Elige una imagen: </label>
                            </div>
                            <br>
                            <img src="" height="150px" id="img_previa" >
                            <div class="form-group">
                            <button type='button' class="btn btn-warning" data-toggle="modal" data-target="#popUpWindow">Lista de Imágenes</button>
                            <div class="modal fade" id="popUpWindow">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                      <!-- header -->
                                      
                                      <!-- body -->
                                      <div class="box">
                                       
                                          <div class="image ">
                                            <img src="../popup/img1.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                                            <img src="../popup/img2.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                                            <img src="../popup/img3.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                                            <img src="../popup/img4.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                                            <img src="../popup/img5.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                                            <img src="../popup/img6.jpg" height="150px" width="150px" alt="" onclick="obtener_src(this)">
                                          </div>
                                          <input type="text" id="demo" style="display:none;"name="img_proyecto">
                                          </div>
                                      <!-- footer -->
                                      
                                    </div>
                                  </div>
                                </div>
                                <div>

                            <div class="form-group">
                                <p>No tienes un equipo?<p>
                                <a type="button" href="equipos/crear_nom_equipo.php" class="btn btn-secondary" value="Crear Equipo">Crear Equipo</a>
                            </div>
                         <div class="form-group">
                           <input type="submit" class="btn btn-primary" value="Crear Proyecto">
                         </div>   
                        </form>
                                  

                            <textarea style="display:none;" name="dom_proyecto" id="dom_proyecto" cols="30" rows="20">&lt;mxGraphModel&gt;
  &lt;root&gt;
    &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;
      &lt;mxCell/&gt;
    &lt;/Diagram&gt;
    &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;
      &lt;mxCell parent=&quot;0&quot;/&gt;
    &lt;/Layer&gt;
    &lt;Rect label=&quot;Insertar Insumos&quot; href=&quot;&quot; id=&quot;364&quot;&gt;
      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;296.2232742626834&quot; y=&quot;271.9704433497536&quot; width=&quot;100&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Rect&gt;
    &lt;Text label=&quot;INSUMOS&quot; href=&quot;&quot; id=&quot;365&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;316.2232742626834&quot; y=&quot;242.97044334975362&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;366&quot;&gt;
      &lt;mxCell style=&quot;rounded;strokeColor=orange;fillColor=orange;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;460.2232742626834&quot; y=&quot;135.97044334975362&quot; width=&quot;272&quot; height=&quot;342&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Roundrect&gt;
    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;367&quot;&gt;
      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;1&quot; source=&quot;364&quot; target=&quot;366&quot; edge=&quot;1&quot;&gt;
        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Connector&gt;
    &lt;Roundrect label=&quot;&quot; href=&quot;&quot; id=&quot;368&quot;&gt;
      &lt;mxCell style=&quot;rounded;strokeColor=yellow;fillColor=yellow;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;460.2232742626834&quot; y=&quot;222.97044334975362&quot; width=&quot;260&quot; height=&quot;160&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Roundrect&gt;
    &lt;Text label=&quot;DIRIGEN / ORGANIZACION&quot; href=&quot;&quot; id=&quot;369&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;530.2232742626834&quot; y=&quot;135.97044334975362&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Text label=&quot;ACTORES&quot; href=&quot;&quot; id=&quot;370&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;555.2232742626834&quot; y=&quot;392.9704433497536&quot; width=&quot;60&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Text label=&quot;Insertar Directores&quot; href=&quot;&quot; id=&quot;371&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;485.2232742626834&quot; y=&quot;155.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Text label=&quot;Insertar Actores&quot; href=&quot;&quot; id=&quot;372&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;475.2232742626834&quot; y=&quot;407.9704433497536&quot; width=&quot;90&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Rect label=&quot;Función 1&quot; href=&quot;&quot; id=&quot;373&quot;&gt;
      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;480.2232742626834&quot; y=&quot;252.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Rect&gt;
    &lt;Rect label=&quot;Función 2&quot; href=&quot;&quot; id=&quot;374&quot;&gt;
      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;609.7232742626834&quot; y=&quot;252.97044334975362&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Rect&gt;
    &lt;Rect label=&quot;Función 3&quot; href=&quot;&quot; id=&quot;375&quot;&gt;
      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;479.7232742626834&quot; y=&quot;302.9704433497536&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Rect&gt;
    &lt;Rect label=&quot;Función 4&quot; href=&quot;&quot; id=&quot;376&quot;&gt;
      &lt;mxCell style=&quot;strokeColor=orange;shadow=1;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;609.7232742626834&quot; y=&quot;302.9704433497536&quot; width=&quot;80&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Rect&gt;
    &lt;Rect label=&quot;Inserte Productos o Servicios&quot; href=&quot;&quot; id=&quot;377&quot;&gt;
      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;813.2232742626834&quot; y=&quot;272.9704433497536&quot; width=&quot;150&quot; height=&quot;70&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Rect&gt;
    &lt;Rect label=&quot;Insertar Reguladores&quot; href=&quot;&quot; id=&quot;378&quot;&gt;
      &lt;mxCell parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;813.2232742626834&quot; y=&quot;155.97044334975362&quot; width=&quot;140&quot; height=&quot;40&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Rect&gt;
    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;379&quot;&gt;
      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;1&quot; source=&quot;366&quot; target=&quot;378&quot; edge=&quot;1&quot;&gt;
        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;&gt;
          &lt;Array as=&quot;points&quot;&gt;
            &lt;mxPoint x=&quot;762.2232742626834&quot; y=&quot;175.97044334975362&quot;/&gt;
          &lt;/Array&gt;
        &lt;/mxGeometry&gt;
      &lt;/mxCell&gt;
    &lt;/Connector&gt;
    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;380&quot;&gt;
      &lt;mxCell style=&quot;arrowConnector&quot; parent=&quot;1&quot; source=&quot;366&quot; target=&quot;377&quot; edge=&quot;1&quot;&gt;
        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Connector&gt;
    &lt;Text label=&quot;BENEFICIARIOS&quot; href=&quot;&quot; id=&quot;381&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;838.2232742626834&quot; y=&quot;382.9704433497536&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;382&quot;&gt;
      &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;838.2232742626834&quot; y=&quot;407.9704433497536&quot; width=&quot;90&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Image&gt;
    &lt;Text label=&quot;Insertar Beneficiarios&quot; href=&quot;&quot; id=&quot;383&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;828.2232742626834&quot; y=&quot;477.9704433497536&quot; width=&quot;120&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Text label=&quot;PRODUCTOS / SERVICIOS&quot; href=&quot;&quot; id=&quot;384&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;813.2232742626834&quot; y=&quot;242.97044334975362&quot; width=&quot;160&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Text label=&quot;REGULADORES&quot; href=&quot;&quot; id=&quot;385&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;843.2232742626834&quot; y=&quot;155.97044334975362&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Connector label=&quot;&quot; href=&quot;&quot; id=&quot;386&quot;&gt;
      &lt;mxCell style=&quot;straightConnector&quot; parent=&quot;1&quot; source=&quot;377&quot; target=&quot;381&quot; edge=&quot;1&quot;&gt;
        &lt;mxGeometry relative=&quot;1&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Connector&gt;
    &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;387&quot;&gt;
      &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;170.2232742626834&quot; y=&quot;252.97044334975362&quot; width=&quot;60&quot; height=&quot;110&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Image&gt;
    &lt;Text label=&quot;PROVEEDORES&quot; href=&quot;&quot; id=&quot;388&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;150.2232742626834&quot; y=&quot;257.9704433497536&quot; width=&quot;100&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
    &lt;Text label=&quot;Inserte proveedores&quot; href=&quot;&quot; id=&quot;389&quot;&gt;
      &lt;mxCell style=&quot;text&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;
        &lt;mxGeometry x=&quot;145.2232742626834&quot; y=&quot;352.9704433497536&quot; width=&quot;110&quot; height=&quot;20&quot; as=&quot;geometry&quot;/&gt;
      &lt;/mxCell&gt;
    &lt;/Text&gt;
  &lt;/root&gt;
&lt;/mxGraphModel&gt;</textarea>
                        

    <script>
    function obtener_src(img) {
      var src_img = img.src;
      var src_img_int = src_img.split("/");
      var input_vista = document.getElementById("demo");
      var img_previa = document.getElementById("img_previa");
     $('#popUpWindow').modal('toggle');
     img_previa.src=src_img;
      return input_vista.value = src_img_int[8];
    }
    </script>
  <script src="../../../../bootstrap/js/bootstrap.min.js"></script>
  
</body>
</html>

