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
							<div class="chats">
								<strong><?=$name?>:</strong>
								<?=$comment?> 
								<p><?=date("j/m/Y g:i:sa", strtotime($time))?></p>
							</div>
							<?php
							}
						?>
					</div>	

					<form method="post" action="" onsubmit="return post();" id="my_form" name="my_form">

						<div>
							<input type="text" id="username" value="<?=$_SESSION['usuario']?>">
							<input type="text" name="cod_proyecto" id="cod_proyecto1" value="<?=$cod_proyecto?>">
							<textarea id="comment"></textarea>	
						</div>

						<div class="form-btn">
						<input type="submit" value="Enviar" id="btn" name="btn"/>
						</div>

					</form>

				</td>

			</tr>

		</table>

		<span style="float:right;}	">

			<input id="source" type="checkbox"/>Generar Cambios

		</span>

		<div id="zoomActions"></div>


		<?php 
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			if (empty($_POST["cod_proyecto"])) {
			} else {
				$cod_proyecto = $_POST["cod_proyecto"];
			}
			if (empty($_POST["dom_proyecto"])) {
			} else {
				$dom_proyecto = $_POST["dom_proyecto"];
			}
			
		}
		
		function test_input($data) {
			$data = trim($data);
			$data = stripslashes($data);
			$data = htmlspecialchars($data);
			return $data;
		}
		
		$sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom_proyecto' WHERE cod_proyecto = '$cod_proyecto'";
		
		if (mysqli_query($conn, $sql_udp)) {
				$_SESSION['cod_proyecto'] = $cod_proyecto;
				$_SESSION['dom_proyecto'] = $dom_proyecto;
				
		} else {
				echo "Error updating record: " . mysqli_error($conn);
		}
		?>

		<form action="<?=htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST">
			<input type="button" value="mostrar" id="mostrar">
			<input type="submit" value="Guardar">

		

			<textarea name=dom_proyecto id=ingreso><?=$dom_proyecto?></textarea>
			<input type="text" name="cod_proyecto" value="<?=$cod_proyecto?>">
		
		</form>
		
</body>
</html>
