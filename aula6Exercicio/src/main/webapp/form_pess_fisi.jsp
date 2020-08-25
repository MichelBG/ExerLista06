<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="model.PessoaFisica" %>
<%@ page import="dao.PessoaFisDao" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<html>

    <head lang="pt-br">
        <meta content="text/html; charset=UTF-8"> 
        <title>Cadastro Pessoas Físicas</title>  
    </head>

    <body>

        <form method="POST" action = "cad_pess_fis.jsp" name = "cad_pess_fis">

            <p>
            <label for = "nome">Informe o nome</label><br>
             <input type = "text" id="nome" name = "nome" size = "15" maxlenght="15">
            </p>


            <p>
              <label for = "endereco">Informe o endereço</label><br>
             <input type = "text" id="endereco" name = "endereco" size = "20" maxlenght="20">
            </p>


            <p>
              <label for = "telefone">Informe o numero de telefone</label><br>
             <input type = "text" id="telefone" name = "telefone" size = "15" maxlenght="15">
            </p>


            <p>
              <label for = "cep">Informe o cep</label><br>
             <input type = "text" id="cep" name = "cep" size = "15" maxlenght="15">
            </p>


            <p>
              <label for = "cpf">Informe o número do cpf</label><br>
             <input type = "text" id="cpf" name = "cpf" size = "10" maxlenght="10">
            </p>


            <p>
              <label for = "data_nasc">Informe a data de nascimento</label><br>
             <input type = "text" id="data_nasc" name = "data_nasc" size = "10" maxlenght="10">
            </p>


            <button type="submit">Cadastrar</button>


        </form>

<%
          try{
          PessoaFisDao dao = new PessoaFisDao();
            List<PessoaFisica> lstcli = dao.pesquisar();
            out.println("ok");

              for(PessoaFisica pf: lstcli){
                  out.println("<p>ID: " + pf.getId() + "</p>");
                  out.println("<p>Nome: " + pf.getNome() + "</p>");
                  out.println("<p>Endereço: " + pf.getEndereco() + "</p>");
                  out.println("<p>Telefone: " + pf.getTelefone() + "</p>");
                  out.println("<p>CEP: " + pf.getCep() + "</p>");
                  out.println("<p>Data de nascimento: " + pf.getData_nasc() + "</p>");
                  out.println("<p>CPF: " + pf.getCpf() + "</p>");

              } 


            }catch(SQLException erro) {
                out.println("<p>Erro " + erro.getMessage() + "</p>");

      }


%>


    
    
    
    
    </body>



</html>