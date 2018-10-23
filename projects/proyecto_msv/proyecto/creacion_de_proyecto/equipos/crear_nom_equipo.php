<?php 
require_once './conexion.php';
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
		<h2>Ingrese a su equipo</h2>
		<form action="enviar_nom_equipo.php" method="post">
			<div class="inputBox">
				<input type="text" id="npm_equipo" name="npm_equipo" required="">
				<label>Nombre del Equipo</label>
			</div>
			<div>
				<input type="submit" name="" value="Crear">
			</div>
		</form>
	</div>
<form id="myForm">
    
</form>

</body>

</html>