<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Calendario</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="Modelo/JS/jquery.min.js" type="text/javascript"></script>
        <script src="Modelo/JS/moment.min.js" type="text/javascript"></script>
        <!-- fULL CALENDAR -->
        <link href="Modelo/CSS/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
        <script src="Modelo/JS/fullcalendar.min.js" type="text/javascript"></script>
        <script src="Modelo/JS/es.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col"></div>
                <div class="col-7"><div id="calendariouweb"></div></div>
                <div class="col"></div>
            </div>
            
        </div>
        <script>
  $(document).ready(function (){
      $('#calendariouweb').fullCalendar();
  })      
        </script>
    </body>
</html>
