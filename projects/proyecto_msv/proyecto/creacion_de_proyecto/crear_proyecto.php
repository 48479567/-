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
    <title>Document</title>
</head>
<body>
<div style="display: inline-block;">

</div>

<header>
    <h1>Ingenieria de Sistemas de Gestión</h1>
</header>

<section>
    <nav>
    </nav>

    <article style="display:inline-block">
        <fieldset>
        <legend>Crear Proyecto</legend>
        <form action="validacion_creacion_proyecto.php" method="POST">
            <label for="cod_proyecto">Clave del Proyecto</label><input type="text"  id="cod_proyecto" name="cod_proyecto" value="pry<?=$cantidad_proyectos?>"><br/>
            <label for="nom_proyecto">Nombre del Proyecto</label><input type="text" id="nom_proyecto" name="nom_proyecto"><br/>
            <label for="nom_equipo">Nombre del Equipo</label><br/>
            <input list="nom_equipo" name="nom_equipo">
            <datalist id="nom_equipo">
<?php
            if($res_equ1->num_rows > 0){            
                while($row1 = $res_equ1->fetch_array()) {  
?>            
            <option value="<?=$row1['npm_equipo']?>">      
<?php
                }
            }
?>            
            </datalist><br/>
            <textarea name="dom_proyecto" id="dom_proyecto" cols="30" rows="20">&lt;mxGraphModel&gt;   &lt;root&gt;     &lt;Diagram label=&quot;My Diagram&quot; href=&quot;http://www.jgraph.com/&quot; id=&quot;0&quot;&gt;       &lt;mxCell/&gt;     &lt;/Diagram&gt;     &lt;Layer label=&quot;Default Layer&quot; id=&quot;1&quot;&gt;       &lt;mxCell parent=&quot;0&quot;/&gt;     &lt;/Layer&gt;     &lt;Image label=&quot;&quot; href=&quot;&quot; id=&quot;2&quot;&gt;       &lt;mxCell style=&quot;image&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;         &lt;mxGeometry x=&quot;130&quot; y=&quot;360&quot; width=&quot;80&quot; height=&quot;50&quot; as=&quot;geometry&quot;/&gt;       &lt;/mxCell&gt;     &lt;/Image&gt;   &lt;/root&gt; &lt;/mxGraphModel&gt;</textarea>
            <input type="submit" value="Crear Proyecto">  
        </form>
        </fieldset>
    </article>
</section>
<footer>
</footer>
</body>
</html>

