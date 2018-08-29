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


echo '
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div style="display: inline-block;" >

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
            <label for="cant_proyecto">Clave del Proyecto</label><input type="text"  id="cant_proyecto" value="pry'.$cantidad_proyectos.'"><br/>
            <label for="nom_proyecto">Nombre del Proyecto</label><input type="text" id="nom_proyecto" ><br/>
            <label for="nom_equipo">Nombre del Equipo</label><input type="text" id="nom_equipo" ><br/>
            <label for="">Nombre de la Perspectiva</label></br>';
            
            if($res_prg1->num_rows > 0){            
                while($row = $res_prg1->fetch_assoc()) {
                echo '
            <input type="checkbox" name="'.$row['nom_per_genral'].'" value="'.$row['nom_per_genral'].'" id="'.$row['nom_per_genral'].'">
            <label for="'.$row['nom_per_genral'].'">'.$row['nom_per_genral'].'</label><br>';
                }
            }
            
            echo '
            <label for="">Nombre de la Perspectiva</label></br>';
            
            if($res_equ1->num_rows > 0){            
                while($row1 = $res_equ1->fetch_array()) {
                echo '
            <input type="checkbox" name="'.$row1['cod_equipo'].'" value="'.$row1['cod_equipo'].'" id="'.$row1['cod_equipo'].'">
            <label for="'.$row1['cod_equipo'].'">'.$row1['cod_equipo'].'</label><br>';
                }
              }
        
        echo '  
            <input type="submit" value="Crear Proyecto">  
        </form>
        </fieldset>
    </article>
</section>
<footer>
</footer>
</body>
</html>'
?>
