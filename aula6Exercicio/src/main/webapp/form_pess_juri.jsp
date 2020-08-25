<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>

    <head lang="pt-br">
        <meta content="text/html; charset=UTF-8"> 
        <title>Cadastro Pessoas Juridicas</title>  
    </head>

    <body>

        <form method="POST" action = "cad_pess_juri.jsp" name = "cad_pess_fis">

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
              <label for = "cnpj">Informe o número do cnpj</label><br>
             <input type = "text" id="cnpj" name = "cnpj" size = "10" maxlenght="10">
            </p>


            <p>
              <label for = "razsocial">Informe a razão social</label><br>
             <input type = "text" id="razsocial" name = "razsocial" size = "10" maxlenght="10">
            </p>


            <button type="submit">Cadastrar</button>


        </form>
    
    
    
    </body>



</html>