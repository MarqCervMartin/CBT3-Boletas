<!--
function conectar(){
    $usuario="root";
    $password="";
    $servidor="localhost";
    $db="pventa";
    
    $conexion =  mysqli_connect($servidor, $usuario, $password)
        or die("Error al conectar la base de datos". mysql_error());
    mysqli_select_db($conexion,$db);
    
    return $conexion;
}
-->

<?php
$mysqli = new mysqli('localhost','root','','cbt');
if($mysqli->connect_error){
	die('Error de ('.$mysqli->connect_errno.')'
	   .$mysqli->connect_error);
}

if(mysqli_connect_error()){
	die('Error de conexion ('.mysqli_connect_errno().')'
	   .mysqli_connect_error());
}



?>
