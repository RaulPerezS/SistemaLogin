<?php include('headerAdmin.php');
$conexion = conexion();
$sql = "CALL getUsuarios";
$guardar = mysqli_query($conexion, $sql);


$li = " <ul class='pagination'>
<li class='page-item'>";


?>

<!-- /.container-fluid -->
</nav>
<div class="container py-4 text-center">
        <h2>Crud</h2>

        <div class="row py-4">
            <div class="col">
                <?php
                $conexion = mysqli_connect("localhost", "root", "", "sistemacuenta");
                $registro_por_a = 8 ;
                $a = '';
                if (isset($_GET["a"])) {
                    $a = $_GET["a"];
                } else {
                    $a = 1;
                }

                $start_from = ($a - 1) * $registro_por_a;

                $query = "SELECT `usuario`.*, `operaciones`.*, `cargo`.*,CONCAT(nombre, ' ', apellidop,' ', apellidom)  nombre_completo
                FROM `usuario` 
                    LEFT JOIN `operaciones` ON `operaciones`.`usuario_idusuario` = `usuario`.`idusuario` 
                    LEFT JOIN `cargo` ON `operaciones`.`cargo_idcargo` = `cargo`.`idcargo` WHERE estado= 'Activo'  order by idusuario ASC LIMIT $start_from, $registro_por_a ";
                $result = mysqli_query($conexion, $query);

                ?>

                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tr>
                            <th>#</th>
                            <th>Nombre Completo</th>
                            <th>Email</th>
                            <th>Cargo</th>
                            <th>Opciones</th>
                        </tr>
                        <?php
                        $number = 0;
                        while ($row = mysqli_fetch_array($result)) {
                            $number++;
                        ?>
                            <div style="text-align: center;">
                                <tr>
                                    <td><?php echo $row['idusuario'];
                                        ?> </td>
                                    <td><?php echo $row['nombre_completo'];
                                        ?> </td>
                                    <td><?php echo $row['email'];
                                        ?> </td>
                                    <td><?php echo $row['descripcion'];
                                        ?> </td>
                                    <td>
                                        <div class="center">
                                            <a href="modificar.php?idusuario=<?php echo $row['idusuario']; ?>" <button type="button" class="btn btn-primary" tittle="Editar Registro">Editar</button>

                                                <a href="inc/eliminarusuario.php?idusuario=<?php echo $row['idusuario']; ?>" <button type="button" class="btn btn-danger" tittle="Borrar usuario" onclick="return confirm(`¿Estás seguro que deseas eliminar el usuario? \n ¡Toda la informacion de este usuario se perdera!`)" ; tittle="borrar Registro">
                                                    <i class="fa fa-trash red_color"></i>borrar</a></button>
                                        </div>

                                    <td>
                                </tr>
                            <?php  }
                            ?>
                            </div>
                            </tbody>
                    </table>
                    <div align="center">
                        <br />
                        <?php
                        $page_query = "SELECT * FROM usuario ORDER BY idusuario DESC";
                        $page_result = mysqli_query($conexion, $page_query);
                        $total_records = mysqli_num_rows($page_result);
                        $total_pages = ceil($total_records / $registro_por_a);
                        $start_loop = $a;
                        $diferencia = $total_pages - $a;
                        if ($diferencia <= 5) {
                            $start_loop = $total_pages - 5;
                        }
                        $end_loop = $start_loop + 4;
                        if ($a > 1) {
                            echo "
                            $li
                            <a class='page-link' href='a.php?a=1'>Primera</a>
                          </li>";
                            echo "
                            $li
                            <a class='page-link' href='a.php?a=" . ($a - 1) . "'><<</a>
                          </li>";
                        }
                        for ($i = $start_loop; $i <= $end_loop; $i++) {
                            echo "$li
                            <a class='page-link' href='a.php?a=" . $i . "'>" . $i . "</a> </li>";
                            
                        }
                        if ($a <= $end_loop) {
                            echo "$li <a class='page-link' href='a.php?a=" . ($a + 1) . "'>>></a></li>";
                            echo "$li <a class='page-link' href='a.php?a=" . $total_pages . "'>Última</a></li>";
                        }
                        ?>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>




</body>
</html>
