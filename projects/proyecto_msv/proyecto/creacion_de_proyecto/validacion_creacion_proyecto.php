<?php

require_once '../../base_de_datos/conexion.php';

$cod_proyecto = $_POST["cod_proyecto"];
$nom_proyecto = $_POST["nom_proyecto"];
$nom_equipo = $_POST["nom_equipo"];
$dom_proyecto = $_POST["dom_proyecto"];

$sql_equ1 = "SELECT cod_equipo FROM equipos WHERE npm_equipo = '$nom_equipo'";
$res_equ1 = $conn->query($sql_equ1);

while($row = $res_equ1->fetch_assoc()) {
  $cod_equipo = $row['cod_equipo'];
}

$ins_pry1 = "INSERT INTO proyectos (cod_proyecto, nom_proyecto, cod_equipo, dom_proyecto) values ('$cod_proyecto', '$nom_proyecto', '$cod_equipo', '$dom_proyecto')";

if (mysqli_query($conn, $ins_pry1)) {

  echo '
<script>
  alert("proyecto creado");
  window.location.replace("../vista_proyecto.php");
</script>';
} else {
  echo "Error: <br>" . mysqli_error($conn);
}

?>
