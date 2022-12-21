<?php include('headerAdmin.php');
$id = $_GET['idusuario'];
$conexion=conexion();
$m = "SELECT `usuario`.*, `operaciones`.*, `cargo`.*, CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
FROM `usuario` 
	LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
	LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo` WHERE idusuario= $id";
$modificar = $conexion->query($m);
$dato = $modificar->fetch_array();
if (isset($_POST['modificar'])) {
    // recuperar datos que estan en los inputs
    $id = $_POST['idU'];
    $email = $conexion->real_escape_string($_POST['mEmail']);
    $contraseña = $conexion->real_escape_string($_POST['mContraseña']);
    // realizar consulta para modificar los datos de la tabla
    $actualiza = "UPDATE usuario, cargo SET email ='$email',contraseña ='$contraseña' WHERE idusuario = '$id'";
    $actualizar = $conexion->query($actualiza);
    header("location:gestiondecuentas.php  ");


}
?>




						<form action="#" method="POST">
							<div class="mb-3">
								<input type="hidden" name="idU" value="<?php echo $dato['idusuario']; ?>">
							</div>
							<div class="mb-3">
								<label class="form-label">Nombre completo</label>
								<input class="form-control form-control-lg" type="name" name="nombre" value="<?php echo $dato['nombre_completo'];?>"placeholder="Nombre completo" required disabled/>
							</div>


                            <div class="mb-3">
								<label class="form-label">Usuario</label>
								<input class="form-control form-control-lg" type="usuario" name="usuario" value="<?php echo $dato['usuario'];?>"placeholder="Usuario" required disabled/>
							</div>
                            <div class="mb-3">
								<label class="form-label">Contraseña</label>
								<input class="form-control form-control-lg" type="password" name="mContraseña" value="<?php echo $dato['contraseña'];?>"placeholder="contraseña" required />
							</div>
                            <div class="mb-3">
								<label class="form-label">Email</label>
								<input class="form-control form-control-lg" type="email" name="mEmail" value="<?php echo $dato['email'];?>"placeholder="email" required />
							</div>

							<div class = 'text-center mt-3'>
                                    <br>
                                    <input type="submit" name="modificar" value="Modificar" class="btn btn-lg btn-primary ">	

                                    </div>  
						</form>


















</body>
</html>
