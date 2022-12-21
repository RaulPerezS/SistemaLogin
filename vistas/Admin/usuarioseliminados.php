<?php include('headerAdmin.php');
$conexion=conexion();
$sql="CALL getUsuariosInactivos";
$guardar=mysqli_query($conexion,$sql);
?>

<h1 style="text-align: center;">Usuarios eliminados</h1>
<table class="table table-hover">
  <thead>
  <th scope = 'row'>#</th>
<th cope = 'col'>Nombre completo</th>
<th cope = 'col'>Email</th>
<th cope = 'col'>Cargo</th>
<th cope = 'col'>Opciones</th>
<th cope = 'col'></th>
  <?php while ( $row = $guardar->fetch_assoc() ) {
    ?>
    <div style="text-align: center;">
    <tr>
    <td ><?php echo $row[ 'idusuario' ];
    ?> </td>
    <td><?php echo $row[ 'nombre_completo' ];
    ?> </td>
    <td><?php echo $row[ 'email' ];
    ?> </td>
    <td><?php echo $row[ 'descripcion' ];
    ?> </td>
    <td>
    <div class="center"> 
            <a href="modificar.php?idusuario=<?php echo $row['idusuario'];?>"
            <button type="button" class="btn btn-primary"  tittle="Editar Registro">Editar</button>

            <a href="inc/activarCuenta.php?idusuario=<?php echo $row['idusuario'];?>"  
            <button type="button" class="btn btn-success"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" tittle="Activar"  onclick="return confirm(`¿Estás seguro que deseas activar el usuario? `)"; tittle="Activar usuario" > 
            <i class="fa fa-trash red_color" ></i>Activar</a></button> 
            </div>

    <td>
    </tr>
    <?php  }
    ?>
    </div>
</table>


</body>
</html>