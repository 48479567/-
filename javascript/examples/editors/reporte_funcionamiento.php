<?php
require '../../../projects/proyecto_msv/base_de_datos/conexion.php';
if(isset($_SESSION['cod_proyecto'])) {
  $cod_proyecto = $_SESSION['cod_proyecto'];
} else {
  echo 'Estas en un proyecto inexistente';
}

//esta parte son las consultas en sql
$sel_pro_per = "SELECT * FROM pro_per WHERE cod_proyecto = '$cod_proyecto'";
$res_pro_per = mysqli_query($conn, $sel_pro_per);
// Esto se va a usar como tiene que ser
$cant_res_pro_per = mysqli_num_rows($res_pro_per);

if ($cant_res_pro_per > 0) {
  $index = 0;
  while($row_pro_per = mysqli_fetch_assoc($res_pro_per)) {
    $pro_per_info['cod_pro_per']["$index"] = $row_pro_per['cod_pro_per'];
    //echo $pro_per_info['cod_pro_per']["$index"];
    $pro_per_info['nom_perspectiva']["$index"] = $row_pro_per['nom_perspectiva'];
    //echo $pro_per_info['nom_perspectiva']["$index"];
    $pro_per_info['cod_proyecto']["$index"] = $row_pro_per['cod_proyecto'];
    //echo $pro_per_info['cod_proyecto']["$index"];
    $pro_per_info['cod_usuario']["$index"] = $row_pro_per['cod_usuario'];
    //echo $pro_per_info['cod_usuario']["$index"].'<br>';
    $pro_per_info['dom_perspectiva']["$index"] = $row_pro_per['dom_perspectiva'];
    //echo "dom_perspectiva de ".$pro_per_info['nom_perspectiva']["$index"]." es:<br>";
    //echo $pro_per_info['dom_perspectiva']["$index"].'<br><br>';
    $index ++;
  }
} else {
  echo "El proyecto $nom_proyecto no tiene perspectivas";
} ?>

<script>
  function onInit(editor) {
    mxVertexHandler.prototype.rotationEnabled = true
    mxGraphHandler.prototype.guidesEnabled = true

    mxGuide.prototype.isEnabledForEvent = function (evt) {
      return !mxEvent.isAltDown(evt)
    }
    mxEdgeHandler.prototype.snapToTerminals = true
    //Esta es la parte  principal de conexion para que los componentes de los graficos puedan establecer relaciones entre ellos mismos
    mxConnectionHandler.prototype.connectImage = new mxImage('images/connector.gif', 16, 16)
    editor.graph.setConnectable(true)
    editor.graph.connectionHandler.setCreateTarget(true)
    editor.graph.setEnabled(false)
    var title = document.getElementById('title');
		if (title != null) {
			var f = function (sender) {
				title.innerHTML = `mxDraw - ${sender.getTitle()}`
			}
			editor.addListener(mxEvent.ROOT, f)
			f(editor)
    }
      
    var textNode = document.getElementById('xml')
    var graphNode = editor.graph.container
    var sourceInput = document.getElementById('source')
    sourceInput.checked = false
    var funct = function(editor) {
      if (sourceInput.checked) {
        graphNode.style.display = 'none'
        textNode.style.display = 'inline'

        var enc = new mxCodec()
        var node = enc.encode(editor.graph.getModel())

        textNode.value = mxUtils.getPrettyXml(node)
        textNode.originalValue = textNode.value
        textNode.focus()
      } else {
        graphNode.style.display = ''

        if (textNode.value != textNode.originasValue) {
          var doc = mxUtils.parseXml(textNode.value)
          var dec = new mxCodec(doc)
          dec.decode(doc.documentElement, editor.graph.getModel())
        }
        textNode.originalValue = null

        if (mxClient.IS_IE) {
          mxUtils.clearSelection()
        }

        textNode.style.display = 'none'

        editor.graph.container.focus()
      }

      editor.addAction('switchView', funct)
      mxEvent.addListener(sourceInput, 'click', function () {
        editor.execute('switchView')
      })
    }
  }
  
</script>