<?php



	$ruta = 'files/';	

	foreach ($_FILES as $key) {

		$nombre=$key["name"];
		$ruta_temporal=$key["tmp_name"];		
		
		$fecha=getdate();
		$nombre_v=$fecha["mday"]."-".$fecha["mon"]."-".$fecha["year"]."_".$fecha["hours"]."-".$fecha["minutes"]."-".$fecha["seconds"].".csv";		

		$destino=$ruta.$nombre_v;
		$explo=explode(".",$nombre);


		if($explo[1] != "csv"){
			$alert=1;
		}else{

			if(move_uploaded_file($ruta_temporal, $destino)){
				$alert=2;
			}

		}

	}

	$x=0;
	$data=array();
        $data1=array();
	$fichero=fopen($destino, "r");

	while(($datos= fgetcsv($fichero,1000)) != FALSE){

		$x++;
		if($x>0){

			$data[]='(0,'.$datos[0].',"'.$datos[1].'","'.$datos[2].'","'.$datos[3].'"'
                        . ',"'.$datos[4].'","'.$datos[5].'",'.$datos[6].',"'.$datos[7].'"'
                        . ',"'.$datos[8].'","'.$datos[9].'","'.$datos[10].'",'.$datos[11].','
                        . '"'.$datos[12].'","'.$datos[13].'","'.$datos[14].'","'.$datos[15].'",'
                        . '"'.$datos[16].'","'.$datos[17].'","'.$datos[18].'","'.$datos[19].'",'
                        . '"'.$datos[20].'","'.$datos[21].'")';
                        
/*Linea de datos para el registro de profesores en usuarios*/
                        $data1[]='('.$datos[0].',"PRF'.$datos[8].''.$datos[0].'",sha1("PRF'.$datos[8].''.$datos[0].'"),2,now(),"n/a","n/a")';

		}

	}
include '../Controlador/Basededatos/conexion.php';
        $eliminar="delete from usuario where auth_id=2";
        $mysqli->query($eliminar);
        
        $eliminar1="delete from Profesor";
        $mysqli->query($eliminar1);
        
        $eliminar4="delete from materiasign";
        $mysqli->query($eliminar4);
        
        $eliminar2="delete from materiasign";
        $mysqli->query($eliminar2);
        
	$inserta="insert into profesor values ". implode(",", $data);
	$mysqli->query($inserta);
        
       
        $inserta2="insert into usuario values ". implode(",", $data1);
        $mysqli->query($inserta2);
	fclose($fichero);
       
 header("Location: welcome.php");

?>