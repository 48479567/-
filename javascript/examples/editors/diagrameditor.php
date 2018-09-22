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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./diagramador.css">
<title>mxDraw <?php echo $cod_proyecto; ?></title>

<script type="text/javascript" src="./iniciacion_diagrama.js"></script>

<script type="text/javascript" src="../../src/js/mxClient.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<script type="text/javascript" src="jquery_js.min.js"></script> 

<?php require_once './funcionamiento_diagrama.php' ?>
	

<script>

$(document).ready(function() {
	$("#result").animate({scrollTop: $("#result")[0].scrollHeight});
  $(document).bind('keypress', function(e) {
    if(e.keyCode==13) {
			$("#result").animate({scrollTop: $("#result")[0].scrollHeight});
			$('#my_form').submit();
			$('#comment').val("");
		}
  });
});

</script>

<script type="text/javascript">

function post() {
$("#result").animate({scrollTop: $("#result")[0].scrollHeight});
var comment = document.getElementById("comment").value;
var name = document.getElementById("username").value;
var proyecto = document.getElementById("cod_proyecto1").value;
	
$.ajax ({
    type: 'post',
    url: 'commentajax.php',
    data: {
    	user_comm:comment,
		 	user_name:name,
		 	cod_proyecto:proyecto
    },
    success: function (response) {
    document.getElementById("comment").value="";
		}
  });
	return false;
}

</script>

<script>

function autoRefresh_div(){
			$("#result").load("load.php").show();
			// a function which 
}
setInterval('autoRefresh_div()', 2000);

</script>


</head>

<body onload="createEditor('config/diagrameditor.xml');">

		<div id="mainActions"></div>
		<div id="selectActions"></div>
		
		<table>

			<tr>

				<td id="toolbar">
					<!-- Toolbar Here -->				
				</td>

				<td id="graph_td">

					<div id="graph" tabindex="-1">
						<!-- Graph Here -->
						<center id="splash">
							<img src="images/loading.gif">
						</center>
					</div>
					
					<textarea id="xml"></textarea>

				</td>

				<td id="chat">

					<div id="result">
						<?php
							$qry = "SELECT nom_usuario,mensaje,tiempo_mensaje FROM chats WHERE cod_proyecto = '$cod_proyecto'";
							$result = $conn->query($qry);

							while($row = $result->fetch_assoc()) {
								$name=$row['nom_usuario'];
								$comment=$row['mensaje'];
									$time=$row['tiempo_mensaje'];
							?>
							<div class="texto_chat">
								<strong class="texto_chat"><?=$name?>:</strong>
								<?=$comment?> 
								<!--
								<p class="texto_chat"><?php //date("j/m/Y g:i:sa", strtotime($time))?></p>-->
							</div>
							<?php
							}
						?>
					</div>	

					<form method="post" action="" onsubmit="return post();" id="my_form" name="my_form">

						<div>
							<input class="oculto" type="text" id="username" value="<?=$_SESSION['usuario']?>">
							<input class="oculto" type="text" name="cod_proyecto" id="cod_proyecto1" value="<?=$cod_proyecto?>">
							<textarea id="comment"></textarea>	
						</div>

						<div class="form-btn">
						<input type="submit" value="Enviar" id="btn" name="btn"/>
						</div>

					</form>

				</td>

			</tr>

		</table>

		<div id="zoomActions"></div>


	<?php 

		$cod_pro_per_entrante = array();
		$dom_pro_per_entrante = array();

		for ($index=0; $index < $cantidad_perspectivas; $index++) {
			$cod_pro_per_entrante["$index"] = "uno";
			$dom_pro_per_entrante["$index"] = "cero";
		}

		if ($_SERVER["REQUEST_METHOD"] == "POST") {

			if(empty($_POST["cod_proyecto"])){	
			} else {
				$cod_proyecto = test_input($_POST["cod_proyecto"]);
			}
			if(empty($_POST["dom_proyecto"])){
			} else {
				$dom_proyecto = test_input($_POST["dom_proyecto"]);
			}

			
			$sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom_proyecto' WHERE cod_proyecto = '$cod_proyecto'";
			
			if (mysqli_query($conn, $sql_udp)) {
			} else {
					echo "Error updating record: " . mysqli_error($conn);
			}

			for ($index=0; $index < $cantidad_perspectivas; $index++) { 
				if(empty($_POST["cod_pro_per$index"])){
				} else {
					$cod_pro_per_entrante["$index"] = test_input($_POST["cod_pro_per$index"]);
				}
				if(empty($_POST["dom_pro_per$index"])){
				} else {
					$dom_pro_per_entrante["$index"] = test_input($_POST["dom_pro_per$index"]);
				}
			}
				for ($index=0; $index < $cantidad_perspectivas; $index++) {
					$sql_pro_per = "UPDATE pro_per SET dom_perspectiva = '$dom_pro_per_entrante[$index]' WHERE cod_pro_per = '$cod_pro_per_entrante[$index]'";
					if (mysqli_query($conn, $sql_pro_per)) {
					} else {
						echo "Error updating record: " . mysqli_error($conn);
					}
				}

			mysqli_close($conn);
			
		}
		
		function test_input($data) {
			$data = trim($data);
			$data = stripslashes($data);
			$data = htmlspecialchars($data);
			return $data;
		}
		


		
	?>

		<form action="<?=htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST">
			<div class="button" id="mostrar" onclick="etiqueta(this)"><a href="#" class="button_a">mostrar</a></div>
			<textarea class="oculto" name=dom_proyecto id=ingreso><?=$dom_proyecto?></textarea>
			<input class="oculto" type="text" name="cod_proyecto" id="cod_proyecto" value="<?=$cod_proyecto?>">
			
			<?php
			$index = 0;
			while($row_prp2 = mysqli_fetch_assoc($res_prp)) {
				
				?>
			<div class="button" id='<?="per$index"?>' onclick="etiqueta(this)"/><a href="#" class="button_a"><?=$row_prp2["cod_pro_per"]?></a></div>
			<input class="oculto" type="text" name='<?="cod_pro_per$index"?>' id="" value="<?=$row_prp2['cod_pro_per']?>"> 
			<textarea class="oculto" name=<?="dom_pro_per$index"?> id=<?="dom$index"?>><?=$row_prp2['dom_perspectiva']?></textarea>
	<?php
			$index++;
		}
	?>

			<input class="oculto" type="text" id="etiqueta" value="previa_carga">
			<textarea  class="oculto" name="" id="previa_carga"><?=$cantidad_perspectivas?></textarea>
			<input type="submit" value="Guardar">
		</form>	
		<script>
	function etiqueta(contenidoButton) {
		var idButton = contenidoButton.id;
		var idTextArea = idButton.replace("per", "dom");
		var textArea = document.getElementById('etiqueta'); 
		if (idTextArea == "mostrar"){
			idTextArea = "ingreso";
		}
		return textArea.value = idTextArea;
		
	}
</script>
<script src="../../../boostrap/js/bootstrap.min.js"></script>
</body>
</html>
