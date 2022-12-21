<?php
include_once("../config/conexion.php");
require"../config/App.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<title>Sistema Gestion de cuentas</title>
</head>
<body>
	
<!--- nav bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="../../index.php"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Navbar</font></font></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="home.php"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Inicio
            </font></font><span class="visually-hidden"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">( corriente )</font></font></span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ingresar.php"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ingresar</font></font></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="registrarse.php"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Registrarse</font></font></a>
        </li>
      </ul>
   
    </div>
  </div>
</nav>

<!---End nav bar -->