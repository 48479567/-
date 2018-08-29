
var jsDiagramInfo =
	'<hr />' +
	'<h1>Acerca del Diagrama</h1>' +
	'<p>Este es el entorno para desarrollar el modelo del sistema viable.</p>' +
	'<h2>Caracteristicas</h2>' +
	'<ul>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
		'<li></li>' +
	'</ul>';

$(function ()
{
	$('select').selectmenu();
	$('input[type=submit], input[type=button], button')
		.button();
	$('#expandButton')
		.click(function (event)
		{
			event.preventDefault();
		});

	$('#copyright').html("&copy; " + new Date().getFullYear() + " MindFusion");
	$('#infoTab :last-child').last().after(jsDiagramInfo);
});

var collapsed = false;
function onExpandCollapse()
{
	if (collapsed)
	{
		$('#info').css('width', '400px');
		$('#content').css('right', '401px');
		$('#expandButton').button("option", "label", ">");
		collapsed = false;
	}
	else
	{
		$('#info').css('width', '0px');
		$('#content').css('right', '0px');
		$('#expandButton').button("option", "label", "<");
		collapsed = true;
	}
}
