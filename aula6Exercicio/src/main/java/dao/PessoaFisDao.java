package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import model.PessoaFisica;
import util.ConexaoBanco;

public class PessoaFisDao {
    

    private Connection conexao;


    public PessoaFisDao(){
        this.conexao = new ConexaoBanco().getConnection();
    }

    public void cadastrar(PessoaFisica cli) throws SQLException{

        String query;
        query = "INSERT INTO tbpessoa_fisica (nome, endereco, telefone, cep, datanas, cpf)  VALUES(?,?,?,?,?,?)";

        PreparedStatement st = conexao.prepareStatement(query);

        st.setString(1, cli.getNome());
        st.setString(2, cli.getEndereco());
        st.setString(3, cli.getTelefone());
        st.setString(4, cli.getCep());
        st.setString(5, cli.getData_nasc());
        st.setString(6, cli.getCpf());

        st.execute();
        st.close();
        conexao.close(); 

         
    }


    public List<PessoaFisica>pesquisar() throws SQLException, Exception{

        List<PessoaFisica> clientes = new ArrayList<>();
        String query = "SELECT * FROM tbpessoa_fisica";

        PreparedStatement st = conexao.prepareStatement(query);

        ResultSet rs = st.executeQuery();

        while(rs.next()){

            PessoaFisica pf = new PessoaFisica();

            pf.setId(rs.getInt("id"));
            pf.setNome(rs.getString("nome"));
            pf.setEndereco(rs.getString("endereco"));
            pf.setTelefone(rs.getString("telefone"));
            pf.setCep(rs.getString("cep"));
            pf.setData_nasc(rs.getString("datanas"));
            pf.setCpf(rs.getString("cpf"));


            clientes.add(pf);


        }

        return clientes;

    }





}