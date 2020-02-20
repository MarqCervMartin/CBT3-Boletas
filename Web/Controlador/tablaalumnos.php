<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
require './Basededatos/conexion.php';
session_start();
$_SESSION['nickname']=$_POST['grado'];
$query ="select id_usuario,matricula,concat(Paterno,' ',Materno,' ',Nombres)as nombre_completo,grado from alumno where grado=".$_SESSION['nickname']." and inscrito='no'";
$resultado = $mysqli->query($query) or die($mysqli->error);

?> 
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <form  action="../Modelo/arregloInscripcion.php" method="POST">
                       <div>
                        <table  id="table" class="table" >
                            <thead class="thead-dark">
                                <tr>
                                    <th>Control</th>
                                    <th>Matricula</th>
                                    <th>Nombre Completo</th>
                                    <th>Grado</th>
                                    <th>Grupo</th>
                                   
                                </tr>
            <?php 
       
           while ($row = $resultado->fetch_assoc()) {
               
           
               ?>
                                <tr>
                                    <td><input type="text"   name="control[]"  value="<?php echo $row['id_usuario']; ?>"></td>
                                    <td><input type="text"   name="matriculado[]"  value="<?php echo $row['matricula']; ?>"></td>
                                        <td><input type="text"   name="nombre[]"  value="<?php echo $row['nombre_completo']; ?>"></td>       
                                        <td><input type="text"   name="grado[]"  value="<?php echo $row['grado']; ?>"></td>  
                                        <td>
                                            <select name="grupo[]">
                                                <option value="0">Seleccione..</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            
                                            </select>
                                        </td>
                                        
                                        

                                    </tr>               
          <?php
           }
            
            ?>

                            </thead>




                        </table>
                        <input type='submit' id='enviar' name='enviar' value='Guardar'  align="center" class="btn btn-info" />
        
                       </div></form>
    </body>
</html>
