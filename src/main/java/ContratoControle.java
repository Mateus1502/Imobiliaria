import org.checkerframework.checker.units.qual.C;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class ContratoControle {
    ContratoDAO contrato = new ContratoDAO();
    Scanner scanner = new Scanner(System.in);
    public void cadastroCon(){
        Contrato cont = new Contrato();
        System.out.println("Informe a id do cliente que será associado a esse imovel: ");
        cont.setIdCliente(scanner.nextInt());
        scanner.nextLine();
        System.out.println("Informe a id do imovel: ");
        cont.setIdImovel(scanner.nextInt());
        scanner.nextLine();
        System.out.println("Informe o tipo de contrato");
        System.out.println("Status aceitos: aluguel ou compra");
        cont.setTipoContrato(scanner.nextLine().trim());
        System.out.println("Informe a data de inicio: ");
        String dataini = scanner.nextLine();
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date dataInicio = formato.parse(dataini); //
            cont.setDataInicio(dataInicio);
        } catch (ParseException e) {
            System.out.println("Data inválida! Use o formato yyyy/MM/dd. Em caso de compra igonore o erro");
        }

        System.out.println("Informe a data final do contrato");
        String dataFinal = scanner.nextLine();
        SimpleDateFormat form = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date dataFim = form.parse(dataFinal); //
            cont.setDataFim(dataFim);
        } catch (ParseException e) {
            if("compra".equalsIgnoreCase(cont.getTipoContrato())){
                System.out.println("Contrato de compra sem data de fim estipulada, parabéns pela aquisição!!!!!");
            }
            System.out.println("Data inválida! Use o formato yyyy/MM/dd.");
        }
        System.out.println("Informe o valor do contrato, para aluguel valor mensal, para compra o valor total do imóvel: ");
        cont.setValor(scanner.nextFloat());
        scanner.nextLine();
        System.out.println("Informe o status: ");
        System.out.println("Status aceitos: ativo ou encerrado");
        System.out.println("Se não definido será colocado como ativo");
        cont.setStatus(scanner.nextLine());
        contrato.cadastrarContrato(cont);
    }

    public void verExprirando(){
        Contrato cont = new Contrato();
        System.out.println("Deseja ver os contratos expirando no próximo mês: ");
        System.out.println("1-Sim");
        System.out.println("2-Não");
        int opcao = scanner.nextInt();
        if(opcao == 1 ){
            contrato.contratosExpirando();
        }else{
            System.out.println("Obrigado por usar o sistema");
        }
    }
    public void verAtivos(){
        Contrato cont = new Contrato();
        System.out.println("Deseja ver os contratos ativos? ");
        System.out.println("1-Sim");
        System.out.println("2-Não");
        int opcao = scanner.nextInt();
        if(opcao == 1 ){
            contrato.listarContratos();
        }else{
            System.out.println("Obrigado por usar o sistema");
        }
    }
    }

