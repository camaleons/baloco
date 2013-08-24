<?php 
include("conexdb.php");
$conex = conectarse();

$buscar_cedula = $_POST["buscar_cedula"];

$query = "SELECT p_apellido, s_apellido, nombres, porcentaje, fecha ";
$query .= "FROM clientes INNER JOIN credito ";
$query .= "WHERE clientes.cedula = '{$buscar_cedula}' AND clientes.id = credito.id";
$query .= " ORDER BY credito.fecha DESC";

$result = mysql_query($query, $conex);

if ($row = mysql_fetch_array($result)) {
	$aux = "<table class='table table-striped table-bordered consulta'> \n";
	$aux .= "<tr> \n";
	$aux .= "<th>1er. Apellido</th> \n";
	$aux .= "<th>2do. Apellido</th> \n";
	$aux .= "<th>Nombres</th> \n";
	$aux .= "<th>% Crédito</th> \n";
	$aux .= "<th>Fecha</th> \n";
	$aux .= "</tr> \n";
	echo ($aux);
	do {
		$aux2 = "<tr> \n";
		$aux2 .= "<td>".$row['p_apellido']."</td> \n";
		$aux2 .= "<td>".$row['s_apellido']."</td> \n";
		$aux2 .= "<td>".$row['nombres']."</td> \n";
		$aux2 .= "<td>".$row['porcentaje']."%</td> \n";
		$aux2 .= "<td>".$row['fecha']."</td> \n";
		$aux2 .= "</tr> \n";
		echo ($aux2);
	} while ($row=mysql_fetch_array($result));
	echo "</table> \n";
}else {
	echo "¡ La base de datos está vacia !";
}
 ?>
