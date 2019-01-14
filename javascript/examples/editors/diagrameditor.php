<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();
$cod_usu_proyecto = $_SESSION['cod_usuario'];

if(isset($_POST['cod_proyecto'])) {
    $cod_proyecto = $_POST['cod_proyecto'];
    $nom_proyecto = $_POST['nom_proyecto'];
} else {
    $cod_proyecto = $_SESSION['cod_proyecto'];
    $nom_proyecto = $_SESSION['nom_proyecto'];
}
$_SESSION['cod_proyecto'] = $cod_proyecto;
$_SESSION['nom_proyecto'] = $nom_proyecto;

$sql_sdp = "SELECT * FROM proyectos WHERE cod_proyecto = '$cod_proyecto'";
$res_sdp = mysqli_query($conn, $sql_sdp);

while($row = mysqli_fetch_assoc($res_sdp)) {
    $dom_proyecto = $row['dom_proyecto'];
    $nom_proyecto = $row['nom_proyecto'];
    $cod_equipo = $row['cod_equipo'];
    }

$sql_usu_equipo = "SELECT usuarios.nom_usuario, usuarios.cor_usuario, usu_equipo.cod_usuario FROM usuarios INNER JOIN usu_equipo ON usuarios.cod_usuario = usu_equipo.cod_usuario WHERE usu_equipo.cod_equipo = '$cod_equipo'";
$res_usu_equipo = mysqli_query($conn, $sql_usu_equipo);

$dom_proyecto = str_replace('<mxGraphModel>','<mxGraphModel as="model">', $dom_proyecto);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./diagramador.css">
    <link rel="stylesheet" href="./estilo_perspectiva.css">
    <title><?=$nom_proyecto?></title>

    <script type="text/javascript" src="./iniciacion_diagrama.js"></script>

    <script type="text/javascript" src="../../src/js/mxClient.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
    <script type="text/javascript" src="jquery_js.min.js"></script> 

<?php 
require_once 'funcionamiento_diagrama.php';
require_once 'funcionamiento_perspectiva.php';          
?>


<script>

$(document).ready(function() {
    $("#result").animate({scrollTop: $("#result")[0].scrollHeight});
 $(document).bind('keypress', function(e) {
 if(e.keyCode==13) {
            $("#result").animate({scrollTop: $("#result")[0].scrollHeight});
            $('#my_form').submit();
            $('#comment').val("");
        }
 });
});

</script>

<script type="text/javascript">

function post() {
$("#result").animate({scrollTop: $("#result")[0].scrollHeight});
var comment = document.getElementById("comment").value;
var name = document.getElementById("username").value;
var proyecto = document.getElementById("cod_proyecto1").value;

if(comment != ""){
$.ajax ({
 type: 'post',
 url: 'commentajax.php',
 data: {
     user_comm:comment,
            user_name:name,
            cod_proyecto:proyecto
 },
 success: function (response) {
 document.getElementById("comment").value="";
        }
 });
}   
return false;
}

</script>

<script>

function autoRefresh_div(){
            $("#result").load("load.php").show();
            // a function which

}

setInterval('autoRefresh_div()', 2000);

</script>


</head>

<body style="background-image:url('background_diagram.jpg')" onload="createEditor('config/diagrameditor.xml');">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="height:60px">
    <img class="logo" src="../../../projects/proyecto_msv/proyecto/style_vista_proyecto/menu.png" alt="ISG" height="40px">
    <a class="navbar-brand" id="perspectiva" href="#"></a>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item active" style="padding-left: 50px;"><div id="selectActions"></div>
    </li>
    </ul>
    <div class="collapse navbar-collapse" id="navbar1">
 <ul class="navbar-nav ml-auto"> 
<li class="nav-item active">
<a class="btn btn-success" href="./reporte.php" target="_blank">reporte</a>
</li>  
<li class="nav-item"><a class="nav-link" href="../../../projects/proyecto_msv/proyecto/vista_proyecto.php">Proyectos</a></li>
<li class="nav-item">
<a class="btn ml-2 btn-warning" href="../../../../-">Salir</a></li>
 </ul>
 </div>
</nav>


