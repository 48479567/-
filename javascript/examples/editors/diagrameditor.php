<?php
require_once '../../../projects/proyecto_msv/base_de_datos/conexion.php';
session_start();

if(isset($_POST['cod_proyecto'])) {
	$cod_proyecto = $_POST['cod_proyecto'];
} else {
	$cod_proyecto = $_SESSION['cod_proyecto'];
}
$_SESSION['cod_proyecto'] = $cod_proyecto;

$sql_sdp = "SELECT * FROM proyectos WHERE cod_proyecto = '$cod_proyecto'";
$res_sdp = mysqli_query($conn, $sql_sdp);


while($row = mysqli_fetch_assoc($res_sdp)) {
	$dom_proyecto = $row['dom_proyecto'];
	$nom_proyecto = $row['nom_proyecto'];
	$cod_equipo = $row['cod_equipo'];
	}

$sql_usu_equipo = "SELECT usuarios.nom_usuario, usuarios.cor_usuario, usu_equipo.cod_usuario FROM usuarios INNER JOIN usu_equipo ON usuarios.cod_usuario = usu_equipo.cod_usuario WHERE usu_equipo.cod_equipo = '$cod_equipo'";
$res_usu_equipo = mysqli_query($conn, $sql_usu_equipo);

$dom_proyecto = str_replace('<mxGraphModel>','<mxGraphModel as="model">', $dom_proyecto);
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./diagramador.css">
<link rel="stylesheet" href="./estilo_perspectiva.css">
<title><?=$nom_proyecto?></title>

<script type="text/javascript" src="./iniciacion_diagrama.js"></script>

<script type="text/javascript" src="../../src/js/mxClient.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<script type="text/javascript" src="jquery_js.min.js"></script> 

<?php 
require_once 'funcionamiento_diagrama.php';
require_once 'funcionamiento_perspectiva.php';			
?>


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

<body style="background-image:url('background_diagram.jpg')" onload="createEditor('config/diagrameditor.xml');">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#"> <img class="logo" src="../../../projects/proyecto_msv/proyecto/style_vista_proyecto/menu.png" alt="ISG" height="40px"> ISG</a>
	<ul class="navbar-nav ml-auto">
		<li class="nav-item active" style="padding-left: 50px;"><div id="mainActions"></li>
	</ul>
	<div class="collapse navbar-collapse" id="navbar1">
    <ul class="navbar-nav ml-auto"> 
<li class="nav-item active">
<a class="nav-link" href="#"><?=$_SESSION['usuario']?></a>
</li>
<li class="nav-item active"></li>	
<li class="nav-item"><a class="nav-link" href="../../../projects/proyecto_msv/proyecto/vista_proyecto.php">Proyectos</a></li>
<li class="nav-item">
<a class="btn ml-2 btn-warning" href="../../../../-">Salir</a></li>
    </ul>
  </div>
</nav>
<div id="selectActions"></div>
	
		
		
		<table>

			<tr>

				<td id="toolbar">
					<!-- Toolbar Here -->				
				</td>

				<td id="graph_td" style="background-color:white;">

					<div id="graph" tabindex="-1">
						<!-- Graph Here -->
						<center id="splash">
							<img src="images/loading.gif">
						</center>
					</div>
					
					<textarea id="xml"></textarea>

				</td>

				<td id="chat" style="background-image:url('background_chat.jpg')">

					<div id="result">
