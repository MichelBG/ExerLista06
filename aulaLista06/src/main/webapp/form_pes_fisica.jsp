
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="model.PessoaFisica" %>
<%@ page import="dao.PessoaFisicaDao" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>

<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <title>Cadastro de Clientes</title>

      

        
    </head>

    <body>
       
            <form  method="POST" action="cadastro-pessoa-fisica.jsp" name="cadastro">
                
                        <label class="form-label" for="cpf">CPF</label>
                        <input class="form-input" id="cpf" type="text" name="cpf" placeholder="000.000.000-00" required>
                    
                        <label class="form-label" for="nome">Nome</label>
                        <input class="form-input" id="nome" type="text" name="nome" required>
                    
                        <label class="form-label" for="data-nascimento">Data de nascimento</label>
                        <input class="form-input" id="data-nascimento" type="text" name="data-nascimento" placeholder="dd/mm/aaaa" required>
                    
                        <label class="form-label" for="endereco">Endereço</label>
                        <input class="form-input" id="endereco" type="text" name="endereco" required>
                   
                        <label class="form-label" for="telefone">Telefone</label>
                        <input class="form-input" id="telefone" type="tel" name="telefone" placeholder="(00) 00000-0000" required>
                    
                        <label class="form-label" for="cep">CEP</label>
                        <input class="form-input" id="cep" type="text" name="cep" placeholder="00.000-000" required>
                 
                <button class="btn" type="submit">Cadastrar</button>
            </form>
            
           
    </body>

</html>