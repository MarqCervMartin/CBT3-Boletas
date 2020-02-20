<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
	<title>Subir archivo CSV en PHP</title>
	<!-- libreria jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- cargar js -->
	<script src="js/cargar.js"></script>
</head>
<body>
    <main id="contenedor">
      <section class="formulario">
			
			<!-- -->
			<header>
				<h1>Materias CBT</h1>
			</header>
			<!-- -->
			
			<!-- -->
                        <section>
                            <form action="../Controlador/uploadmaterias.php" method="post" enctype="multipart/form-data">                           
 					<p><img src="../Imagenes/file.png" alt="" class="imagen"></p>
					<h2>Subir Materias CSV</h2>       
     <p><input name="archivo" type="file" size="35" /></p>
     	<p><input type="submit" class="enviar_archivo separar_boton" value="Enviar archivo"></p>

   
    <div id="estado"></div>
				</form>

			</section>
			<!-- -->

		</section>
		<!-- ./formulario -->

	</main>
	<!-- ./contenedor -->

</body>
</html>
