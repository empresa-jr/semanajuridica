package ClassesAuxiliares;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class CodificarSenha {

    public String criptografarSenha(String senha, String saltComSHA256) throws NoSuchAlgorithmException {

        String senhaComSHA256 = gerarHashSHA256(senha);
        String senhaComSalt = mesclarSenhaComSalt(senhaComSHA256, saltComSHA256);
        String senhaCriptograda = criptografarSenha(senhaComSalt);

        //Para reduzir os caracteres, optei por gerar novamente um hash sha256 final
        String senhaFinalSHA256 = gerarHashSHA256(senhaCriptograda);

        return senhaFinalSHA256;
    }

    // ========================================================================= 
    //----------------------------- Gera o "salt" ------------------------------
    //--------------------------------------------------------------------------
    // Valor aleatório que irá ser mesclado à senha antes de ser criptografada
    // Recebe o tamanho da senha inserida e cria um salt de mesmo tamanho.
    // "Salgar" a senha previne ataques de força bruta com uso de dicionários,
    // pois terá sempre um valor aleatório envolvido.
    //--------------------------------------------------------------------------
    // Também será armazenada no banco de dados!
    //--------------------------------------------------------------------------
    //==========================================================================
    
    public String gerarSalt(int tamanhoSenha) {
        
        //Caracteres disponíveis para gerar o salt
        String caracteresDoSalt = "abcdefghijklmnopqrstuvwxyz0123456789$#!";
        int tamanhoDoSalt = tamanhoSenha;

        Random valoraleatorio = ThreadLocalRandom.current();
        
        int QntCaracteresDoSalt = caracteresDoSalt.length();
        char[] arrayDoSalt = new char[tamanhoDoSalt];
        for (int i = 0; i < tamanhoDoSalt; i++) {
            arrayDoSalt[i] = caracteresDoSalt.charAt(
                    valoraleatorio.nextInt(QntCaracteresDoSalt));
        }
        return String.valueOf(arrayDoSalt);
    }

    //==========================================================================
    // ----------------------- Mescla a senha ao salt --------------------------
    // -------------------------------------------------------------------------
    // Recebe a senha, o salt criado e embaralha os dois antes de criptografar.  
    //--------------------------------------------------------------------------
    //==========================================================================
    private String mesclarSenhaComSalt(String senha, String salt) {

        StringBuilder senhaComSalt = new StringBuilder();

        for (int i = 0; i < senha.length(); i++) {
            senhaComSalt.append(senha.charAt(i));
            senhaComSalt.append(salt.charAt(i));
        }

        return senhaComSalt.toString();
    }

    //==========================================================================
    // ---------------------- Criptografa a Senha ------------------------------
    // -------------------------------------------------------------------------
    // Recebe a senha com o salt e substitui cada caractere da String.   
    //--------------------------------------------------------------------------
    //==========================================================================    
    private String criptografarSenha(String senhaComSalt) {
        
        // Basicamente irá trocar os caracteres de entrada pelo de saída
        // Ex.: toda letra "f" será trocada pelo "u"
        
        char[] entrada = "abcdefghijklmnopqrstuvwxyz0123456789".toCharArray();
        char[] saida = "zyxwvutsrqponmlkjihgfedcbja876543210".toCharArray();
        char[] senhaFinal = senhaComSalt.toCharArray();

        for (int i = 0; i < senhaComSalt.length(); i++) {

            for (int j = 0; j < entrada.length; j++) {

                if (entrada[j] == senhaComSalt.charAt(i)) {
                    senhaFinal[i] = saida[j];
                }
            }
        }

        return String.valueOf(senhaFinal);
    }

    //==========================================================================
    // ------------------------- Gera Hash SHA256 ------------------------------
    // -------------------------------------------------------------------------
    // Recebe o salt, a senha já criptografada e gera o hash do padrão SHA256 
    //--------------------------------------------------------------------------
    //==========================================================================  
    public String gerarHashSHA256(String SenhaCriptografada) throws NoSuchAlgorithmException {

        // Condifica a senha para um array de bytes
        MessageDigest senhaCodificada = MessageDigest.getInstance("SHA-256");
        senhaCodificada.update(SenhaCriptografada.getBytes());
        byte[] senhaEmBytes = senhaCodificada.digest();

        // Converte o array de bytes para String
        StringBuilder result = new StringBuilder();
        for (byte byt : senhaEmBytes) {
            result.append(Integer.toString((byt & 0xff) + 0x100, 16).substring(1));
        }
        return result.toString();
    }
}
