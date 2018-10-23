<?php 
require_once './conexion.php';
session_start();
$usuario_actual = $_SESSION['cod_usuario'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title> <?=$_SESSION['npm_equipo']?> | ISG</title>
	<script src="../../../../../javascript/examples/editors/jquery_js.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#btnAdd').click(function() {
				var num		= $('.clonedInput').length;	// how many "duplicatable" input fields we currently have
				var newNum	= new Number(num + 1);		// the numeric ID of the new input field being added

				// create the new element via clone(), and manipulate it's ID using newNum value
				var newElem = $('#input' + num).clone().prop('id', 'input' + newNum);
				// manipulate the name/id values of the input inside the new element
				newElem.children(':first').prop('id', 'name' + newNum).prop('name', 'name' + newNum);
				$('#cant_input').prop('value', newNum);
				// insert the new element after the last "duplicatable" input field
				$('#input' + num).after(newElem);
				// enable the "remove" button
				$('#btnDel').prop('disabled', false);

				// business rule: you can only add 5 names
				if (newNum == 10)
					$('#btnAdd').prop('disabled', true);
			});

			$('#btnDel').click(function() {
				var num	= $('.clonedInput').length;	// how many "duplicatable" input fields we currently have
				$('#input' + num).remove();		// remove the last element
				$('#cant_input').prop('value', num - 1);
				// enable the "add" button
				$('#btnAdd').prop('disabled', false);

				// if only one element remains, disable the "remove" button
				if (num == 2)
					$('#btnDel').prop('disabled', true);
			});

			$('#btnDel').prop('disabled', false);
			
		});
	</script>
</head>

<body>


<div class="box">
<h2>Equipo <?=$_SESSION['npm_equipo']?></h2>
		<form action="enviar_per_equipo.php" method="post">
			<div id="input1" style="margin-bottom:4px;color: #fff;" class="clonedInput">
Analista: 
				<input list="Analistas" name="name1" id="name1" autocomplete="off">

        	<datalist id="Analistas">
<?php
					/*
					 * Código para mostrar datos dinámicamente en un combobox.
					 */
					$query = "SELECT * FROM usuarios WHERE cod_usuario <> '$usuario_actual'";
					$result = $conn->query($query); ?>
						<select>    
<?php    
					while ( $row1 = $result->fetch_assoc() )    
					{ ?>
					    
						<option value="<?=$row1['cod_usuario']?>"><?=$row1['nom_usuario']?></option>     
<?php
					} ?>        
						</select>
					</datalist>
				</div>
				<input class="oculto" type="text" name="cant_input" id="cant_input">
      <input type="button" id="btnAdd" value="Agregar Analista" />
      <input type="button" id="btnDel" value="Eliminar Analista" />
		<input type="submit" name="" value="Crear">
		</form>
	</div>

</body>
</html>