<?php 
require_once './conexion.php';
session_start();
$usuario_actual = $_SESSION['cod_usuario'];
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
	<title></title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#btnAdd').click(function() {
				var num		= $('.clonedInput').length;	// how many "duplicatable" input fields we currently have
				var newNum	= new Number(num + 1);		// the numeric ID of the new input field being added

				// create the new element via clone(), and manipulate it's ID using newNum value
				var newElem = $('#input' + num).clone().attr('id', 'input' + newNum);

				// manipulate the name/id values of the input inside the new element
				newElem.children(':first').attr('id', 'name' + newNum).attr('name', 'name' + newNum);

				// insert the new element after the last "duplicatable" input field
				$('#input' + num).after(newElem);

				// enable the "remove" button
				$('#btnDel').attr('disabled','');

				// business rule: you can only add 5 names
				if (newNum == 10)
					$('#btnAdd').attr('disabled','disabled');
			});

			$('#btnDel').click(function() {
				var num	= $('.clonedInput').length;	// how many "duplicatable" input fields we currently have
				$('#input' + num).remove();		// remove the last element

				// enable the "add" button
				$('#btnAdd').attr('disabled','');

				// if only one element remains, disable the "remove" button
				if (num-1 == 1)
					$('#btnDel').attr('disabled','disabled');
			});

			$('#btnDel').attr('disabled','disabled');
		});
	</script>
</head>

<body>

<div class="box">
		<h2>Equipo <?=$_SESSION['npm_equipo']?></h2>
		<h2>Equipo <?=$_SESSION['cod_equipo']?></h2>
		<form action="enviar_per_equipo.php" method="post">
			<div id="input1" style="margin-bottom:4px;color: #fff;" class="clonedInput">
        	Analista: <input list="Analistas" name="name1" id="name1">

        	<datalist id="Analistas">
			        <?php
					/*
					 * Código para mostrar datos dinámicamente en un combobox.
					 */
					$query = "SELECT * FROM usuarios
					WHERE cod_usuario <> '$usuario_actual'";
					$result = $conn->query($query);

					?>
					<select>    
<?php    
					while ( $row1 = $result->fetch_assoc() )    
					{
?>
					    
							<option value="<?=$row1['cod_usuario']?>"><?=$row1['nom_usuario']?>
					        </option>
					        
<?php
					}    
?>        
					</select>
					<?php

					?>

			</datalist>
				</div>
 
    <div>
        <input type="button" id="btnAdd" value="Agregar Analista" />
        <input type="button" id="btnDel" value="Eliminar Analista" />
    </div>
			<div>
				<input type="submit" name="" value="Crear">
			</div>
		</form>
	</div>

</body>
</html>

require_once 'conexion.php';