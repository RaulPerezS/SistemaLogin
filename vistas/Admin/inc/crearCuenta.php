<?php include_once('headernologin.php')?>






<form action="../inc/enviar.php" method="POST" name="f1">
<div class = 'mb-3'>
<label class = 'form-label'>Nombre</label>
<input class = 'form-control form-control-lg' type = 'text' name = 'nombre' placeholder = 'Ingresa tu Nombre' required  />
</div>
<div class = 'mb-3'>
<label class = 'form-label'>Apellido Paterno</label>
<input class = 'form-control form-control-lg' type = 'text' name = 'apellidop' placeholder = 'Ingresa tu Apellido Paterno' required  />
</div>
<div class = 'mb-3'>
<label class = 'form-label'>Apellido Materno</label>
<input class = 'form-control form-control-lg' type = 'text' name = 'apellidom' placeholder = 'Ingresa tu Apellido Materno' required  />
</div>
<div class = 'mb-3'>
<label class = 'form-label'>Usuario</label>
<input class = 'form-control form-control-lg' type = 'text' name = 'usuario' placeholder = 'Ingresa tu Usuario' required/>
</div>
</p>





<div class = 'mb-3'>
<label class = 'form-label'>Contraseña</label>
<input class = 'form-control form-control-lg' type = 'text' name = 'contraseña' placeholder = 'Ingresa tu contraseña' required />

</p>

<label class = 'form-label'>Email</label>
<input class = 'form-control form-control-lg' type = 'text' name = 'email' placeholder = 'Ingresa tu email' required/>


</p>

<label class = 'form-label'>Cargo</label>
<select class = 'form-control form-control-lg' name = 'cargo_idcargo' placeholder = 'Seleccione un cargo' required>
<option value = ''selected>Seleccione un cargo</option>
<option value = '1'>Admin</option>
<option id ='usuario' style="display: none" value = '2' >Usuario</option>
<option id ='consultor  ' style="display: none" value = '3'>Consultor</option>

</select>




<div class = 'text-center mt-3'>
<br>
<input id="submit" type="submit" value="Registrar" class="btn btn-lg btn-primary" >	
</div>
</form>











    



</body>
</html>