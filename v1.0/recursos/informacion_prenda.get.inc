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

$query = "SELECT 
    r.codigo_ropa,
    r.nombre, 
    r.descripcion, 
    r.precio, 
    r.imagen_principal,
    r.imagen_secundaria,
    r.tipo,
    rtc.color,
    rtc.talla,
    rtc.cantidad,
    ri.imagen,
    ri.tipo AS imagen_tipo
FROM 
    ropa r
JOIN 
    ropa_talla_color rtc ON r.codigo_ropa = rtc.codigo_ropa
LEFT JOIN 
    ropa_imagenes ri ON rtc.codigo_ropa = ri.codigo_ropa AND rtc.color = ri.color
WHERE 
    r.codigo_ropa = '$token'
ORDER BY 
    rtc.color, rtc.talla, ri.tipo;";


$result = $connexion->query($query);


$result = $connexion->query($query);
$result = mysqli_query($connexion, $query);
while ($row = mysqli_fetch_assoc($result)) {
    $salida[] = $row;
}