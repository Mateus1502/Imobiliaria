import java.util.Scanner;

public class Escolha {
    ImovelControle imo= new ImovelControle();
    ContratoControle cont = new ContratoControle();
    public void escolherOperacao(){
        System.out.println("Olá seja bem vindo ao sistema da Imobiliaria, o que deseja fazer?");
        System.out.println("Escolha uma das opções abaixo: ");
        System.out.println("1-Cadastro de imóvel");
        System.out.println("2-Visualizar imóveis disponíveis");
        System.out.println("3-Cadastrar contrato");
        System.out.println("4-Ver contratos expirando");
        System.out.println("5-Ver contratos ativos");
        Scanner scanner = new Scanner(System.in);
        int escolha = scanner.nextInt();
        if(escolha ==1){
            imo.interacaoImovel();
        }
        if(escolha ==2){
            imo.verDisponiveis();
        }
        if(escolha == 3){
            cont.cadastroCon();
        }
        if(escolha == 4){
            cont.verExprirando();
        }
        if(escolha == 5){
            cont.verAtivos();
        }
    }
}
