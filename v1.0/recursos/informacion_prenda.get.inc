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

$query = "SELECT ropa.nombre, ropa.descripcion, ropa.precio, ropa_talla_color.talla, ropa_talla_color.color, ropa_talla_color.cantidad
FROM ropa JOIN ropa_talla_color ON ropa.codigo_ropa = ropa_talla_color.codigo_ropa WHERE ropa.codigo_ropa = '$token'";


$result = $connexion->query($query);


$result = $connexion->query($query);
$result = mysqli_query($connexion, $query);
while ($row = mysqli_fetch_assoc($result)) {
    $salida[] = $row;
}