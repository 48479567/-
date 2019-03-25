<?php
require_once './diagrameditor/init.php';
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
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
	require_once './diagrameditor/getsetchat.php';       
	?>

	</head>

	<body 
		style="background-image:url('background_diagram.jpg')" 
		onload="createEditor('config/diagrameditor.xml');">

		<nav 
			class="navbar navbar-expand-lg navbar-dark bg-dark" 
			style="height:60px">

			<img 
				class="logo" 
				src="../../../projects/proyecto_msv/proyecto/style_vista_proyecto/menu.png" 
				alt="ISG" 
				height="40px" />
			<a 
				class="navbar-brand" 
				id="perspectiva" 
				href="#">
			</a>
			<button type='button' class="btn btn-outline-info btn-sm" id="btn_sel_imagen" data-toggle="modal" data-target="#popUpWindow1">Lista de Imágenes</button>
			<ul class="navbar-nav ml-auto">
				<li 
					class="nav-item active" 
					style="position:absolute;top:13px;right:16%">
					<a 
						class="btn btn-success" 
						href="./reporte.php" 
						target="_blank"
						>Reporte
					</a>
				</li>
				<li class="nav-item">
					<a 
						class="nav-link" 
						href="../../../projects/proyecto_msv/proyecto/vista_proyecto.php"
						>Proyectos
					</a>
				</li>
				<li class="nav-item">
					<a 
						class="btn ml-2 btn-warning" 
						href="../../../../-"
						>Salir
					</a>
				</li>
					<div class="modal fade" id="popUpWindow1">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="box">
									
								</div>                      
							</div>
						</div>
					</div>
			</ul>
			
		</nav>
		<div 
			id="selectActions" 
			class="oculto">
		</div>
			<div 
			id="mainActions"
			class="oculto">
		</div>		
		
		<div id="toolbar"></div>
		<div id="graph"> 
		<!-- Gráficos Aquí -->
			<center id="splash">
				<img src="images/loading.gif">
			</center>
		</div>
		<textarea 
			id="xml" 
			class="oculto"></textarea>

		<div 
			id="chat" 
			style="background-image:url('background_chat.jpg');">

			<div id="result">
<?php
	$qry = 
		"	SELECT nom_usuario,mensaje,tiempo_mensaje FROM chats 
			WHERE cod_proyecto = '$cod_proyecto'";
			
	$result = $conn->query($qry);
	while($row = $result->fetch_assoc()) {
		$name=$row['nom_usuario'];
		$comment=$row['mensaje'];
		$time=$row['tiempo_mensaje'];
		if($name==$_SESSION['usuario']){
			$estilo_chat = 'background-color:#dcf8c5; margin:5px;';
		} else {
			$estilo_chat = 'background-color:#fff; margin:5px;';
		}
?>
				<div class="texto_chat" 
					style="<?=$estilo_chat?>"> 
					<strong 
					class="texto_chat"
					><?=$name?>: 
					</strong>
					<?=$comment?> 
				</div>
																	
		<?php
	}
		?>
			</div>													
		</div> 
		
		<div 
			style="position:absolute;left:85%;right:0;bottom:0;">

			<form 
				method="post" 
				action="" 
				onsubmit="return post();" 
				id="my_form" 
				name="my_form">
				<input 
				class="oculto" 
				type="text" 
				id="username" 
				value="<?=$_SESSION['usuario']?>" />
				<input 
					class="oculto" 
					type="text" 
					name="cod_proyecto" 
					id="cod_proyecto1" 
					value="<?=$cod_proyecto?>" />
				<textarea 
					type="text" 
					id="comment" 
					rows="3"></textarea>
				<input 
					type="submit" 
					value="»" 
					id="btn" 
					name="btn" />
			</form>

		</div>

		<div 
			class="bg bg-warning" 
			id="zoomActions" 
			style="color:red;text-decoration:none;">
		</div>

		<div style="position:absolute;top:60px;right:16%;">

		<!--De esta parte se saca la variable $dom_perspectiva-->
