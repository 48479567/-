<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();
$_SESSION['cod_proyecto'] = $_POST['cod_proyecto']; 
$cod_proyecto = $_SESSION['cod_proyecto']; 

$sql_sdp = "SELECT * FROM proyectos WHERE cod_proyecto = '$cod_proyecto'";
$res_sdp = mysqli_query($conn, $sql_sdp);

while($row = mysqli_fetch_assoc($res_sdp)) {
	$dom_proyecto = $row['dom_proyecto'];
	}

$dom_proyecto = str_replace('<mxGraphModel>','<mxGraphModel as="model">', $dom_proyecto);
?>

<html>
<head>
	<title>mxDraw <?php echo $cod_proyecto; ?></title>
 	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css" media="screen">
		#page { background: url("images/draw/drawbg.jpg") repeat-y top; border: none; margin: 20px 10px;}
	</style>
	<script type="text/javascript">
		var mxBasePath = '../../src';
		
		var urlParams = (function(url)
		{
			var result = new Object();
			var params = window.location.search.slice(1).split('&');
			
			for (var i = 0; i < params.length; i++)
			{
				idx = params[i].indexOf('=');
				
				if (idx > 0)
				{
					result[params[i].substring(0, idx)] = params[i].substring(idx + 1);
				}
			}
			
			return result;
		})(window.location.href);
		
		var mxLanguage = urlParams['lang'];

	</script>

	<script type="text/javascript" src="../../src/js/mxClient.js"></script>
	<script type="text/javascript" src="js/app.js"></script>

	
	

	<script type='text/javascript'>
		// Program starts here. The document.onLoad executes the
		// createEditor function with a given configuration.
		// In the config file, the mxEditor.onInit method is
		// overridden to invoke this global function as the
		// last step in the editor constructor.
		function onInit(editor)
		{
			

			// Enables rotation handle
			mxVertexHandler.prototype.rotationEnabled = true;

			// Enables guides
			mxGraphHandler.prototype.guidesEnabled = true;
			
		    
			
			// Enables snapping waypoints to terminals
			mxEdgeHandler.prototype.snapToTerminals = true;
			
			// Defines an icon for creating new connections in the connection handler.
			// This will automatically disable the highlighting of the source vertex.
			mxConnectionHandler.prototype.connectImage = new mxImage('images/connector.gif', 16, 16);
			
			// Enables connections in the graph and disables
			// reset of zoom and translate on root change
			// (ie. switch between XML and graphical mode).
			editor.graph.setConnectable(true);

			// Clones the source if new connection has no target
			editor.graph.connectionHandler.setCreateTarget(true);

			// Updates the title if the root changes
			var title = document.getElementById('title');
			
			if (title != null)
			{
				var f = function()
				{
					title.innerHTML = 'ISG - Diagrama';
				};
				
				editor.addListener(mxEvent.ROOT, f);
				f(editor);
			}
			
		    // Changes the zoom on mouseWheel events
		    mxEvent.addMouseWheelListener(function (evt, up)
		    {
			    if (!mxEvent.isConsumed(evt))
			    {
			    	if (up)
					{
			    		editor.execute('zoomIn');
					}
					else
					{
						editor.execute('zoomOut');
					}
					
					mxEvent.consume(evt);
			    }
		    });

			// Defines a new action to switch between
			// XML and graphical display
			var textNode = document.getElementById('xml');
			var graphNode = editor.graph.container;
			var sourceInput = document.getElementById('source');
			sourceInput.checked = false;

			var funct = function(editor)
			{
				if (sourceInput.checked)
				{					
					var enc = new mxCodec();
					var node = enc.encode(editor.graph.getModel());
					
					textNode.value = mxUtils.getPrettyXml(node);
					textNode.originalValue = textNode.value;
					textNode.focus();
					document.getElementById('ingreso').value = textNode.value;
				}

			
			
				else
				{
					graphNode.style.display = '';
					
					if (textNode.value != textNode.originalValue)
					{
						var doc = mxUtils.parseXml(textNode.value);
						var dec = new mxCodec(doc);
						dec.decode(doc.documentElement, editor.graph.getModel());
					}

					textNode.originalValue = null;
					
					// Makes sure nothing is selected in IE
					if (mxClient.IS_IE)
					{
						mxUtils.clearSelection();
					}

					textNode.style.display = 'none';

					// Moves the focus back to the graph
					editor.graph.container.focus();
				}
			};

			
			
			editor.addAction('switchView', funct);
			
			// Defines a new action to switch between
			// XML and graphical display
			mxEvent.addListener(sourceInput, 'click', function()
			{
				editor.execute('switchView');
			});
			
			var muestraCambio = document.getElementById('ingreso');
			var mostrar = document.getElementById('mostrar');

			var mostrarCambios = function mostrarCambios(editor){
				var doc = mxUtils.parseXml(muestraCambio.value);
				var dec = new mxCodec(doc);
				dec.decode(doc.documentElement, editor.graph.getModel());
				var enc = new mxCodec();
				var node = enc.encode(editor.graph.getModel());
				var texto = mxUtils.getPrettyXml(node);
				document.getElementById('ingreso').value = texto;
				

			};

			editor.addAction('cambios', mostrarCambios);
			
			// Defines a new action to switch between
			// XML and graphical display
			mxEvent.addListener(mostrar, 'click', function()
			{
				editor.execute('cambios');
			});


			// Create select actions in page
			var node = document.getElementById('mainActions');
			var buttons = ['group', 'ungroup', 'cut', 'copy', 'paste', 'delete', 'undo', 'redo', 'print', 'show'];
			
			// Only adds image and SVG export if backend is available
			// NOTE: The old image export in mxEditor is not used, the urlImage is used for the new export.
			if (editor.urlImage != null)
			{
				// Client-side code for image export
				var exportImage = function(editor)
				{
					var graph = editor.graph;
					var scale = graph.view.scale;
					var bounds = graph.getGraphBounds();
					
		        	// New image export
					var xmlDoc = mxUtils.createXmlDocument();
					var root = xmlDoc.createElement('output');
					xmlDoc.appendChild(root);
					
				    // Renders graph. Offset will be multiplied with state's scale when painting state.
					var xmlCanvas = new mxXmlCanvas2D(root);
					xmlCanvas.translate(Math.floor(1 / scale - bounds.x), Math.floor(1 / scale - bounds.y));
					xmlCanvas.scale(scale);
					
					var imgExport = new mxImageExport();
				    imgExport.drawState(graph.getView().getState(graph.model.root), xmlCanvas);
				    
					// Puts request data together
					var w = Math.ceil(bounds.width * scale + 2);
					var h = Math.ceil(bounds.height * scale + 2);
					var xml = mxUtils.getXml(root);
					
					// Requests image if request is valid
					if (w > 0 && h > 0)
					{
						var name = 'export.png';
						var format = 'png';
						var bg = '&bg=#FFFFFF';
						
						new mxXmlRequest(editor.urlImage, 'filename=' + name + '&format=' + format +
		        			bg + '&w=' + w + '&h=' + h + '&xml=' + encodeURIComponent(xml)).
		        			simulate(document, '_blank');
					}
				};
				
				editor.addAction('exportImage', exportImage);
				
				// Client-side code for SVG export
				var exportSvg = function(editor)
				{
					var graph = editor.graph;
					var scale = graph.view.scale;
					var bounds = graph.getGraphBounds();

				    // Prepares SVG document that holds the output
				    var svgDoc = mxUtils.createXmlDocument();
				    var root = (svgDoc.createElementNS != null) ?
				    	svgDoc.createElementNS(mxConstants.NS_SVG, 'svg') : svgDoc.createElement('svg');
				    
					if (root.style != null)
					{
						root.style.backgroundColor = '#FFFFFF';
					}
					else
					{
						root.setAttribute('style', 'background-color:#FFFFFF');
					}
				    
				    if (svgDoc.createElementNS == null)
				    {
				    	root.setAttribute('xmlns', mxConstants.NS_SVG);
				    }
				    
				    root.setAttribute('width', Math.ceil(bounds.width * scale + 2) + 'px');
				    root.setAttribute('height', Math.ceil(bounds.height * scale + 2) + 'px');
				    root.setAttribute('xmlns:xlink', mxConstants.NS_XLINK);
				    root.setAttribute('version', '1.1');
				    
				    // Adds group for anti-aliasing via transform
				    var group = (svgDoc.createElementNS != null) ?
					    	svgDoc.createElementNS(mxConstants.NS_SVG, 'g') : svgDoc.createElement('g');
					group.setAttribute('transform', 'translate(0.5,0.5)');
					root.appendChild(group);
				    svgDoc.appendChild(root);

				    // Renders graph. Offset will be multiplied with state's scale when painting state.
				    var svgCanvas = new mxSvgCanvas2D(group);
				    svgCanvas.translate(Math.floor(1 / scale - bounds.x), Math.floor(1 / scale - bounds.y));
				    svgCanvas.scale(scale);
				    
				    var imgExport = new mxImageExport();
				    imgExport.drawState(graph.getView().getState(graph.model.root), svgCanvas);

					var name = 'export.svg';
				    var xml = encodeURIComponent(mxUtils.getXml(root));
					
					new mxXmlRequest(editor.urlEcho, 'filename=' + name + '&format=svg' + '&xml=' + xml).simulate(document, '_blank');
				};
				
				editor.addAction('exportSvg', exportSvg);
				
				buttons.push('exportImage');
				buttons.push('exportSvg');
			};
			
			for (var i = 0; i < buttons.length; i++)
			{
				var button = document.createElement('button');
				mxUtils.write(button, mxResources.get(buttons[i]));
			
				var factory = function(name)
				{
					return function()
					{
						editor.execute(name);
					};
				};
			
				mxEvent.addListener(button, 'click', factory(buttons[i]));
				node.appendChild(button);
			}

			// Create select actions in page
			var node = document.getElementById('selectActions');
			mxUtils.write(node, 'Select: ');
			mxUtils.linkAction(node, 'All', editor, 'selectAll');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, 'None', editor, 'selectNone');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, 'Vertices', editor, 'selectVertices');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, 'Edges', editor, 'selectEdges');

			// Create select actions in page
			var node = document.getElementById('zoomActions');
			mxUtils.write(node, 'Zoom: ');
			mxUtils.linkAction(node, 'In', editor, 'zoomIn');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, 'Out', editor, 'zoomOut');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, 'Actual', editor, 'actualSize');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, 'Fit', editor, 'fit');
		}

		window.onbeforeunload = function() { return mxResources.get('changesLost'); };
	</script>


