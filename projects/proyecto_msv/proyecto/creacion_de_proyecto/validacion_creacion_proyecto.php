<?php
require_once '../../base_de_datos/conexion.php';
session_start();
$cod_usuario_gestor = $_SESSION['cod_usuario'];

$cod_proyecto = $_POST["cod_proyecto"];
$nom_proyecto = $_POST["nom_proyecto"];
$nom_equipo = $_POST["nom_equipo"];
$dom_proyecto = $_POST["dom_proyecto"];
$img_proyecto = $_POST['img_proyecto'];

$ins_pry1 = "";

$sql_equ1 = "SELECT cod_equipo FROM equipos WHERE npm_equipo = '$nom_equipo'";
$res_equ1 = $conn->query($sql_equ1);

while($row_equ1 = $res_equ1->fetch_assoc()) {
  $cod_equipo = $row_equ1['cod_equipo'];
}

$sql_ue = "SELECT * FROM usu_equipo WHERE cod_equipo = '$cod_equipo'";
$res_ue = mysqli_query($conn, $sql_ue);

$sql_pr = "SELECT * FROM pro_rol";
$res_pr = mysqli_query($conn, $sql_pr);
$cantidad_roles = $res_pr->num_rows + 1;

$ins_pry = "INSERT INTO proyectos (cod_proyecto, nom_proyecto, cod_equipo, dom_proyecto, img_proyecto) VALUES ('$cod_proyecto', '$nom_proyecto', '$cod_equipo', '$dom_proyecto', '$img_proyecto')";

if (mysqli_query($conn, $ins_pry)) {
  while ($row_ue = mysqli_fetch_assoc($res_ue)) {
    $cod_rol = "pr".$cantidad_roles;
    $cod_usuario = $row_ue['cod_usuario'];
  
    if($cod_usuario == $cod_usuario_gestor) {
      $nom_pro_rol = "gestor";
    } else {
      $nom_pro_rol = "analista";
    }
  
    $ins_pry1 .= "INSERT INTO pro_rol VALUES ('$cod_rol', '$nom_pro_rol', '$cod_proyecto', '$cod_usuario');";
    $cantidad_roles ++;
  }

  if (mysqli_multi_query($conn, $ins_pry1)){
    echo '
      <script>
        alert("proyecto creado");
        window.location.replace("../vista_proyecto.php");
      </script>';
  } else {
    echo "Error: <br>" . mysqli_error($conn);
  }
} else {
  echo "Error: <br>" . mysqli_error($conn);
}

?>


