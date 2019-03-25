<script>
  function etiqueta(contenidoButton) {
    var idButton = contenidoButton.id;
    var classButton = contenidoButton.className;
    var valButton = contenidoButton.innerHTML;
    var idTextArea = idButton.replace("per", "dom");
    var textArea = document.getElementById('etiqueta');
    var perspectiva = document.getElementById('perspectiva');
    $("#codigo_campo").val(classButton);
    if (idTextArea == "mostrar"){
      idTextArea = "ingreso";
      $("#codigo_campo").val(""+$("#cod_proyecto").val());
    }
    perspectiva.innerHTML = valButton;
    return textArea.value = idTextArea;
  }

<?php 
for ($index_out=0; $index_out<$cantidad_perspectivas; $index_out++){ 
?>
	$("#per"+"<?=$index_out?>").mousedown(function(evento) {
		evento.preventDefault()
		var cod_pro_per = $("#cod_pro_per"+"<?=$index_out?>").val();
		$("#dom_out"+"<?=$index_out?>").load("obtener_dom.php", { cod_pro_per: cod_pro_per }, function() {
		})
	})

<?php
} ?>

	$("#mostrar").mousedown(function(evento) {
    evento.preventDefault();
    var cod_proyecto = $("#cod_proyecto").val()
    $("#ingreso_out").load("obtener_dom_proyecto.php", { cod_proyecto: cod_proyecto }, function() {
    })
	})

	$(window).bind('keydown', function(event) {
 		if (event.ctrlKey || event.metaKey) {
 			if (String.fromCharCode(event.which).toLowerCase() == "g") {
        event.preventDefault();
        var dom_muestra = $("#"+$("#etiqueta").val()).val();
        var codigo_campo = $("#codigo_campo").val();
        $.ajax({
          type: "post",
          url: "guardar_datos.php",
          data: {
            dom_muestra: dom_muestra,
            codigo_campo: codigo_campo
          },
          success: function(response) {
          }
        });
 			}

      if (String.fromCharCode(event.which).toLowerCase() == "m") {
        event.preventDefault();
        var codigo_perspectiva = $("#codigo_campo").val();
        $.ajax({
          type: "post",
          url: "verificar_perspectiva.php",
          data: {
            codigo_perspectiva: codigo_perspectiva
          },
          success: function(response) {
          }
        });
      }
 		}
	});

  function autoObtencionPerspectivas() {
    $()
  }
  
</script>