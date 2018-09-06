<?php
session_start();
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';



  $comment=$_POST['user_comm'];
  $name=$_POST['user_name'];
  $cod_proyecto=$_POST['cod_proyecto'];
  $insert = "INSERT INTO chats (tiempo_mensaje,nom_usuario,mensaje,cod_proyecto) values(CURRENT_TIMESTAMP,'$name','$comment','$cod_proyecto')";
  $result = $conn->query($insert);


?>