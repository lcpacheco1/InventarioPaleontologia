package dominio.puertos;

/**
 *
 * @author Rocio, Liz, Andrés
 */
public interface UsuarioBD {
    Usuario obtainUser(String username, String password);
    Usuario obtainCed();
}
