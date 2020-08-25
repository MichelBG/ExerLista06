package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import model.PessoaJuridica;
import util.ConexaoBanco;

public class PessoaJuriDao {

    private Connection conexao;

    public  PessoaJuriDao(){
        this.conexao = new ConexaoBanco().getConnection();

    }


    public void cadastrar(PessoaJuridica cli)throws SQLException{

        String query;
        query = "INSERT INTO tbpessoa_juridica (nome, endereco, telefone, cep, razsocial, cnpj ) VALUES (?, ?, ?, ?, ?, ?)";

        PreparedStatement st = conexao.prepareStatement(query);
        st.setString(1, cli.getNome()); 
        st.setString(2, cli.getEndereco());
        st.setString(3, cli.getTelefone());
        st.setString(4, cli.getCep());
        st.setString(5, cli.getRaz_social());
        st.setString(6, cli.getCnpj());

        st.execute();
        st.close();
        conexao.close();



    }

    public List<PessoaJuridica> pesquisar() throws SQLException, Exception{


        List<PessoaJuridica> clientes = new ArrayList();
        String query = "SELECT * FROM tbPessoa_juridica";

        PreparedStatement st  = conexao.prepareStatement(query);

        ResultSet rs = st.executeQuery();

        while(rs.next()){

            PessoaJuridica pj = new PessoaJuridica();

            pj.setId(rs.getInt("id"));
            pj.setNome(rs.getString("nome"));
            pj.setEndereco(rs.getString("endereco"));
            pj.setTelefone(rs.getString("telefone"));
            pj.setCep(rs.getString("cep"));
            pj.setRaz_social(rs.getString("razsocial"));
            pj.setCnpj(rs.getString("cnpj"));



            clientes.add(pj);


        }

        return clientes;



    }




    
    

    



    
}