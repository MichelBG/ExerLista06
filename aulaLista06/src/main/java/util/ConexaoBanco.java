package util;

import java.sql.Connection;
import java.sql.SQLException;
import com.mysql.cj.jdbc.MysqlDataSource;

public class ConexaoBanco {

    private static final String HOST ="localhost";
    private static final String BANCO = "TESTE";
    private static final String USUARIO = "teste";
    private static final String SENHA = "teste@123";


    public static Connection getConexão() throws SQLException{
        MysqlDataSource ds = new MysqlDataSource();
        ds.setServerName(HOST);

            ds.setDatabaseName(BANCO);
            ds.setUser(USUARIO);
            ds.setPassword(SENHA);
            
            ds.setServerTimezone("UTC");
            ds.setConnectTimeout(2000);
    
            return ds.getConnection();
        }
        

    }

    
}