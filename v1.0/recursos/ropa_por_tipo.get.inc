<?php

header("Access-Control-Allow-Origin: *"); // Permitir cualquier origen
header("Access-Control-Allow-Methods: GET"); // Permitir solo el método GET

if (!isset($peticion)) {
    http_response_code(500);
    die();
}

$token = $_GET['token'];

require_once 'includes/conexion.php';
if (!isset($connexion)) die();

$query = "SELECT * FROM ropa where tipo = '$token'";
$result = $connexion->query($query);


$result = $connexion->query($query);
$result = mysqli_query($connexion, $query);
while ($row = mysqli_fetch_assoc($result)) {
    $salida[] = $row;
}