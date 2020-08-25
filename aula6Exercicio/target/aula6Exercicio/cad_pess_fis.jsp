<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.PessoaFisica" %>
<%@ page import="dao.PessoaFisDao" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>


<html>
    <head lang ="pt-br">
    <meta content = "text/html; charset =UTF-8">

    
    </head>

    <body>

    <%

     request.setCharacterEncoding("UTF-8");


        PessoaFisica  psf = new PessoaFisica();

        psf.setNome(request.getParameter("nome"));
        psf.setEndereco(request.getParameter("endereco"));
        psf.setTelefone(request.getParameter("telefone"));
        psf.setCep(request.getParameter("cep"));
        psf.setData_nasc(request.getParameter("data_nasc"));
        psf.setCpf(request.getParameter("cpf"));


        PessoaFisDao  pfdao = new PessoaFisDao();

        pfdao.cadastrar(psf);

        try{

             pfdao.cadastrar(psf);
             out.println("CADASTRO EFETUADO COM SUCESSO");
            
        }catch(SQLException e) {
            out.println("CADASTRO NÃO EFETUADO !!!");

            e.printStackTrace();

        }
        
  


    /*
    
    out.println("Nome:" + psf.getNome() + "</br>");
    out.println("Endereço:" + psf.getEndereco() + "</br>");
    out.println("Telefone: "  + psf.getTelefone() + "</br>");
    out.println("cep: "  + psf.getCep() + "</br>");
    out.println("cpf: "  + psf.getCpf() + "</br>");
    out.println("Data de nascimento: "  + psf.getData_nasc() + "</br>");
    
    
      */


      out.println("Dados ja cadastrados no banco");

      try{
          PessoaFisDao dao = new PessoaFisDao();
            List<PessoaFisica> lstcli = dao.pesquisar();
            out.println("ok");

            for(PessoaFisica pf : lstcli){
                out.println("<p>ID: " + pf.getId() + "</p>");
                out.println("<p>Nome: " + pf.getNome() + "</p>");
                out.println("<p>Endereço: " + pf.getEndereco() + "</p>");
                out.println("<p>Telefone: " + pf.getTelefone() + "</p>");
                out.println("<p>CEP: " + pf.getCep() + "</p>");
                out.println("<p>Data de nascimento: " + pf.getData_nasc() + "</p>");
                out.println("<p>CPF: " + pf.getCpf() + "</p>");

            } 

      }catch(SQLException e) {
                out.println("<p>Erro " + e.getMessage() + "</p>");
            }
    
    
    
    %>
    
    
    
    </body>



</html>