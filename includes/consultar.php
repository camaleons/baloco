<!doctype html>
<html lang = 'es'>
	<head>
		<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Control de Créditos</title>
        <meta name="description" 
            content="Esta aplicación esta diseñada para llevar control sobre los creditos realizados a los clientes de la empresa Támara e Hijos." />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        
        <link rel="stylesheet" type="text/css" href="/baloco/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="/baloco/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="/baloco/css/normalize.min.css" />
        <link rel="stylesheet" href="/baloco/css/estilos.css" />
        <script src="/baloco/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="/baloco/js/vendor/jquery-2.0.0.min.js"></script>		
        <script>
			$(document).ready(function() {
				$('#btn-buscar').click(function(){
					$.ajax({
						type : 'POST',
						data : 'buscar_cedula=' + $('#buscar_cedula').val(),
						url  : '../php/consulta.php',
						success : function(data)
						{
							$('#resultados').html(data)
						}
					});
				});
			});
		</script>     
	</head>
	
    <body>
        <div>            
            <header>
                <figure id="logo">
                        <img src="/baloco/img/logo.png" />
                </figure>
                                
                <div id="titulo_nav">
                    <h1>Támara & Hijos</h1>
                    <div id="eslogan">
                        <small>Sistema de Gestión de Créditos</small>
                    </div>
                    <nav>
                        <a href="/baloco/index.php">Home</a>
                        <a href="/baloco/includes/agregar.php">Agregar</a>
                        <a href="/baloco/includes/consultar.php">Consultar</a>
                    </nav>
                </div>                                   
            </header>
        </div>
        
        <div class="row-fluid">
            <div class="span8 offset1">
                <div id="contenido" class="form-inline">                	                   
                    <input type="text" id="buscar_cedula" placeholder="Escriba un Nro. de cédula">
                    <input type="button" id="btn-buscar" value="Buscar" class="btn btn-primary">
                    <br><br>
                    <div id="resultados"></div>                  
                    
              </div>
            </div>
        </div>        
<?php 
include("../php/footer.php");
 ?>