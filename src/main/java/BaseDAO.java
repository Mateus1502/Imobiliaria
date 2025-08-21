import java.sql.Connection;
import java.sql.SQLException;

public class BaseDAO {
    // Visibilidade de pacote

    protected Connection con() throws SQLException {
        return ConnectionFactory.getInstance().get();
    }
}
