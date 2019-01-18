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
    editor.graph.setEnabled(false) 
  <?php
  for ($i=1; $i < $index; $i++) { ?> 
    var <?="funct$i"?> = function(editor) {
    
      var textNode = document.getElementById('xml_per<?=$i?>')
      var doc = mxUtils.parseXml(textNode.value)
			var dec = new mxCodec(doc)
      dec.decode(doc.documentElement, editor.graph.getModel())
      var decodificado = editor.graph.container.innerHTML
      document.getElementById('graph_per<?=$i?>').innerHTML = decodificado
		}
    editor.addAction('<?="switchView$i"?>', <?="funct$i"?>)
    editor.execute('<?="switchView$i"?>')
  <?php
  } ?>

    var functZero = function (editor) {
      var textNode = document.getElementById('xml_per0')
      var doc = mxUtils.parseXml(textNode.value)
      var dec = new mxCodec(doc)
      dec.decode(doc.documentElement, editor.graph.getModel())
      editor.graph.fit()
      var decodificado = editor.graph.container.innerHTML
      document.getElementById('graph_per0').innerHTML = decodificado
    }
    editor.addAction('switchViewZero', functZero)
    editor.execute('switchViewZero')

    var functEnd = function (editor) {
      var textNode = document.getElementById('xml')
      var doc = mxUtils.parseXml(textNode.value)
      var dec = new mxCodec(doc)
      dec.decode(doc.documentElement, editor.graph.getModel())
      editor.graph.fit()
      var decodificado = editor.graph.container.innerHTML
      document.getElementById('general').innerHTML = decodificado
    }
    editor.addAction('switchViewEnd', functEnd)
    editor.execute('switchViewEnd')
    
    var functVoid = function(editor) {
      var textNode = document.getElementById('xml')
      var doc = mxUtils.parseXml(textNode.value)
      var dec = new mxCodec(doc)
      dec.decode(doc.documentElement, editor.graph.getModel())
      editor.graph.fit()
      editor.graph.container.style.display = 'none'  
    }
    editor.addAction('switchViewVoid', functVoid)
    editor.execute('switchViewVoid')
      
      
    
  }
  window.onbeforeunload = function() { return mxResources.get('changesLost') }
</script>