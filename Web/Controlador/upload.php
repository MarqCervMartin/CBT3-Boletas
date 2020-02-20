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
	$fichero=fopen($destino, "r");

	while(($datos= fgetcsv($fichero,1000)) != FALSE){

		$x++;
		if($x>1){

			$data[]='(null,"no","'.$datos[0].'","'.$datos[1].'","'.$datos[2].'","'.$datos[3].'"'
                        . ',"'.$datos[4].'","'.$datos[5].'",'.$datos[6].',"'.$datos[7].'"'
                        . ',"'.$datos[8].'","'.$datos[9].'","'.$datos[10].'",'.$datos[11].','
                        . '"'.$datos[12].'","'.$datos[13].'","'.$datos[14].'","'.$datos[15].'",'
                        . '"'.$datos[16].'","'.$datos[17].'","'.$datos[18].'","'.$datos[19].'",'
                        . '"'.$datos[20].'","'.$datos[21].'",'.$datos[22].',"'.$datos[23].'",'
                        . '"'.$datos[24].'","'.$datos[25].'","'.$datos[26].'","'.$datos[27].'","'.$datos[28].'")';

		}

	}
include '../Controlador/Basededatos/conexion.php';
	$inserta2="insert into alumno values  ". implode(",", $data);
       
	$mysqli->query($inserta2);
        
	fclose($fichero);
        
  header("Location: index.php");

?>