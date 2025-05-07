
<!DOCTYPE html>
<html lang="es">

<?php
 // Mostrar todos los errores (útil para debugging)
 ini_set('display_errors', 1);
 error_reporting(E_ALL);
 // Conectar a la base de datos
 // Cambiar el servername por el que proceda: localhost, IP, url, …
 $servername = "127.0.0.1";
 $username = "vicente";
 $password = "p@ssw0rd";
 $dbname = "camp";
 $conn = new mysqli($servername, $username, $password, $dbname);
 // Verificar la conexión
 if ($conn->connect_error) {
 die("Conexión fallida: " . $conn->connect_error);
 }
?>
<head>
  <meta charset="UTF-8">
  <title>Tabla de Autos</title>
  <link rel="stylesheet" href="enlaces.css">
</head>
<body>

  <h2 style="text-align: center;">Tabla de Vehículos</h2>

  <table>
    <thead>
      <tr>
        <th>matricula</th>
        <th>modelo</th>
        <th>combustible</th>
        <th>motor</th>
        <th>plazas</th>
        <th>maletas</th>
        <th>foto</th>
        <th>codgama</th>    
        <th>coste</th>
      </tr>
    </thead>
    <tbody>
          <?php
    // Consultar los datos
    $sql = "SELECT * FROM clientes";
    $result = $conn->query($sql);
    if ($result === false) {
    die("Error en la consulta: " . $conn->error);
    }
    if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    echo " <tr>
    <td>{$row['cliente']}</td>
    <td>{$row['coche']}</td>
    <td>{$row['gama']}</td>
    <td>{$row['reserva']}</td>
    </tr>";
    }
    }
    ?>
    </tbody>
  </table>

</body>
</html>


