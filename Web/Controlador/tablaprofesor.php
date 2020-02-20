<?php
require './Basededatos/conexion.php';
$profesor=$_POST['NOMPROFESOR'];

$query ="select id_usuario,concat(Nombres,' ',Paterno,' ',Materno)as nombre_completo,materiasasign from profesor where id_usuario='$profesor'";
$response = $mysqli->query($query);
?> 
<html>
    <head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title></title>
    </head>
    <body>
        <script src="../Vista/Panel/js/AjaxPanel.js" type="text/javascript"></script>
       
                       <div>
                        <table  id="table" class="table" >
                            <thead class="thead-dark">
                                <tr>
                                    <th>CONTROL</th>
                                    <th>NOMBRE COMPLETO</th>
                                    <th>N-MATERIAS</th>
                                    <th>MATERIAS</th>
                                    <th>GRUPO ASIGNADO</th>
                                    <th>HORARIO</th>
                                   
                                </tr>
            <?php 
       
           while ($row = $response->fetch_assoc()) {
               
           
               ?>
                                <tr>
                                    <td><?php echo $row['id_usuario']; ?></td>
                                    <td><?php echo $row['nombre_completo']; ?></td>
                                        <td><?php echo  $row['materiasasign']; ?></td>       
       
                                        <?php 
                                        $query1="select * from materias" ;  
                                        $responses = $mysqli->query($query1);
                                        ?>
                                        <td>
                                            <select id="materias">
                                                <option value="0">Seleccione..</option>
                                               <?php while ($rew = $responses->fetch_assoc()) { ?>
                            <option value="<?php echo utf8_encode($rew['materia']); ?>"><?php echo utf8_encode($rew['materia']); ?></option>
  <?php } ?>
                                               
                                            
                                            </select>
                                            
                                        </td>
                                        <?php 
                                        $queryto="select concat(grado,' ',grupo) as grupos from grupos" ;  
                                        $responses = $mysqli->query($queryto);
                                        ?>
                                        <td ><select id="grupasign">
                                                <option value="">Seleccione..</option> 
                                                <?php while ($rew = $responses->fetch_assoc()) { ?>
                                                <option value="<?php echo utf8_encode($rew['grupos']); ?>"><?php echo utf8_encode($rew['grupos']); ?></option>
                                              <?php } ?></select></td>
                                        <td>
                                            
                                            <input type="time" id="horario" value=""  />
                                        </td>
                                        
                                        

                                    </tr>               
         

                            </thead>




                        </table>
                            <?php 
               echo '<input type="button" onclick="presionar('.$row['id_usuario'].','.$row['materiasasign'].');" id="enviar" name="enviar" value="Guardar"  align="center" class="btn btn-info" />';
                           
                                         
           }
            
            ?>
                       </div>
        <div id="finaly"></div>
    </body>
</html>
