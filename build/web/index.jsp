<%@page import="escola.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br" data-bs-theme="auto">
    <%@ include file="Interface/head.jsp" %>
    <body>
        <main>
            <%@ include file="Interface/navbar.jsp" %>
            <div class="container-xl">
            
            <%
                Disciplina disciplina1 = new Disciplina();
                disciplina1.setNome("Matemática");
                disciplina1.setCargaHoraria(10);
                
                out.println(disciplina1.getNome());
                out.println(disciplina1.getCargaHoraria());
            %>
            
        </main>
        <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
