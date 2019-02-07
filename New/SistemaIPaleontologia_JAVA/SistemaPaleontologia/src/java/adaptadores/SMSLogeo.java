package adaptadores;

import dominio.puertos.SMS;



/**
 *
 * @author Rocio, Liz, Andrés
 */
public class SMSLogeo implements SMS {

    @Override
    public void show(String text) {
        System.out.println(text);
    }
    
}
