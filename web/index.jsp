<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br" data-bs-theme="auto">
  <head><script src="assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/navbars/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="navbars.css" rel="stylesheet">
        
    <title>Navbar Template · Bootstrap v5.3</title>
  </head>
  <body>


    
<main>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Ninth navbar example">
    <div class="container-xl">
      <a class="navbar-brand" href="http://localhost:8084/MinhaEscolaWEB/">ESCOLA WEB</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07XL" aria-controls="navbarsExample07XL" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample07XL">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">CADASTRO</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="cadastrarDisciplina.jsp">Alunos</a></li>
              <li><a class="dropdown-item" href="#">Listar disciplinas</a></li>
            </ul>
          </li>     
          
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          
        </ul>
        <form role="search">
          <input class="form-control" type="search" placeholder="Não funciona" aria-label="Search">
        </form>
      </div>
    </div>
  </nav>



</main>
<script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>