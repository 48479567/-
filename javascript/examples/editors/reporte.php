<?php
  session_start();
  $nom_proyecto = $_SESSION['nom_proyecto'];
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
<div id="page">
	<div id="header">
		<div id="headerimg">
			<h1>Reporte del Proyecto - <?=$nom_proyecto?></h1>
		</div>
	</div>
  <div id="toolbar" style="display:none"></div>
  <div id="graph" tabindex="-1" style="position:absolute;width:100%;overflow:hidden;cursor:default;">
    <center id="splash" style="display:none">
      <img src="images/loading.gif">
    </center>
  </div>
		<input id="source" type="checkbox" style="display:none"/>
  </span>
</div>
</body>
</html>