import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        ConnectionFactory.getInstance();
        ImovelControle imovel = new ImovelControle();
        imovel.interacaoImovel();
    }

}
