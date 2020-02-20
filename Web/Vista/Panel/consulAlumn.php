<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
                    <h2 class="text-center text-uppercase text-secondary mb-0">Registrar Usuarios</h2>
                    <br>
                    <div class="row">

                        <h6> Selecciona grado :</h6> 
                        <select name="cbx_grado" id="cbx_grado" onchange="grado();" align="center" class="form-control">

                            <option value="0">Grado</option>
                            <option value="1">1°</option>
                            <option value="2">2°</option>
                            <option value="3">3°</option>

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
