<?php

require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();
$cod_proyecto = $_SESSION['cod_proyecto'];
$qry = "SELECT nom_usuario,mensaje,tiempo_mensaje FROM chats WHERE cod_proyecto = '$cod_proyecto'";
$result = $conn->query($qry);
while($row = $result->fetch_assoc()){
	$name=$row['nom_usuario'];
	$comment=$row['mensaje'];
    $time=$row['tiempo_mensaje'];
?>
<div class="texto_chat" style="background-color:#dcf8c5; margin:5px;"><strong class="texto_chat"><?=$name?>:</strong> <?=$comment?> <!--<p class="texto_chat"><?php/*date("j/m/Y g:i:sa", strtotime($time))*/?></p>--></div>


<?php
}
?>