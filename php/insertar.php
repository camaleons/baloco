<?php	
include("conexdb.php");
$conex=Conectarse();

include("variables.php");

/* Esta es la forma de actualizar los campos en la base de datos.
$sql_update = "UPDATE clientes SET cedula = '$cedula', ´p_apellido´ = '$p_apellido', ´s_apellido´ = '$s_apellido', ´nombres´ = '$nombres', ´direccion´ = '$direccion', ´telefono´ = '$telefono'";*/

$sql = "INSERT INTO clientes VALUES('$cedula', '$p_apellido', '$s_apellido', '$nombres', '$direccion', '$telefono')";
$result = mysql_query($sql, $conex);

$sql2 = "INSERT INTO empresa VALUES('$nit', '$razon_social', '$dia_pago', '$desprendible')";
$result2 = mysql_query($sql2, $conex);

$sql3 = "INSERT INTO credito VALUES ('$n_tarjeta', '$valor', '$porcentaje', '$fecha', '$clave', '$prenda')";
$result3 = mysql_query($sql3, $conex);

mysql_close($conex);

echo "<script>window.location.href='../includes/agregar.php';</script>";

?>

