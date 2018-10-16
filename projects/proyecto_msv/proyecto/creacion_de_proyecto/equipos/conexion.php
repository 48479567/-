<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "msv001";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Conexion Fallida: " . $conn->connect_error);
} 

?>