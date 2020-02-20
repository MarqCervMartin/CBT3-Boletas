<?php
require './Basededatos/conexion.php';
$idprofe=$_POST['idprofe'];
$materia= utf8_decode($_POST['datos']);
$numateria= utf8_decode($_POST['materias']);
$gruposign= utf8_decode($_POST['grupasig']);
$horario=$_POST['horario'];
$acum= intval($numateria)+1;
  

$query ="select count(*) AS REGISTRO from materiasign where materia='$materia' and grupoasign='$gruposign'";

$response = $mysqli->query($query);
while ($row = mysqli_fetch_array($response)) {
    $contador= intval($row['REGISTRO']);
    
   if ($contador>0){
       echo 'el grupo '.utf8_encode($gruposign).' ya tiene asignado en ese horario';  
   }else {
 $refquery="select count(*) AS time from materiasign where idprof='$idprofe' and horario='$horario'";
 $response = $mysqli->query($refquery);
while ($trows = mysqli_fetch_array($response)) {
      $resultTrow= intval($trows['time']);
      if ($resultTrow>0){
          echo 'elija otro horario ya que ese esta ocupado';
      }else{
                $inserta = "insert into materiasign values(null,$idprofe,'$materia','$gruposign','$horario') ";
                $mysqli->query($inserta);
                echo '<h2>Datos Registrados con exito</h2>';
                $sql1 = "update profesor set materiasasign=$acum where id_usuario=$idprofe";
                $resultado = $mysqli->query($sql1);
            }
}
   }
    
}

?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
     
    </body>
</html>
