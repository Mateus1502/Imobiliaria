import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ImovelDAO extends BaseDAO{
    String sql = "INSERT INTO Imovel (id_cliente,tipo_imovel,status,cep,estado,cidade,bairro,rua,numero,complemento) VALUES(?,?,?,?,?,?,?,?,?,?)";
    public void inserirContrato(Imovel imovel){
        try(Connection con = con(); PreparedStatement imo = con().prepareStatement(sql);){
        imo.setInt(1,imovel.getIdCliente());
        imo.setString(2,imovel.getTipoImovel());
        imo.setString(3,imovel.getStatus());
        imo.setString(4,imovel.getCep());
        imo.setString(5, imovel.getEstado());
        imo.setString(6, imovel.getCidade());
        imo.setString(7, imovel.getBairro());
        imo.setString(8,imovel.getRua());
        imo.setInt(9,imovel.getNumero());
        imo.setString(10, imovel.getComplemento());

        int sucesso = imo.executeUpdate();
        if(sucesso>0){
            System.out.println("Dados inseridos na tabela!");
        }else{
            System.out.println("Erro ao inserir dados do imóvel");
        }


    }catch(SQLException e){
        e.printStackTrace();
    }
    }
    public void listarImoveis() {
        String sql = "SELECT * FROM Imovel WHERE status = ?";
        try (Connection con = con(); PreparedStatement list = con.prepareStatement(sql);) {
            list.setString(1, "disponivel");
            ResultSet rs = list.executeQuery();
            int qtd = 0;
            while (rs.next()) {
                int id = rs.getInt("id");
                String tipoImovel = rs.getString("tipo_imovel");
                String status =rs.getString("status");
                String cep = rs.getString("cep");
                String estado = rs.getString("estado");
                String cidade = rs.getString("cidade");
                String bairro = rs.getString("bairro");
                String rua = rs.getString("rua");
                int numero = rs.getInt("numero");
                String complemento = rs.getString("complemento");
                System.out.println("ID: " + id +
                        " | Tipo imóvel: " + tipoImovel +
                        " | Status: "+status+
                        " | Estado:"+estado+
                        " | Cidade: " + cidade +
                        " | Bairro: "+bairro+
                        " | Rua: "+rua+
                        " | Número: "+numero+
                        " | Complemento: " + complemento);
                qtd++;

            }
            System.out.println("Encontramos: "+qtd+" imóveis");
        } catch (Exception e) {
            System.out.println("Não encontramos dados");
            e.printStackTrace();
        }
    }
}


