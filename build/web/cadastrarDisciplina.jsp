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
    

    
  
<div class="container">
    
    <h1 class="text-center py-4">Cadastro de aluno</h1>
    
    
    <div class="row d-flex justify-content-center align-items-center">
      
      <div class="col-md-7 col-lg-8">
          <hr>

        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">Nome Completo</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="email" class="form-label">Email <span class="text-body-secondary">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>
              
            <div class="col-md-3">
              <label for="zip" class="form-label">CPF</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>                    
              
            <div class="col-md-3">
              <label for="state" class="form-label">RG</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>   
              
            <div class="col-md-3">
              <label for="country" class="form-label">Sexo</label>
              <select class="form-select" id="country" required>
                <option value="">Escolher...</option>
                <option>Masculino</option>
                <option>Feminino</option>
                <option>Outro</option>
              </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>        
              
            <div class="col-md-3">
              <label for="country" class="form-label">Dada de Nascimento</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
            </div>                 
              
            <div class="col-md-2">
              <label for="zip" class="form-label">Cep</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
            </div>                    
              
            <div class="col-md-3">
              <label for="state" class="form-label">Estado</label>
              <select class="form-select" id="state" required>
                <option value="">Escolher...</option>
                <option>Acre</option>
                <option>Alagoas</option>
                <option>Amapá</option>
                <option>Amazonas</option>
                <option>Bahia</option>
                <option>Ceará</option>
                <option>Distrito Federal</option>
                <option>Espírito Santo</option>
                <option>Goiás</option>
                <option>Maranhão</option>
              </select>
            </div>   
              
            <div class="col-md-7">
              <label for="zip" class="form-label">Endereço</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
            </div>                      

            <div class="col-12">
              <label for="address" class="form-label">Complemento</label>
              <input type="text" class="form-control" id="address" placeholder="Rua..." required>
            </div>


          </div>


          <div class="form-check my-4">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Cadastro Ativo</label>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">Cadastrar</button>
        </form>
      </div>
    </div>
 

</main>
<script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
