package dominio.puertos;

import java.util.List;

/**
 *
 * @author Rocio, Liz, Andrés
 */
public class LoginUser {
    private final SMS display;
    private final UsuarioBD userRepository;
    private final ListaUsuarios request;

    public LoginUser(SMS display, UsuarioBD userRepository, ListaUsuarios request) {
        this.display = display;
        this.userRepository = userRepository;
        this.request = request;
    }
    
    public void validate() {
        List<String> dataLogin = request.infoUser();
        
        
        Usuario userRegistered = userRepository.obtainUser(dataLogin.get(0),
                dataLogin.get(1));
        
        showResult(userRegistered);
    }

    private void showResult(Usuario userRegistered) {
        if (userRegistered != null) {
            display.show(String.format("Welcome %s", userRegistered.getNombres()+" numero CI. "+userRegistered.getCedula()));
        } else {    
            display.show("Incorrect username or password");
        }
    }
    
    
    
    
}
