import java.sql.Connection;
import java.sql.PreparedStatement;
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
}

