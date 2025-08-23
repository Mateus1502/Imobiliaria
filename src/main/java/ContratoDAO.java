import java.sql.*;


public class ContratoDAO extends BaseDAO{
    String sql = "INSERT INTO Contrato (id_cliente,id_imovel,tipo_contrato,data_inicio,data_fim,valor,status) VALUES (?,?,?,?,?,?,?)";
    public void cadastrarContrato(Contrato contrato){
        try (Connection con = con(); PreparedStatement cont = con().prepareStatement(sql);){
            cont.setInt(1,contrato.getIdCliente());
            cont.setInt(2,contrato.getIdImovel());
            cont.setString(3,contrato.getTipoContrato());
            cont.setObject(4, contrato.getDataInicio());
            cont.setObject(5,contrato.getDataFim());
            cont.setFloat(6,contrato.getValor());
            cont.setString(7,contrato.getStatus());

            int sucesso = cont.executeUpdate();
            if(sucesso>0){
                System.out.println("Contrato cadastrado com sucesso!");
                String novoStatus = "";
                if (contrato.getTipoContrato().equalsIgnoreCase("aluguel")) {
                    novoStatus = "alugado";
                } else if (contrato.getTipoContrato().equalsIgnoreCase("compra")) {
                    novoStatus = "vendido";
                }

                String sqlUpdateImovel = "UPDATE Imovel SET status = ? WHERE id = ?";
                try (PreparedStatement ps2 = con.prepareStatement(sqlUpdateImovel)) {
                    ps2.setString(1, novoStatus);
                    ps2.setInt(2, contrato.getIdImovel());
                    ps2.executeUpdate();
                }
                String sqlUpdateCliente = "UPDATE Imovel SET id_cliente = ? WHERE id = ? AND id_cliente IS NULL";
                try (PreparedStatement ps3 = con.prepareStatement(sqlUpdateCliente)) {
                    ps3.setInt(1, contrato.getIdCliente()); // pega o cliente do contrato
                    ps3.setInt(2, contrato.getIdImovel());  // pega o id do imóvel
                    ps3.executeUpdate();
                }


            }else{
                System.out.println("Verifique o erro abaixo: ");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public void listarContratos(){
        String sql = "SELECT * FROM Contrato WHERE status = ?";
        try (Connection con = con(); PreparedStatement list = con().prepareStatement(sql);){
            list.setString(1,"ativo");
            ResultSet resultado = list.executeQuery();
            int qtd=0;
            while (resultado.next()){
                int idContrato=resultado.getInt("id");
                int idCliente = resultado.getInt("id_cliente");
                int idImovel = resultado.getInt("id_imovel");
                String tipoContrato =resultado.getString("tipo_contrato");
                Date dataInicio = resultado.getDate("data_inicio");
                Date dataFim = resultado.getDate("data_fim");
                float valor = resultado.getFloat("valor");
                String status = resultado.getString("status");
                System.out.println("ID contrato: "+idContrato);
                System.out.println("ID Cliente: "+idCliente);
                System.out.println("ID imóvel: "+idImovel);
                System.out.println("Tipo contrato: "+tipoContrato);
                System.out.println("Data de inicio: "+dataInicio);
                System.out.println("Data fim: "+dataFim);
                System.out.println("Valor: "+valor);
                System.out.println("Status: "+status);
                System.out.println("================================================");
                qtd++;
            }
            System.out.println("Temos "+qtd+" contratos ativos");
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    public void contratosExpirando(){
        String sql = "SELECT * FROM Contrato WHERE data_fim BETWEEN CURDATE() AND DATE_ADD(CURDATE(),INTERVAL 30 DAY)";
        try (Connection con = con(); PreparedStatement exp = con().prepareStatement(sql);){
            ResultSet resultado = exp.executeQuery();
            while (resultado.next()){
                int idContrato=resultado.getInt("id");
                int idCliente = resultado.getInt("id_cliente");
                int idImovel = resultado.getInt("id_imovel");
                String tipoContrato =resultado.getString("tipo_contrato");
                Date dataInicio = resultado.getDate("data_inicio");
                Date dataFim = resultado.getDate("data_fim");
                float valor = resultado.getFloat("valor");
                String status = resultado.getString("status");
                System.out.println("ID contrato: "+idContrato);
                System.out.println("ID Cliente: "+idCliente);
                System.out.println("ID imóvel"+idImovel);
                System.out.println("Tipo contrato: "+tipoContrato);
                System.out.println("Data de inicio: "+dataInicio);
                System.out.println("Data fim: "+dataFim);
                System.out.println("Valor: "+valor);
                System.out.println("Status: "+status);
                System.out.println("================================================");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

    }
}
