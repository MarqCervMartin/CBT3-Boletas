<?php 
require '../Controlador/Basededatos/conexion.php';
$control = $_POST['control'];
$matricula = $_POST['matriculado'];
$nombre = $_POST['nombre'];
$grado = $_POST['grado'];
$grupo = $_POST['grupo'];
for ($i=0; $i<sizeof($nombre);$i++){
 
  $sha1_pass = sha1($matricula[$i]);
  $sql="insert into usuario values($control[$i],'".$matricula[$i]."','$sha1_pass',3,now(),'".$grado[$i]."','".$grupo[$i]."')";

 $resultado = $mysqli->query($sql);

  if ($resultado) {
    session_start();
 $grados=$_SESSION['nickname'];
      $sql1="update alumno set inscrito='si' where Grado=$grados";
     
      $resultado = $mysqli->query($sql1);
    
     echo '<script type="text/javascript">alert("Registro exitoso");</script>';
           header("Location: ../Controlador/welcome.php");
          } else {
          echo '<script type="text/javascript">alert("Error");</script>';
           header("Location: ../Controlador/welcome.php");
      }
}
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
   
    </head>
    <body>
        <?php
        // put your code here
        ?>
    </body>
</html>
