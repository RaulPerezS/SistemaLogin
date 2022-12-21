<?php include('headernologin.php')
?>
<?php
session_start();

if (isset($_GET['cerrar_sesion'])) {
	session_unset();

	// destroy the session 
	session_destroy();
}

if (isset($_SESSION['rol'])) {
	switch ($_SESSION['rol']) {
		case 1:
			header('location: Admin/inicioAdmin.php');
			break;
		default:
	}
}








if (isset($_POST['username']) && isset($_POST['password'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];
	$db = new Database();
	$query = $db->connect()->prepare('SELECT `usuario`.`usuario`, `usuario`.`contraseña`, `operaciones`.`cargo_idcargo`,`usuario`.`nombre`,`usuario`.`idusuario`
	FROM `usuario` 
		LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` where estado="Activo" AND usuario = :username AND Contraseña = :password;');
	$query->execute(['username' => $username, 'password' => $password]);




	$row = $query->fetch(PDO::FETCH_NUM);

	if ($row == true) {
		$user = $row[0];
		$rol = $row[2];
		$nomb = $row[3];
		$iduser = $row[4];

		
		$_SESSION['iduser'] = $iduser;
		$_SESSION['rol'] = $rol;
		$_SESSION['nomb'] = $nomb;
		$_SESSION['user'] = $user;
		
	

		switch ($rol) {
			case 1:
				header('location: Admin/inicioAdmin.php');
				break;


			default:
		}
	} else {
		// no existe el usuario
		
		echo '<div class="alert alert-danger" role="alert">
    Error al iniciar sesion, verifique que ingreso los datos correctamente.
  </div>';
	
	}
	
}






?>
						<form action="#" method="POST">
							<div class="mb-3">
								<label class="form-label">Usuario</label>
								<input class="form-control form-control-lg" type="usuario" name="username" placeholder="Ingresa tu Usuario" required/>
							</div>
							<div class="mb-3">
								<label class="form-label">Contraseña</label>
								<input class="form-control form-control-lg" type="password" name="password" placeholder="Ingresa tu contraseña" required/>
								
							</div>
							<div>
								<label class="form-check">
									<input class="form-check-input" type="checkbox" value="remember-me" name="remember-me" checked>
									<span class="form-check-label">
										Recuérdame
									</span>
								</label>
							</div>
							<div class="text-center mt-3">
								<input type="submit" value="Iniciar sesión" class="btn btn-lg btn-primary"></a>
							</div>
							<div class="text-center mt-3" ></p>
								<a href="<?=SERVERURL?>" style="color:blue">Volver al Inicio</a>
							</div>
						</form>








    



</body>
</html>