<%@page import="java.util.ArrayList"%>
<%@page import="escola.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br" data-bs-theme="auto">

    <%@ include file="Interface/head.jsp" %>


    <%
        request.setCharacterEncoding("UTF-8");

        String paramNome = request.getParameter("nome");
        String nome = (paramNome == null || paramNome.isEmpty()) ? "Valor Padrão" : paramNome;
        String paramCargaHoraria = request.getParameter("cargaHoraria");
        String cargaHoraria = (paramCargaHoraria == null || paramCargaHoraria.isEmpty()) ? "0" : paramCargaHoraria;

        ServletContext context = getServletContext();
        ArrayList<Disciplina> vetDisciplina = (ArrayList<Disciplina>) context.getAttribute("vetDisciplina");

        // Se a lista não existir no contexto, inicialize-a
        if (vetDisciplina == null) {
            vetDisciplina = new ArrayList<Disciplina>();
            context.setAttribute("vetDisciplina", vetDisciplina);
        }
    %>


    <body>

        <main>

            <%@ include file="Interface/navbar.jsp" %>

            <div class="container-xl">
                <h1 class="text-center py-4">Registro de Aluno</h1>

                <%
                    // Apenas listar as disciplinas se o nome for vazio ou "Valor Padrão"
                    if (!("Valor Padrão".equals(nome))) {
                        // Adicionar a nova disciplina
                        Disciplina disciplina = new Disciplina();
                        disciplina.setNome(nome);
                        disciplina.setCargaHoraria(Integer.parseInt(cargaHoraria));
                        vetDisciplina.add(disciplina);

                        // Atualiza a lista no contexto
                        context.setAttribute("vetDisciplina", vetDisciplina);

                        // Confirmação de adição
                        out.println(
                                "<div class='alert alert-success d-flex align-items-center' role='alert' >"
                                + "<div>"
                                + "Dados cadastrada com sucesso!"
                                + "</div>"
                                + "</div>"
                        );
                    }
                %>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Novo Registro
                </button>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Novo Registro</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body p-4">

                                <form method="post" action="listaDeAlunos.jsp" class="needs-validation" novalidate>
                                    <div class="row g-3">
                                        <div class="col-sm-6">
                                            <label for="firstName" class="form-label">Nome Completo</label>
                                            <input type="text" class="form-control" id="firstName" name="nome" placeholder="" value="" required>
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
                                            <input type="text" class="form-control" name="cargaHoraria" id="zip" placeholder="" required>
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


                                    <div class="form-check mt-4">
                                        <input type="checkbox" class="form-check-input" id="save-info">
                                        <label class="form-check-label" for="save-info">Cadastro Ativo</label>
                                    </div>

                                    <!--<button class="w-100 btn btn-primary btn-lg" type="submit">Cadastrar</button>-->
                                    <div class="modal-footer">
                                        <input  type="submit" class="btn btn-primary" data-bs-dismiss="modal" value="Salvar"/>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                    </div>

                                </form>
                            </div>


                        </div>
                    </div>
                </div>        

                <ul class="nav nav-tabs pt-3" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Ativos</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Inativos</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Todos</button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nome </th>
                                    <th scope="col">Email </th>
                                    <th scope="col">CPF</th>
                                    <th scope="col">RG</th>
                                    <th scope="col" class='text-center'>Idade</th>
                                    <th scope="col">Editar</th>
                                    <th scope="col">Deletar</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td>1</td>
                                    <td>Flávio José dos Passos</td>
                                    <td>flaviovmix@gmail.com</td>
                                    <td>114.719.666-93</td>
                                    <td>163.665.985</td>
                                    <td class='text-center'>44</td>
                                    <td>

                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                        </svg>

                                    </td>
                                    <td>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                                        <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                                        </svg>                                        
                                    </td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>Adriely Baldo dos Passos</td>
                                    <td>adriley51@gmail.com</td>
                                    <td>719.666.114-93</td>
                                    <td>163.985.665</td>
                                    <td class='text-center'>35</td>
                                    <td>

                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                        </svg>

                                    </td>
                                    <td>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                                        <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                                        </svg>                                        
                                    </td>
                                </tr>
                                
<tr>
                                    <td>2</td>
                                    <td>Pedro Henrique Baldo dos Passos</td>
                                    <td>pedrobaldo@gmail.com</td>
                                    <td>719.962.279-39</td>
                                    <td>774.996.334</td>
                                    <td class='text-center'>8</td>
                                    <td>

                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                        </svg>

                                    </td>
                                    <td>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                                        <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                                        </svg>                                        
                                    </td>
                                </tr>                                

                                <%
                                    int index = 1;
                                    for (Disciplina disc : vetDisciplina) {
                                        out.print("<tr>");
                                        out.print("<td>");
                                        out.print(index);
                                        out.print("</td>");
                                        out.print("<td>");
                                        out.print(disc.getNome());
                                        out.print("</td>");
                                        out.print("<td class='text-center'>");
                                        out.print(disc.getCargaHoraria());
                                        out.print("</td>");
                                        out.print("<td>Dado</td>");
                                        out.print("<td>Dado</td>");
                                        out.print("<td>Dado</td>");
                                        out.print("<td>"
                                                + "<svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>"
                                                + "<path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>"
                                                + "<path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z'/>"
                                                + "</svg>"
                                                + "</td>"
                                        );
                                        out.print("<td>"
                                                + "<svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-trash' viewBox='0 0 16 16'>"
                                                + "<path d='M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z'/>"
                                                + "<path d='M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z'/>"
                                                + "</svg>"
                                                + "</td>");
                                        out.print("</tr>");
                                        index++;
                                    }%> 

                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">...</div>
                    <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">...</div>
                    <div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel" aria-labelledby="disabled-tab" tabindex="0">...</div>
                </div>









            </div>
        </main>
        <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
