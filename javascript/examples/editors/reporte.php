<?php
  session_start();
  $nom_proyecto = $_SESSION['nom_proyecto'];
  $dom_proyecto = $_SESSION['dom_proyecto'];
?>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Reporte | <?=$nom_proyecto?></title>
  <link rel="stylesheet" href="style_reporte.css">
  <script src="./iniciacion_diagrama.js"></script>
  <script src="../../src/js/mxClient.js"></script>
  <script src="js/app.js"></script>
<?php
require_once 'reporte_funcionamiento.php'; ?>
</head>
<body onload="createEditor('config/diagrameditor.xml')">

<h1>Reporte del Proyecto - <?=$nom_proyecto?></h1>
<div id="toolbar" style="display:none" valign="top"></div>

<div id="graph" style="width:80%;height:80%"></div>
<textarea id="xml" style="display:none"><?=$dom_proyecto?></textarea>
<?php
for ($i=0; $i < $index; $i++) { ?>
  <h3>Perspectiva <?=$pro_per_info['nom_perspectiva']["$i"]?></h3>
  <div id="graph_per<?=$i?>"></div>
  <textarea id="xml_per<?=$i?>" style="display:none"><?=$pro_per_info['dom_perspectiva']["$i"]?></textarea>
<?php } ?>
  <h3>Perspectiva General</h3>
  <div id="general"></div>

</body>
</html>