<?php /*
<div>
    <div id="toolbar"></div>
    <div id="graph_td" style="background-color:white">
        <div id="graph" tabindex="-1">
            <center id="splash">
                <img src="./images/loading.gif">
            </center>
        </div>
        <textarea id="xml"></textarea>
    </div>
    <div id="chat" style="background-image:url('background_chat.jpg');">
        <div id="result">
            <?php   
                $qry = "SELECT nom_usuario, mensaje, tiempo_mensaje FROM chats WHERE cod_proyecto = '$cod_proyecto'";
                $result = $conn->query($qry);
                while($row = $result->fetch_assoc()) {
                    $name = $row['nom_usuario'];
                    $comment = $row['mensaje'];
                    $time = $row['tiempo_mensaje'];   
                    if($name==$_SESSION['usuario']) {
                        $estilo_chat = 'background-color:#dcf8c5; margin:5px;';
                    } else {
                        $estilo_chat = 'background-color:#fff; margin:5px;';
                    }         
            ?>
            <div class="texto_chat" style="<?=$estilo_chat?>">
                <strong class="texto_chat"><?=$name?>: </strong><?=$comment?>
                <!--
                <p class="texto_chat"><?php //date("j/m/Y g:i:sa", strtotime($time))?></p>-->
            </div>
            <?php
                }
            ?>
        </div>
        <div>
            <form action="" method="post" onsubmit="return post();" id="my_form" name="my_form">
                <div>
                    <input type="text" class="oculto" id="username" value="<?=$_SESSION['usuario']?>"/>
                    <input type="text" class="oculto" id="cod_proyecto" name="cod_proyecto1" value="<?=$cod_proyecto?>"/>
                    <textarea id="comment"></textarea>
                </div>
                <div class="form-btn">
                    <input type="submit" value="enviar" id="btn" name="btn"/>
                </div>
            </form>
        </div>
    </div>
</div>


*/
?>
<div class="oculto" id="mainActions"></div>
                <div  id="toolbar">       
                </div>
                    <div id="graph"> 
                        <!-- Graph Here -->
                        <center id="splash">
                            <img src="images/loading.gif">
                        </center>
                    </div>
                    <textarea id="xml" class="oculto"></textarea>

                <div id="chat" style="background-image:url('background_chat.jpg');">

                    <div id="result">
<?php
                            $qry = "SELECT nom_usuario,mensaje,tiempo_mensaje FROM chats WHERE cod_proyecto = '$cod_proyecto'";
                            $result = $conn->query($qry);

                            while($row = $result->fetch_assoc()) {
                                $name=$row['nom_usuario'];
                                $comment=$row['mensaje'];
                                $time=$row['tiempo_mensaje'];
                                if($name==$_SESSION['usuario']){
                                    $estilo_chat = 'background-color:#dcf8c5; margin:5px;';
                                } else {
                                    $estilo_chat = 'background-color:#fff; margin:5px;';
                                }
?>
                            <div class="texto_chat" style="<?=$estilo_chat?>"> 
                                <strong class="texto_chat"><?=$name?>:</strong>
                                <?=$comment?> 
                                <!--
                                <p class="texto_chat"><?php //date("j/m/Y g:i:sa", strtotime($time))?></p>-->
                            </div>
                            
<?php
                            }
?>
                    </div>
            
</div> 
                <div style="position:absolute;left:85%;right:0;bottom:0;">
                        <form method="post" action="" onsubmit="return post();" id="my_form" name="my_form">
                                <input class="oculto" type="text" id="username" value="<?=$_SESSION['usuario']?>">
                                <input class="oculto" type="text" name="cod_proyecto" id="cod_proyecto1" value="<?=$cod_proyecto?>">
                                    <textarea type="text" id="comment" rows="3"></textarea>
                                    <input type="submit" value="»" id="btn" name="btn"/>
                        </form>
                </div>  
<div id="zoomActions" style="color:red;list-style: none;"></div>


<div style="position:absolute; top:60px;right:16%;">
<!--De esta parte se saca la variable $dom_perspectiva-->