<?php 
if ($rol_usuario == "gestor") { ?>
			<button 
				type='button' 
				class="btn btn-danger btn-sm" 
				data-toggle="modal" 
				data-target="#popUpWindow"
				>Aumentar Perspectiva
			</button>

			<div 
				class="modal fade" 
				id="popUpWindow">
				
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="box">
							<form 
								action="" 
								method="POST">
<?php 
	$cont_usu_equipo = 0;
	while ($row_usu_equipo = mysqli_fetch_assoc($res_usu_equipo)) { 
?>
								<div class="inputBox">
									<input 
										type="text" 
										class="input" 
										name="nom_perspectiva<?=$cont_usu_equipo?>" 
										required="" 
										autocomplete="off" />
									<label
										>Nombre de la Perspectiva para <?=$row_usu_equipo['nom_usuario']?>
									</label>
									<input 
										type="text" 
										class="oculto" 
										name="usu_perspectiva<?=$cont_usu_equipo?>" 
										value="<?=$row_usu_equipo['cod_usuario']?>" />
								</div>              
<?php 
	$cont_usu_equipo++; 
} ?>
								<div>
									<input 
										type="text" 
										class="oculto" 
										name="cod_proyecto" 
										value="<?=$cod_proyecto?>" />
									<input 
										type="text" 
										class="oculto" 
										name="cont_usu_equipo" 
										value="<?=$cont_usu_equipo?>" />
									<center>
										<input 
											type="submit" 
											name="crear_perspectiva" 
											value="Asignar Perspectiva" />
									</center>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

<?php 
}
?>       
		</div>
		

<?php 
require_once './diagrameditor/crear_perspectivas.php';
?>

		<div 
			style="display:inline-block;position:absolute;top:60px;">

		<!--Perspectiva General-->
			<div  
				class="btn btn-success btn-sm" 
				id="mostrar" 
				onclick="etiqueta(this)" 
				style="display:inline-block"
				>General
			</div>
		
			<input 
				class="oculto" 
				type="text" 
				name="cod_proyecto" 
				id="cod_proyecto" 
				value="<?=$cod_proyecto?>" />
			
			<textarea 
				class="oculto" 
				name=dom_proyecto 
				id=ingreso>
			</textarea>
			<textarea 
				class="oculto" 
				id="ingreso_out"
				><?=$dom_proyecto?>
			</textarea>

<?php
$index = 0;
while($row_prp2 = mysqli_fetch_assoc($res_prp)) {
?>

<?php
	if ($row_prp2['estado'] == 1) {
		$colorPerspectiva = 'primary';
	} else {
		$colorPerspectiva = 'dark';
	}
	
?>
			<!--Perspectivas Especificas-->
			
			<div 
				class="btn btn-<?=$colorPerspectiva?> btn-sm" 
				style="display:inline-block">
				<div 
					style="display:inline-block" 
					class="<?=$row_prp2['cod_pro_per']?>" 
					id='<?="per$index"?>' 
					onclick="etiqueta(this)"
					><?=$row_prp2["nom_perspectiva"]?>
				</div>
			</div>
		
			<input 
				class="oculto" 
				type="text" 
				name='<?="cod_pro_per$index"?>' 
				id="<?="cod_pro_per$index"?>" 
				value="<?=$row_prp2['cod_pro_per']?>" />
			
			<textarea 
				class="oculto" 
				name=<?="dom_pro_per$index"?> 
				id=<?="dom$index"?>
				><?=$row_prp2['dom_perspectiva']?>
			</textarea>
			<textarea 
				class="oculto" 
				name="" 
				id=<?="dom_out$index"?>>
			</textarea>
<?php
	$index++;
}
?>

			<input 
				class="oculto" 
				type="text" 
				id="etiqueta" 
				value="previa_carga" />
			<input 
				class="oculto" 
				type="text" 
				id="codigo_campo" />
			
			<textarea 
				class="oculto" 
				name="" 
				id="previa_carga"
				><?=$cantidad_perspectivas?>
			</textarea>

		</div>

<?php
require_once './diagrameditor/manejo_perspectivas.php';
?>

		<script src="../../../bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>