<?php
require '../../Controlador/Basededatos/conexion.php';
$query ="select id_usuario,concat(Nombres,' ',Paterno,' ',Materno)as nombre_completo,materiasasign from profesor where materiasasign=0 or materiasasign=2 or materiasasign=1";
$response = $mysqli->query($query);
?>

<html>
    <head>
        <meta charset="UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <title></title>
    </head>
    <body>
               <form id="combo" name="combo" action="G_asistencia.php" method="POST">
                   <script src="js/AjaxPanel.js" type="text/javascript"></script>
                   
            <section class="portfolio">
                <div class="container">
                    <h2 class="text-center text-uppercase text-secondary mb-0">Asignacion de Materias</h2>
                    <br>
                    <div class="row">

                        <h6> Selecciona el profesor :</h6> 
                        <select name="cbx_profesor" id="cbx_profesor" onchange="virgen();" align="center" class="form-control">

                            <option value="0">Seleccione</option>
                            <?php while ($row = $response->fetch_assoc()) { ?>
                            <option value="<?php echo $row['id_usuario']; ?>"><?php echo $row['nombre_completo']; ?></option>
  <?php } ?>

                        </select>

                        
                    </div>
                </div>
                
            </section>

        </form>
         <section class="portfolio" id="portfolio">
            <div class="container"><br><br>
           
                <div class="row">
                    <div id="meter"></div>
                </div></div>
                     </section>
    </body>
    
</html>
