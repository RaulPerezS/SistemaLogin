<?php
include('../../../config/conexion.php');
$id = $_GET['idusuario'];
$conexion=conexion();
$desactivarUsuario = "UPDATE `usuario` SET `estado` = 'Inactivo' WHERE `usuario`.`idusuario` = $id;";

$desactivarUsuario = $conexion->query($desactivarUsuario);

$url = $_SERVER['HTTP_REFERER'];
    header("location:$url");



?>