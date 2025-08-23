import java.util.Scanner;

public class ImovelControle {
    ImovelDAO imo = new ImovelDAO();
    Scanner scanner = new Scanner(System.in);
    public void interacaoImovel(){
        Imovel imovel = new Imovel();
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
    public void verDisponiveis(){
        Imovel imovel = new Imovel();
        System.out.println("Deseja ver os imóveis disponíveis?");
        System.out.println("1-Sim");
        System.out.println("2-Não");
        int opcao = scanner.nextInt();
        if(opcao ==1){
         imo.listarImoveis();
        }else{
            System.out.println("Obrigado por usar o sistema");
        }
    }
}
