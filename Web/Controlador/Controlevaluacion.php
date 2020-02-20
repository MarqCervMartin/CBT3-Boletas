<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
 
        <title></title>
    </head>
    <body>
        <?php
        require '../Controlador/Basededatos/conexion.php';
$estatusalmacenado=$_POST['estatus'];

if($estatusalmacenado=="0"){
    echo 'Selecciona el estatus a cambiar';
} elseif ($estatusalmacenado == "Desactivar periodos") {
            $sqldes = "update ctrevaluacion set status='inactivo'";
            $resultadow = $mysqli->query($sqldes);
        } else {
            $sql = "update ctrevaluacion set status='inactivo'";
            $resultadow = $mysqli->query($sql);
            $sql1 = "update ctrevaluacion set status='Activo'where periodo='$estatusalmacenado'";
            $resultado = $mysqli->query($sql1);
        }


        ?>
    </body>
    <a href="javascript:location.reload()"><?php echo 'el '.$estatusalmacenado.' se cambio con exito';  ?></a>
</html>
