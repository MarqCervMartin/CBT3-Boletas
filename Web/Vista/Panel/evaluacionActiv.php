<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
require '../../Controlador/Basededatos/conexion.php';
session_start();

$query ="select * from ctrevaluacion";
$resultado = $mysqli->query($query) or die($mysqli->error);

?> 
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <script src="js/AjaxPanel.js" type="text/javascript"></script>
    </head>
    <body>
        <form  action="../Modelo/arregloInscripcion.php" method="POST">
                       <div>
                        <table  id="table" class="table" >
                            <thead class="thead-dark">
                                <tr>
                                    <th>Periodo</th>
                                    <th>Estatus Actual</th>
                               
                                 
                                   
                                </tr>
            <?php 
       
           while ($row = $resultado->fetch_assoc()) {
               
           
               ?>
                                <tr>
                                    <td><?php echo $row['periodo']; ?></td>
                                    <td><?php echo $row['status']; ?></td>
                                         
                                       
                                        <?php
           }
            
            ?>
                                        
                                        

                                </tr>               
                            <h4>Seleccione el periodo a activar</h4>
                           
                            <select id="cambiode" onchange="cambiarperiodo();">
                                <option value="0">Seleccione..</option>
                                <option value="1 periodo">1 periodo</option>
                                <option value="2 periodo">2 periodo</option>
                                <option value="3 periodo">3 periodo</option>
                                <option value="evaluacion final">evaluacion final</option>
                                 <option value="Desactivar periodos">Desactivar periodos</option>
                                



                            </select>
 <br/><br/>
                        </thead>




                        </table>
                        
        
                       </div></form>
        <div id="srfrod"></div>
    </body>
</html>