<?php 
if ($rol_usuario == "gestor") { ?>

<button type='button' class="btn btn-dark btn-sm" data-toggle="modal" data-target="#popUpWindow">Aumentar Perspectiva</button>

<div class="modal fade" id="popUpWindow">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- header -->
            
            <!-- body -->
            <div class="box">
                <form action="" method="POST">
                                                    
<!--Esto Viene de la linea 23 -->
<?php 
    $cont_usu_equipo = 0;
    while($row_usu_equipo = mysqli_fetch_assoc($res_usu_equipo)) { ?>
                        <div class="inputBox">
                        <input type="text" class="input" name="nom_perspectiva<?=$cont_usu_equipo?>" required="" autocomplete="off">
                        <label>Nombre de la Perspectiva para <?=$row_usu_equipo['nom_usuario']?></label>
                        <input type="text" class="oculto" name="usu_perspectiva<?=$cont_usu_equipo?>" value="<?=$row_usu_equipo['cod_usuario']?>">
                        </div>              
<?php 
    $cont_usu_equipo++; 
    } ?>
                        <div>
                            <input type="text" class="oculto" name="cod_proyecto" value="<?=$cod_proyecto?>">
                            <input type="text" class="oculto" name="cont_usu_equipo" value="<?=$cont_usu_equipo?>">
                            <input type="submit" name="crear_perspectiva" value="Asignar Perspectiva">
                            
                        </div>
                </form>
            </div>
            <!-- footer -->
            
        </div>
    </div>
</div>

<?php 
} ?>       
    
</div>
    

    <?php 

        if(isset($_POST['crear_perspectiva'])) {
        $cod_proyecto_perspectiva = $_POST['cod_proyecto'];
        $cont_put_pro_per = $_POST['cont_usu_equipo'];

        $cant_pers_cod = $cantidad_perspectivas_total + 1;
        $cod_perspectiva_proyecto = "pro_per".$cant_pers_cod;

for ($i=0; $i < $cont_put_pro_per ; $i++) { 
        $nom_perspectiva = $_POST["nom_perspectiva$i"];
        $usu_perspectiva = $_POST["usu_perspectiva$i"];
        
        $sql_pro_per .= "INSERT INTO pro_per (cod_pro_per, nom_perspectiva, cod_proyecto, cod_usuario, dom_perspectiva) values ('$cod_perspectiva_proyecto', '$nom_perspectiva', '$cod_proyecto_perspectiva', '$usu_perspectiva', '$dom_perspectiva');";
        $cod_perspectiva_proyecto++;
}
            
        $sql_pro_per = substr($sql_pro_per, 0, -1);

        if(mysqli_multi_query($conn, $sql_pro_per)) { 
            $_SESSION['cod_proyecto'] = $cod_proyecto_perspectiva;
        ?>
        <script>
                        location.replace('../../../projects/proyecto_msv/proyecto/vista_proyecto.php');
                        location.replace('../../../javascript/examples/editors/diagrameditor.php');
                        </script>
    <?php 
        } else {
            echo 'no se pudo crear'.$conn->error;
        }
    
        }

        $cod_pro_per_entrante = array();
        $dom_pro_per_entrante = array();

        for ($index=0; $index < $cantidad_perspectivas; $index++) {
            $cod_pro_per_entrante["$index"] = "uno";
            $dom_pro_per_entrante["$index"] = "cero";
        }

        if (isset($_POST['guardar_cambios'])) {

            if(empty($_POST["cod_proyecto"])){  
            } else {
                $cod_proyecto = test_input($_POST["cod_proyecto"]);
            }
            if(empty($_POST["dom_proyecto"])){
            } else {
                $dom_proyecto = test_input($_POST["dom_proyecto"]);
            }

            
            $sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom_proyecto' WHERE cod_proyecto = '$cod_proyecto'";
            
            
            for ($index=0; $index < $cantidad_perspectivas; $index++) { 
                if(empty($_POST["cod_pro_per$index"])){
                } else {
                    $cod_pro_per_entrante["$index"] = test_input($_POST["cod_pro_per$index"]);
                }
                if(empty($_POST["dom_pro_per$index"])){
                } else {
                    $dom_pro_per_entrante["$index"] = test_input($_POST["dom_pro_per$index"]);
                }
            }
            for ($index=0; $index < $cantidad_perspectivas; $index++) {
                $sql_pro_per = "UPDATE pro_per SET dom_perspectiva = '$dom_pro_per_entrante[$index]' WHERE cod_pro_per = '$cod_pro_per_entrante[$index]'";
                if (mysqli_query($conn, $sql_pro_per)) {

                } else {
                    echo "Error updating record: " . mysqli_error($conn);
                }
            }
            
            if (mysqli_query($conn, $sql_udp)) { 
                $_SESSION['cod_proyecto'] = $cod_proyecto;?>
                <script>location.replace('../../../projects/proyecto_msv/proyecto/vista_proyecto.php');
                location.replace('../../../javascript/examples/editors/diagrameditor.php');</script>
    <?php 
            } else {
                    echo "Error updating record: " . mysqli_error($conn);
            }

            mysqli_close($conn);        
        }       
    ?>


    <div style="display:inline-block;position:absolute;top:60px;left:2%">
    <!--
        <form action="" method="POST"> 
    -->
        <!--Perspectiva General-->
            <div class="btn btn-success btn-sm" style="display:inline-block;margin:0">
                <div id="mostrar" onclick="etiqueta(this)" style="display:inline-block">General</div>
            </div>
            
            <input class="oculto" type="text" name="cod_proyecto" id="cod_proyecto" value="<?=$cod_proyecto?>">
            <textarea class="oculto" col="200" row="100" name=dom_proyecto id=ingreso></textarea>
            <textarea class="oculto" id="ingreso_out"><?=$dom_proyecto?></textarea>

            <?php
            $index = 0;
            while($row_prp2 = mysqli_fetch_assoc($res_prp)) {
                
                ?>
        <!--Perspectivas Especificas-->
            <div class="btn btn-primary btn-sm" style="display:inline-block">
                <div style="display:inline-block" class="<?=$row_prp2['cod_pro_per']?>" id='<?="per$index"?>' onclick="etiqueta(this)"/><?=$row_prp2["nom_perspectiva"]?></div>
            </div>
            <input class="oculto" type="text" name='<?="cod_pro_per$index"?>' id="<?="cod_pro_per$index"?>" value="<?=$row_prp2['cod_pro_per']?>">
            <textarea class="oculto" name=<?="dom_pro_per$index"?> id=<?="dom$index"?>><?=$row_prp2['dom_perspectiva']?></textarea>
            <textarea class="oculto" name="" id=<?="dom_out$index"?>></textarea>
    <?php
            $index++;
        }
    ?>

            <input class="oculto" type="text" id="etiqueta" value="previa_carga">
            <input class="oculto" type="text" id="codigo_campo">
            <textarea class="oculto" name="" id="previa_carga"><?=$cantidad_perspectivas?></textarea>
            <!--
            <input type="submit" class="btn btn-warning btn-sm" value="Guardar" name="guardar_cambios">
            
        </form>--> 
    </div>



