<?php
$conexion = mysqli_connect('localhost:3307', 'root', '', 'librería');

$errores = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $isbn = $_POST['isbn'];
    $nombre = $_POST['nombre'];
    $autor = $_POST['autor'];
    $precio = $_POST['precio'];
    $editorial = $_POST['editorial'];

    $peticionINSERTAR = "INSERT INTO libros (isbn,nombre,autor,precio,editorial)
    VALUES ('$isbn','$nombre','$autor','$precio','$editorial')";
    //echo $peticionINSERTAR;

    $VALUE = array($isbn, $nombre, $autor, $precio, $editorial);

    if($isbn === '') {
        $errores[] = 'Debes ingresar un ISBN';
    } 
    if($nombre === '') {
        $errores[] = 'Debes ingresar un nombre';
    } 
    if($autor === '') {
        $errores[] = 'Debes ingresar un autor';
    } 
    if($precio === '') {
        $errores[] = 'Debes ingresar un precio';
    } 
    if($editorial === '') {
        $errores[] = 'Debes ingresar un editorial';
    } 

    if (empty($errores)) {
        if(mysqli_query($conexion,$peticionINSERTAR)){
            echo "<script> alert('Datos insertados correctamente'); </script>";
            echo "<pre>";
            var_dump($VALUE);
            echo "</pre>";
        }
        else {
            echo "<script> alert('Error al insertar datos'); location.href='../libros/crear.php'; </script>";
        }
    }
    
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear un Libro</title>
</head>
<body>
    <form action="libros_bd.php" method="POST">
        <label for="">ISBN</label>
        <input type="text" name="isbn">
        <label for="">Nombre</label>
        <input type="text" name="nombre">
        <label for="">Autor</label>
        <input type="text" name="autor">
        <label for="">Precio</label>
        <input type="number" name="precio">
        <label for="">Editorial</label>
        <input type="text" name="editorial">
        <input type="submit" value="Enviar">
    </form>
    <?php foreach($errores as $error): ?>
        <div><?php echo $error ?></div>
    <?php endforeach?>
</body>
</html>