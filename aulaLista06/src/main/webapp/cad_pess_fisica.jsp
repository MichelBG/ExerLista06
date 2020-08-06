<%@ page import="model.PessoaFisica" %>
<%@ page import="dao.PessoaFisicaDao" %>
<%@ page import="java.sql.SQLException" %>

<%
    request.setCharacterEncoding("UTF-8");
    PessoaFisica cliente = new PessoaFisica();
    
    cliente.setCpf(request.getParameter("cpf"));
    cliente.setNome(request.getParameter("nome"));
    cliente.setDataNascimento(request.getParameter("data-nascimento"));
    cliente.setEndereco(request.getParameter("endereco"));
    cliente.setTelefone(request.getParameter("telefone"));
    cliente.setCep(request.getParameter("cep"));
    try {
        PessoaFisicaDao.cadastrar(cliente);
        session.setAttribute("cadastrado", true);
    }
    catch (SQLException e) {
        session.setAttribute("cadastrado", false);
    }
    response.sendRedirect("form-pessoa-fisica.jsp");
%>