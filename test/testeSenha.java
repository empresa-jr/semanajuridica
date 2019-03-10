
import br.com.ejftc.classesAuxiliares.CodificarSenha;
import java.security.NoSuchAlgorithmException;

public class testeSenha {

    public static void main(String[] args) throws NoSuchAlgorithmException {

        //TESTE DE COMO USAR A SENHA
        CodificarSenha codificarSenha = new CodificarSenha();
        String senhaInformada = "testeSenha";

        String saltComSHA256 = codificarSenha.gerarHashSHA256(codificarSenha.gerarSalt(senhaInformada.length()));
        String senhaFinalSHA256 = codificarSenha.criptografarSenha(senhaInformada, saltComSHA256);

        System.out.println("Senha = " + senhaFinalSHA256);
        System.out.println("Salt = " + saltComSHA256);
    }

}
