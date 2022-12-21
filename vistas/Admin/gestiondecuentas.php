<?php include('headerAdmin.php');

$conexion=conexion();
$sql="CALL getUsuarios";
$guardar=mysqli_query($conexion,$sql);
?>

<h1 style="text-align: center;">Crud usuarios</h1>
<table class="table table-hover">
  <thead>
  <th scope = 'row'>#</th>
<th cope = 'col'>nombre</th>
<th cope = 'col'>Apellido Paterno</th>
<th cope = 'col'>Apellido Materno</th>
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
    <td><?php echo $row[ 'nombre' ];
    ?> </td>
    <td><?php echo $row[ 'apellidop' ];
    ?> </td>
    <td><?php echo $row[ 'apellidom' ];
    ?> </td>
    <td><?php echo $row[ 'email' ];
    ?> </td>
    <td><?php echo $row[ 'descripcion' ];
    ?> </td>
    <td>
    <i  class = 'btn btn-sm btn-primary ' >Cancelar</i></a>
    <td>
    </tr>
    <?php  }
    ?>
    </div>
</table>









</body>
</html>