<?php
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
			
