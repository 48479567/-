<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Prueba</title>

	<script src="../jquery_js.min.js"></script>

	<script type="text/javascript">
<?php
	session_start();
	for ($i=0; $i < 5; $i++) { ?>
			
		function post<?=$i?>() {
			var usuario<?=$i?> = document.getElementById("usuario<?=$i?>").value;
			var direccion<?=$i?> = document.getElementById("direccion<?=$i?>").value;
			$.ajax ({
				type: 'post',
				url: 'prueba_envio.php',
				data: {
					usuario_entrante: usuario<?=$i?>,
					direccion_entrante: direccion<?=$i?>
				},
				success: function (response) {
				}
			});
			return false;
		}
	
<?php
	} ?>
		</script>

		<script>
		$(document).ready(function(){
		$("#enlaceajax").mousedown(function(evento){
		var entrada = "perro 23";
		$("#cargando").css("display", "inline");
		$("#destino").load("prueba_vista.php", {nombre: entrada}, function(){
		$("#cargando").css("display", "none");
		$("#ingreso").val("5555");
		});
		});
		})
		</script>

</head>


<body>
	
	<?php
	for ($i=0; $i < 5; $i++) { ?>
		<form method="post" action="" onsubmit="return post<?=$i?>()">
		usuario<?=$i?> <input type="text" id="usuario<?=$i?>"><br>
		direccion<?=$i?> <input type="text" id="direccion<?=$i?>"><br>
		<input type="submit" value="ingresar<?=$i?>" id="btn<?=$i?>" name="btn<?=$i?>"/>
		</form>
	<?php
	}
	?>

		Esto es un Ajax con un mensaje de cargando...
		<br>
		<br>
		<a href="#" id="enlaceajax">Haz clic!</a>
		<div id="cargando" style="display:none; color: green;">Cargando...</div>

		<br><br><br>
		<br>
		<br>
		<br>
		<br>
		<textarea name="ingreso" id="ingreso" cols="30" rows="10"></textarea>
		<br>
		<div id="destino"></div>
	

	
</body>
</html>


<?php  /*
	session_start();
	require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
	$sql_sdp = "SELECT * FROM proyectos WHERE cod_proyecto = 'pry1'";
	$res_sdp = mysqli_query($conn, $sql_sdp);
	$dom_proyecto;

	while($row = mysqli_fetch_assoc($res_sdp)) {
		$dom_proyecto = $row['dom_proyecto'];
		}

	$dom_mod_proyecto = str_replace('<mxGraphModel>','<mxGraphModel as="model">', $dom_proyecto);
	
	echo $dom_mod_proyectos;

	?>


				
				<?php
			
			$sql_prp = "SELECT * FROM pro_per WHERE cod_proyecto = '$cod_proyecto'";
			$res_prp = mysqli_query($conn, $sql_prp);
			$cantidad_perspectivas = $res_prp->num_rows;

			for ($indice = 0 ; $indice < $cantidad_perspectivas ; $indice++) {
			?>
			var <?="textNode$indice"?> = document.getElementById(<?="xml$indice"?>);
			var <?="graphNode$indice"?> = editor.graph.container;
			var <?="sourceInput$indice"?> = document.getElementById('source');
			var <?="divGraph$indice"?> = document.getElementById('graph');
			<?="sourceInput$indice"?>.checked = false;


			var <?="funct$indice"?> = function(editor)
			{
								
					var <?="enc$indice"?> = new mxCodec();
					var <?="node$indice"?> = <?="enc$indice"?>.encode(editor.graph.getModel());
					
					<?="textNode$indice"?>.value = mxUtils.getPrettyXml(<?="node$indice"?>);
					<?="textNode$indice"?>.originalValue = <?="textNode$indice"?>.value;
					<?="textNode$indice"?>.focus();
					document.getElementById(<?="dom$indice"?>).value = <?="textNode$indice"?>.value;
			};

			editor.addAction('<?="switchView$indice"?>', <?="funct$indice"?>);
			// Defines a new action to switch between
			// XML and graphical display
			mxEvent.addListener(<?="divGraph$indice"?>, 'mouseout', function()
			{
				editor.execute('<?="switchView$indice"?>');
			});

			<?php
			}
			?>


	<input id="dd1" type="button" value="Click me" onclick="msg(this)">
	<input id="dd2" type="button" value="Click me" onclick="msg(this)">
	<input id="dd3" type="button" value="Click me" onclick="msg(this)">
	<input type="text" id="mostrar" value="hello">

<script>
	function msg(hola) {
		var id = hola.id
			var cambioId = id.replace("dd", "aassss");
			var text = document.getElementById('mostrar');
			return text.value = cambioId;
	}
</script>
*/			
?>

