<%@page import="java.util.Date"%>
<%@page import="escola.Aluno"%>
<%@page import="escola.Turma"%>
<%@page import="escola.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="Interface/comecoPagina.jsp" %>
    <%

        Turma turma1 = new Turma();
        turma1.setSigla("1A");
        turma1.setAno(1);

        Aluno aluno1 = new Aluno();
        aluno1.setNome("Jão");
        aluno1.setDadaNascimento(new Date());
        aluno1.setTurma(turma1);

        Aluno aluno2 = new Aluno();
        aluno2.setNome("Zé");
        aluno2.setDadaNascimento(new Date());
        aluno2.setTurma(turma1);

        out.print(aluno1.getNome());
        out.print(" - ");
        out.print(aluno1.getTurma().getSigla());
        out.print("</br>");

        out.print(aluno2.getNome());
        out.print(" - ");
        out.print(aluno2.getTurma().getSigla());
        out.print("</br>");
            
    %>
<%@ include file="Interface/fimPagina.jsp" %>