import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    // Atributo global / estático
    private static ConnectionFactory instance;

    // Construtor privado
    private ConnectionFactory() {
    }

    public static ConnectionFactory getInstance() {
        if (instance == null)
            instance = new ConnectionFactory();
        return instance;
    }

    // Criação da conexão com o seu banco de dados.
    public Connection get() throws SQLException {
        //TODO
        String url = "jdbc:mariadb://localhost:3306/imobiliaria";
        String user = "root";
        String password = "317069";
        return DriverManager.getConnection(url,user,password);
    }

}