<?php
    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
?>

<script>
    function etiqueta(contenidoButton) {
        var idButton = contenidoButton.id;
        var classButton = contenidoButton.className;
        var valButton = contenidoButton.innerHTML;
        var idTextArea = idButton.replace("per", "dom");
        var textArea = document.getElementById('etiqueta');
        var perspectiva = document.getElementById('perspectiva');
        $("#codigo_campo").val(classButton)
        if (idTextArea == "mostrar"){
            idTextArea = "ingreso";
            $("#codigo_campo").val(""+$("#cod_proyecto").val())
        }
        perspectiva.innerHTML = valButton;
        return textArea.value = idTextArea;
        
    }
</script>


<script>
<?php 
for($index_out=0; $index_out<$cantidad_perspectivas; $index_out++){ ?>

$("#per"+"<?=$index_out?>").mousedown(function(evento){
    evento.preventDefault()
    var cod_pro_per = $("#cod_pro_per"+"<?=$index_out?>").val()
    $("#dom_out"+"<?=$index_out?>").load("obtener_dom.php", {cod_pro_per: cod_pro_per}, function(){
    })
})

<?php
} ?>
</script>

<script>
$("#mostrar").mousedown(function(evento){
    evento.preventDefault()
    var cod_proyecto = $("#cod_proyecto").val()
    $("#ingreso_out").load("obtener_dom_proyecto.php", {cod_proyecto: cod_proyecto}, function(){
    })
})
</script>

<script>
$(window).bind('keydown', function(event) {
 if (event.ctrlKey || event.metaKey) {
 if (String.fromCharCode(event.which).toLowerCase()=="g") {
            event.preventDefault()
            var dom_muestra = $("#"+$("#etiqueta").val()).val()
            var codigo_campo = $("#codigo_campo").val()
            $.ajax({
                type: "post",
                url: "guardar_datos.php",
                data: {
                    dom_muestra: dom_muestra,
                    codigo_campo: codigo_campo
                },
                success: function(response){
                }
            })
 }
 }
})
</script>
<script src="../../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>