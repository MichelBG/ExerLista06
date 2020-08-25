<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ page import="dao.PessoaJuriDao" %>
<%@ page import="model.PessoaJuridica" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>


<html>
    <head lang="pt-br">
    <meta content="text/html charset =UTF-8">
    </head>
    
    
    <body>

    <%
        request.setCharacterEncoding("UTF-8");

        PessoaJuridica psj = new PessoaJuridica();

        psj.setNome(request.getParameter("nome"));
        psj.setEndereco(request.getParameter("endereco"));
        psj.setTelefone(request.getParameter("telefone"));
        psj.setCep(request.getParameter("cep"));
        psj.setRaz_social(request.getParameter("razsocial"));
        psj.setCnpj(request.getParameter("cnpj"));


        PessoaJuriDao pjdao = new PessoaJuriDao();

        pjdao.cadastrar(psj);

        try{

            pjdao.cadastrar(psj);
            out.println("CADASTRO EFETUADO COM SUCESSO ");

        }catch(SQLException e){
            out.println("CADASTRO NÃO EFETUADO !!!");
            e.printStackTrace();
        }



        try{
            PessoaJuriDao dao = new PessoaJuriDao();
            List<PessoaJuridica> lstcli = dao.pesquisar();
            out.println("ok");


            for(PessoaJuridica pj: lstcli){

                out.println("<p>id:" + pj.getId() + "</br>");
                out.println("<p>Nome:" + pj.getNome() + "</br>");
                out.println("<p>Endereço:" + pj.getEndereco() + "</br>");
                out.println("<p>Telefone:" + pj.getTelefone() + "</br>");
                out.println("<p>Cep:" + pj.getCep() + "</br>");
                out.println("<p>Razão social" + pj.getRaz_social() + "</br>");
                out.println("<p>CNPJ:" + pj.getCnpj() + "</br>");
                
            }


        }catch(SQLException e){
            out.println("<p>Erro " + e.getMessage() + "</br>" );

        }
            



    %>
    
    
    </body>


</html>