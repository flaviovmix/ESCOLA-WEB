<%@page import="escola.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page import="escola.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");

    String paramNome = request.getParameter("nome");
    String nome = (paramNome == null || paramNome.isEmpty()) ? "Valor Padrão" : paramNome;
    String paramEmail = request.getParameter("email");
    String email = (paramEmail == null || paramEmail.isEmpty()) ? "100" : paramEmail;

    ServletContext context = getServletContext();
    ArrayList<Aluno> vetAluno = (ArrayList<Aluno>) context.getAttribute("vetAluno");

    // Se a lista não existir no contexto, inicialize-a
    if (vetAluno == null) {
        vetAluno = new ArrayList<Aluno>();
        context.setAttribute("vetAluno", vetAluno);
    }
%>

<%@ include file="Interface/comecoPagina.jsp" %>
<%@ include file="Alunos/h1Titulo.jsp" %>

<%
    // Apenas listar as disciplinas se o nome for vazio ou "Valor Padrão"
    if (!("Valor Padrão".equals(nome))) {
        // Adicionar a nova disciplina
        Aluno aluno = new Aluno();
        aluno.setNome(nome);
        aluno.setEmail(email);
        vetAluno.add(aluno);

        // Atualiza a lista no contexto
        context.setAttribute("vetAluno", vetAluno);

        // Confirmação de adição
        out.println(
                "<div class='alert alert-success alert-dismissible fade show' role='alert'>"
                    + "<strong>Dados Cadastrados com Sucesso!</strong>"
                    + "<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
                + "</div>"
        );
    }
%>

<%@ include file="Alunos/formulario.jsp" %>
<%@ include file="Alunos/tab-paneTop.jsp" %>
<%@ include file="Alunos/tabelaTop.jsp" %>

<%
    int index = 1;
    for (Aluno aluno : vetAluno) {
        out.print("<tr>");
        out.print("<td>");
        out.print(index);
        out.print("</td>");
        out.print("<td>");
        out.print(aluno.getNome());
        out.print("</td>");
        out.print("<td>");
        out.print(aluno.getEmail());
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

<%@ include file="Alunos/tabelaBottom.jsp" %>
<%@ include file="Alunos/tab-paneBottom.jsp" %>
<%@ include file="Interface/fimPagina.jsp" %>