<?php
							$qry = "SELECT nom_usuario,mensaje,tiempo_mensaje FROM chats WHERE cod_proyecto = '$cod_proyecto'";
							$result = $conn->query($qry);

							while($row = $result->fetch_assoc()) {
								$name=$row['nom_usuario'];
								$comment=$row['mensaje'];
									$time=$row['tiempo_mensaje'];
?>
							<div class="texto_chat" style="background-color:#dcf8c5; margin:5px;">
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

		if(isset($_POST['crear_perspectiva'])) {
		$cod_proyecto_perspectiva = $_POST['cod_proyecto'];
		$cont_put_pro_per = $_POST['cont_usu_equipo'];

		$cant_pers_cod = $cantidad_perspectivas_total + 1;
		$cod_perspectiva_proyecto = "pro_per".$cant_pers_cod;

for ($i=0; $i < $cont_put_pro_per ; $i++) { 
		$nom_perspectiva = $_POST["nom_perspectiva$i"];
		$usu_perspectiva = $_POST["usu_perspectiva$i"];
		
		$sql_pro_per .= "INSERT INTO pro_per (cod_pro_per, nom_perspectiva, cod_proyecto, cod_usuario, dom_perspectiva) values ('$cod_perspectiva_proyecto', '$nom_perspectiva', '$cod_proyecto_perspectiva', '$usu_perspectiva', '$dom_perspectiva');";
		$cod_perspectiva_proyecto++;
}
			
		$sql_pro_per = substr($sql_pro_per, 0, -1);

		if(mysqli_multi_query($conn, $sql_pro_per)) { 
			$_SESSION['cod_proyecto'] = $cod_proyecto_perspectiva;
		?>
		<script>
						location.replace('../../../projects/proyecto_msv/proyecto/vista_proyecto.php');
						location.replace('../../../javascript/examples/editors/diagrameditor.php');
						</script>
	<?php 
		} else {
			echo 'no se pudo crear'.$conn->error;
		}
	
		}

		$cod_pro_per_entrante = array();
		$dom_pro_per_entrante = array();

		for ($index=0; $index < $cantidad_perspectivas; $index++) {
			$cod_pro_per_entrante["$index"] = "uno";
			$dom_pro_per_entrante["$index"] = "cero";
		}

		if (isset($_POST['guardar_cambios'])) {

			if(empty($_POST["cod_proyecto"])){	
			} else {
				$cod_proyecto = test_input($_POST["cod_proyecto"]);
			}
			if(empty($_POST["dom_proyecto"])){
			} else {
				$dom_proyecto = test_input($_POST["dom_proyecto"]);
			}

			
			$sql_udp = "UPDATE proyectos SET dom_proyecto = '$dom_proyecto' WHERE cod_proyecto = '$cod_proyecto'";
			
			
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
			
			if (mysqli_query($conn, $sql_udp)) { 
				$_SESSION['cod_proyecto'] = $cod_proyecto;?>
				<script>location.replace('../../../projects/proyecto_msv/proyecto/vista_proyecto.php');
				location.replace('../../../javascript/examples/editors/diagrameditor.php');</script>
	<?php 
			} else {
					echo "Error updating record: " . mysqli_error($conn);
			}

			mysqli_close($conn);		
		}		
	?>


	<div style="display:inline-block;">
		<form action="" method="POST">
			<div class="btn btn-success" id="mostrar" onclick="etiqueta(this)">General</div>
			<textarea class="oculto" name=dom_proyecto id=ingreso><?=$dom_proyecto?></textarea>
			<input class="oculto" type="text" name="cod_proyecto" id="cod_proyecto" value="<?=$cod_proyecto?>">
			
			<?php
			$index = 0;
			while($row_prp2 = mysqli_fetch_assoc($res_prp)) {
				
				?>
			<div class="btn btn-primary" id='<?="per$index"?>' onclick="etiqueta(this)"/><?=$row_prp2["nom_perspectiva"]?></div>
			<input class="oculto" type="text" name='<?="cod_pro_per$index"?>' id="" value="<?=$row_prp2['cod_pro_per']?>"> 
			<textarea class="oculto" name=<?="dom_pro_per$index"?> id=<?="dom$index"?>><?=$row_prp2['dom_perspectiva']?></textarea>
	<?php
			$index++;
		}
	?>

			<input class="oculto" type="text" id="etiqueta" value="previa_carga">
			<textarea  class="oculto" name="" id="previa_carga"><?=$cantidad_perspectivas?></textarea>
			<input type="submit" class="btn btn-warning" value="Guardar" name="guardar_cambios">
		</form>	
	</div>

<!--De esta parte se saca la variable $dom_perspectiva-->


<button type='button' class="btn btn-success" data-toggle="modal" data-target="#popUpWindow">+</button>

<div class="modal fade" id="popUpWindow">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
			
			<!-- body -->
			<div class="box">
				<form action="" method="POST">
													
<!--Esto Viene de la linea 23 -->
<?php  
	$cont_usu_equipo = 0;
	while($row_usu_equipo = mysqli_fetch_assoc($res_usu_equipo)) { ?>
						<div class="inputBox">
						<input type="text" name="nom_perspectiva<?=$cont_usu_equipo?>" required="">
						<label>Nombre de la Perspectiva para <?=$row_usu_equipo['nom_usuario']?></label>
						<input type="text" name="usu_perspectiva<?=$cont_usu_equipo?>" value="<?=$row_usu_equipo['cod_usuario']?>">
						</div>				
<?php 
	$cont_usu_equipo++;	
	} ?>
						<div>
							<input type="text" class="oculto" name="cod_proyecto" value="<?=$cod_proyecto?>">
							<input type="text" name="cont_usu_equipo" value="<?=$cont_usu_equipo?>">
							<input type="submit" name="crear_perspectiva" value="Submit">
							
						</div>
				</form>
			</div>
			<!-- footer -->
			
		</div>
	</div>
</div>

<?php
	function test_input($data) {
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}
?>

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
<script src="../../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
