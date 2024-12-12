<%@page import="funcoes.mensagem"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="funcoes.icones"%>
<%@page import="funcoes.calculoTempo"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="escola.Aluno"%>
<%@page import="java.util.ArrayList"%>
<%@page import="escola.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    request.setCharacterEncoding("UTF-8");

    //NOME
    String paramNome = request.getParameter("nome");
    String nome = (paramNome == null || paramNome.isEmpty()) ? "Valor Padrão" : paramNome;
    
    //EMAIL
    String paramEmail = request.getParameter("email");
    String email = (paramEmail == null || paramEmail.isEmpty()) ? "" : paramEmail;

    //CPF
    String paramCpf = request.getParameter("cpf");
    String cpf = (paramCpf == null || paramCpf.isEmpty()) ? "" : paramCpf;    
    
    //RG
    String paramRg = request.getParameter("rg");
    String rg = (paramRg == null || paramRg.isEmpty()) ? "" : paramRg;        
    
    //DATA NASCIMENTO
    String paramDataNascimento = request.getParameter("dataNascimento");
    String dataNascimento = (paramDataNascimento == null || paramDataNascimento.isEmpty()) ? "" : paramDataNascimento;
    
    
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
        
        try {
            Connection conecta;
            PreparedStatement st;
            Class.forName("org.postgresql.Driver");
            conecta = DriverManager.getConnection("jdbc:postgresql://localhost:5432/banco", "postgres", "masterkey");
            st = conecta.prepareStatement("insert into aluno values(?,?,?,?)");
            st.setString(1, nome);
            st.setString(2, email);
            st.setString(3, cpf);
            st.setString(4, rg);
            st.executeUpdate();
            
            out.println(mensagem.success("Dados Cadastrados com Sucesso!"));
        } catch (Exception mens) {
            out.println(mensagem.danger(mens.getMessage()));
        }
                
        // Adicionar a novo aluno
        Aluno aluno = new Aluno();
        aluno.setNome(nome);
        aluno.setEmail(email);
        aluno.setCpf(cpf);
        aluno.setRg(rg);
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        aluno.setDataNascimento(formato.parse(dataNascimento));
        vetAluno.add(aluno);

        // Atualiza a lista no contexto
        context.setAttribute("vetAluno", vetAluno);
    }
%>

<%@ include file="Alunos/formulario.jsp" %>
<%@ include file="Alunos/tab-paneTop.jsp" %>
<%@ include file="Alunos/tabelaTop.jsp" %>

<%  
    int index = 2;
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
            
            out.print("<td>");
                out.print(aluno.getCpf());
            out.print("</td>");
            
            out.print("<td>");
                out.print(aluno.getRg());
            out.print("</td>");
            
            out.print("<td class='text-center'>");
                Number idade = calculoTempo.calcularIdade(aluno.getDataNascimento());
                out.print(idade);
            out.print("</td>");

            out.print("<td class='text-center'>");
                out.print(icones.iconeEditar());
            out.print("</td>");

            out.print("<td class='text-center'>");
                out.print(icones.iconeDeletar());
            out.print("</td>");
            
        out.print("</tr>");
        index++;
    }%> 

<%@ include file="Alunos/tabelaBottom.jsp" %>
<%@ include file="Alunos/tab-paneBottom.jsp" %>
<%@ include file="Interface/fimPagina.jsp" %>
