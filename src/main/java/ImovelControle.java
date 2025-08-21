import java.util.Scanner;

public class ImovelControle {
    ImovelDAO imo = new ImovelDAO();
    Scanner scanner = new Scanner(System.in);
    public void interacaoImovel(){
        Imovel imovel = new Imovel();
        System.out.println("Informe a id do cliente que será associado a esse imovel: ");
        imovel.setIdCliente(scanner.nextInt());
        scanner.nextLine();
        System.out.println("Informe o tipo de imovel: ");
        imovel.setTipoImovel(scanner.nextLine());
        System.out.println("Informe o status");
        System.out.println("Status aceitos: disponivel,alugado,vendido");
        System.out.println("Se não for informado o sistema colocará automaticamente como disponivel");
        imovel.setStatus(scanner.nextLine());
        System.out.println("Informe o CEP:");
        imovel.setCep(scanner.nextLine());
        System.out.println("Informe o estado (UF) do imóvel: ");
        imovel.setEstado(scanner.nextLine());
        System.out.println("Informe a cidade que está localizado o imóvel: ");
        imovel.setCidade(scanner.nextLine());
        System.out.println("Informe o bairro do imóvel: ");
        imovel.setBairro(scanner.nextLine());
        System.out.println("Informe a rua: ");
        imovel.setRua(scanner.nextLine());
        System.out.println("Informe o número: ");
        imovel.setNumero(scanner.nextInt());
        scanner.nextLine();
        System.out.println("Se houver, informe o complemento: ");
        imovel.setComplemento(scanner.nextLine());
        imo.inserirContrato(imovel);
    }
}
