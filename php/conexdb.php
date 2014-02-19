<?php 
function Conectarse() {
	$pass="amir0846";
   $db="baloco";

   if (!($conex=mysql_connect("localhost","root",$pass)))
   {
      echo "Error conectando a la base de datos.";
      exit();
   }
   if (!mysql_select_db($db,$conex))
   {
      echo "Error seleccionando la base de datos";
      exit();
   }
   return $conex;
}

?>