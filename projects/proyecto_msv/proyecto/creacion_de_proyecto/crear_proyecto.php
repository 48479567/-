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
                                <input type="text" id="nom_proyecto" name="nom_proyecto" class="form-control" placeholder="Nombre del Proyecto"><br/>
                            </div>
                            <div class="form-group">
                                <label for="nom_equipo" style="float:left">Nombre del Equipo:</label>
                                
                                <input list="nom_equipo" name="nom_equipo" class="form-control">
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
                            </div>
                            <div class="form-group">
                                <p>No tienes un equipo?<p>
                                <a type="button" href="equipos/crear_equipo.php" class="btn btn-secondary" value="Crear Equipo">Crear Equipo</a>
                            </div>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <textarea style="display:none;" name="dom_proyecto" id="dom_proyecto" cols="30" rows="20">&lt;mxGraphModel&gt;   &lt;root&gt;     &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;       &lt;mxCell/&gt;     &lt;/Diagram&gt;     &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;       &lt;mxCell parent=&quot;0&quot;/&gt;     &lt;/Layer&gt;     &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;2&quot;&gt;       &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;         &lt;mxGeometry x=&quot;130&quot; y=&quot;360&quot; width=&quot;80&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;       &lt;/mxCell&gt;     &lt;/Image&gt;   &lt;/root&gt; &lt;/mxGraphModel&gt;</textarea>
                        

                            
                    </div>
                </div>    
            </div>
            
                </div>
    </div>
</div>

<script src="../../../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

