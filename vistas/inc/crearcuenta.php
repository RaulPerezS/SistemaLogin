<?php
$con = mysqli_connect( 'localhost', 'root', '', 'sistemacuenta' ) or die( 'ERROR EN AL CONEXXION AL SERVIDOR' );

$sql = "INSERT INTO `usuario` (`idusuario`, `nombre`, `apellidop`, `apellidom`, `usuario`, `contraseña`, `email`, `fechacreacion`, `estado`) VALUES
 (NULL, '".$_POST[ 'nombre' ]."','".$_POST[ 'apellidop' ]."','".$_POST[ 'apellidom' ]."','".$_POST[ 'usuario' ]."','".$_POST[ 'contraseña' ]."','".$_POST[ 'email' ]."', current_timestamp(), 'Activo');";

$sql2 = "INSERT INTO operaciones (idoperaciones,cargo_idcargo,usuario_idusuario) VALUES (null,'".$_POST['cargo_idcargo']."',LAST_INSERT_ID());";

$resultado = mysqli_query( $con, $sql ) or die ( 'ERROR EN EL QUERY DATABASE' );
$resultado = mysqli_query( $con, $sql2 ) or die ( 'ERROR EN EL QUERY DATABASE' );
mysqli_close( $con );

header( 'location:../ingresar.php' );




