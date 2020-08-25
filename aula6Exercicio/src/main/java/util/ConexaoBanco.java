package util;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.cj.jdbc.MysqlDataSource;
 

public class ConexaoBanco {
    
    private Connection conex = null;
    private final String BANCO = "dbclientes";
    private final String LOGIN = "root";
    private final String SENHA = "bancoMysql";
    private final String HOST = "localhost";

    public Connection getConnection(){


        try{

            MysqlDataSource ds = new MysqlDataSource();
            ds.setServerName(HOST);
            ds.setDatabaseName(BANCO);
            ds.setUser(LOGIN);
            ds.setPassword(SENHA);
            ds.setServerTimezone("UTC");
            ds.setConnectTimeout(2000);

            conex = ds.getConnection();
            System.out.println("CONECTADO AO BANCO DE DADOS.");
        
            

        }catch(SQLException sqlerror){
            System.out.println("FALHA NA CONEXÃO !!!" + sqlerror.getMessage());
        }

        return conex;


    }


}