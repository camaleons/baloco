<?php 
include("../php/header.php");
 ?>
        <div class="row-fluid">
            <div class="span8 offset2">
                <div id="contenido">
                    <form action="../php/insertar.php" class="form-inline" method="POST">
                        <fieldset>                        
                                <div id="info-cliente">
                                    <h2>Datos del Cliente</h2>
                                    <p>
                                        <input type="text" placeholder="Nombres" name="nombres">
                                        <input type="text" placeholder="Primer Apellido" name="p_apellido">
                                        <input type="text" placeholder="Segundo Apellido" name="s_apellido"><br>
                                        <br><input type="text" placeholder="Número de Cédula" name="cedula">
                                        <input type="text" placeholder="Dirección" name="direccion">
                                        <input type="text" placeholder="Número de Teléfono" name="telefono">
                                    </p>
                                </div><br>

                                <div id="info-credito">
                                    <br><h2>Información del crédito</h2>
                                    <input type="text" placeholder="Valor" name="valor">
                                    <select name="porcentaje">
                                        <option value="0">--Escoja una Opción--</option>
                                        <option value="1">1%</option>
                                        <option value="2">2%</option>
                                        <option value="3">3%</option>
                                        <option value="4">4%</option>
                                        <option value="5">5%</option>
                                        <option value="6">6%</option>
                                        <option value="7">7%</option>
                                        <option value="8">8%</option>
                                        <option value="9">9%</option>
                                        <option value="10">10%</option>
                                    </select>
                                    <input type="date" name="fecha" placeholder="aaaa/mm/dd"><br>
                                    <br><input type="text" placeholder="Número de Tarjeta" name="n_tarjeta">
                                    <input type="text" placeholder="Clave de Tajeta" name="clave">
                                    <input type="text" placeholder="Numero de Prenda" name="prenda">
                                </div><br>

                                <br><input type="Submit" value="Guardar" class="btn btn-primary" name="Guardar">
                                <input type="reset" value="Borrar Datos" class="btn btn-danger">
                            
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
<?php 
include("../php/footer.php");
 ?>