<?php

header("Access-Control-Allow-Origin: *"); // Permitir cualquier origen
header("Access-Control-Allow-Methods: GET"); // Permitir solo el método GET

if (!isset($peticion)) {
    http_response_code(500);
    die();
}

$email = $_GET['email'];
$contrasenya = $_GET['contrasenya'];

require_once 'includes/conexion.php';
if (!isset($connexion)) die();

$query = "SELECT * FROM usuarios where email = '$email' AND contrasenya = '$contrasenya_encriptada'";
$result = mysqli_query($connexion, $query);

if (mysqli_num_rows($result) > 0) {
    http_response_code(200);
} else {
    http_response_code(400);
}