</head>
<body onload="createEditor('config/diagrameditor.xml');" width="100%">
	
		
		
		<div>
			<h1>Diagramador</h1>
		</div>
		<div id="mainActions"
			style="width:100%;">
		</div>
		<div id="selectActions" style="width:100%;">
		</div>
		<table border="0" width="100%" height="80%">
			<tr>
				<td id="toolbar" style="width:16px;padding-left:20px;" valign="top">
					<!-- Toolbar Here -->				
				</td>
				<td valign="top" style="border-width:1px;border-style:solid;border-color:black;">
					<div id="graph" tabindex="-1" style="position:relative;height:100%;width:100%;overflow:hidden;cursor:default;border-style: solid;background: url('images/grid.gif');">
						<!-- Graph Here -->
						<center id="splash" style="padding-top:230px;">
							<img src="images/loading.gif">
						</center>
					</div>
					<textarea id="xml" style="height:450px;width:684px;display:none;border-style:none;"></textarea>
				</td>
				<td style="height:100%;width:15%;background-color:yellow" >
					Aca va el chat
				</td>
			</tr>
		</table>
		<span style="float:right;">
			<input id="source" type="checkbox"/>Generar Cambios 
		</span>
		<div id="zoomActions" style="width:100%;padding-top:4px;">
		</div>
		<div>
		<form action="guardar_datos.php" method="POST">
			<input type="button" onclick ="mostrarCampo()" value="mostrar" id="mostrar">
			<input type="submit" value="Guardar">
		<?php 
		echo '
			<textarea name=dom_proyecto id=ingreso style="visibility:hidden">'.$dom_proyecto.'</textarea>
			<input type="text" name="cod_proyecto" value="'.$cod_proyecto.'">
			';
		
		?>
		</form>
		
</body>
</html>
