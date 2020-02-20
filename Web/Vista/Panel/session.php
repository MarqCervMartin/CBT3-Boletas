<html lang="es">
<head>
	<?php 
require '/opt/lampp/htdocs/Proyec/cbt3sistema/CBT3VANILA/Controlador/Basededatos/conexion.php';

	session_start();
	
	if(isset($_SESSION["id_usuario"])){
		header("localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/welcome.php");
                
                
	}
	
	if(!empty($_POST))
	{
		$usuario = mysqli_real_escape_string($mysqli,$_POST['usuario']);
		$password = mysqli_real_escape_string($mysqli,$_POST['password']);
          
                echo $password;
		$error = '';
		
		$sha1_pass = sha1($password);
                
		
		$sql = "SELECT id_usuario,auth_id FROM usuario WHERE matricula = '$usuario' AND contrasenia = '$sha1_pass'";
		 $result = $mysqli->query($sql);
            $rows = $result->num_rows;
		
		if($rows > 0) {
			$row = $result->fetch_assoc();
			$_SESSION['id_usuario'] = $row['id_usuario'];
			$_SESSION['auth_id'] = $row['auth_id'];
			
                        $compartu=$row['auth_id'];
                        switch ($compartu){
                          Case 1:
                              echo 'administrador';
                              header("localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/welcome.php");
                              break;
                          case 2:
                              echo 'Profesor';
                               header("localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/welcomeprof.php");
                               break;
                          case 3:
                              echo 'alumno';
                               header("localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/welcomealumn.php");
                               break;
                          case  4:
                              echo 'Orientador';
                               header("localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/welcomeorientador.php");
                               break;
                          case 5: 
                              echo 'Padre de familia';
                               header("localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/welcomepadre.php");
                               break;
                           default :
                               echo 'No se pudo iniciar session';
                        }
                        
                        
                        
                        
			
			} else {
			$error = "El nombre o contraseña son incorrectos $sha1_pass";
		}
	}
?>
	<title>LogIn</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
</head>
<a href="localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/welcome.php"></a>
<body class="cover" style="background-image: url(./assets/img/loginFont.jpg);">
    <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST" autocomplete="off" class="full-box logInForm" >

		<p class="text-center text-muted"><i class="zmdi zmdi-account-circle zmdi-hc-5x"></i></p>
		<p class="text-center text-muted text-uppercase">Inicia sesión con tu cuenta </p>
		<div class="form-group label-floating">
		  <label class="control-label" for="UserEmail">Usuario</label>
                  <input class="form-control" name="usuario" type="text">
		  <p class="help-block">Escribe tú matricula</p>
		</div>
		<div class="form-group label-floating">
		  <label class="control-label" for="UserPass">Contraseña</label>
                  <input class="form-control" name="password"  type="password">
		  <p class="help-block">Escribe tú contraseña</p>
		</div>
		<div class="form-group text-center">
			<input type="submit" value="Iniciar sesión" class="btn btn-raised btn-danger"><br/>
                        <a href="#">Olvidé mi password</a><br>
        <a href="localhost/Proyec/cbt3sistema/CBT3VANILA/Controlador/registro.php">Registrate</a><br>
       
        <div style = "font-size:16px; color:#cc0000;"><?php echo isset($error) ? utf8_decode($error) : '' ; ?></div>
		</div>
	</form>
    
	<!--====== Scripts -->
	<script src="./js/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/material.min.js"></script>
	<script src="./js/ripples.min.js"></script>
	<script src="./js/sweetalert2.min.js"></script>
	<script src="./js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="./js/main.js"></script>
	<script>
		$.material.init();
	</script>
</body>
</html>