package GUI;

import java.net.*;
import java.io.*;

public class Receptor {
      
    public static void main(String[] args) throws IOException {
        int puerto = 4020;
       
        String mensaje_unido = "";
       

        ServerSocket serverSocket = new ServerSocket(4020);//específicamos puerto del servidor, en el que se va a escuchar
        System.out.println("=============RECEPTOR=============");
       // System.out.println(mensaje_unido.trim());

        // This is the assumed maximum byte length of the datagram to be received.
        try {
            while (true) {
                System.out.println("Esperado por un cliente en el puerto: " + serverSocket.getLocalPort() + "...");
                Socket server = serverSocket.accept();
                System.out.println("Conexion establecida por: " + server.getRemoteSocketAddress());

                PrintWriter toClient = new PrintWriter(server.getOutputStream(), true);
                BufferedReader fromClient = new BufferedReader(new InputStreamReader(server.getInputStream()));

                String line = fromClient.readLine();

                //System.out.println("linea leida " + line);
                toClient.println(consultar(line));
                toClient.flush();

                System.out.println("Esperando paquetes...");
                while (true) {
                    DatagramSocket mySocket = new DatagramSocket(puerto);
                    // instantiates a datagram socket for receiving the data
                    final int MAX_LEN = 100;
                    byte[] buffer = new byte[MAX_LEN];
                    DatagramPacket datagram = new DatagramPacket(buffer, MAX_LEN);
                    mySocket.receive(datagram);
                    String message = new String(buffer);
                    System.out.println("Recibido de Cliente: " + message);
                    mensaje_unido += message.trim();
                    System.out.println("MENSAJE UNIDO: " + mensaje_unido);
                    mySocket.close();
                }      
            }
        } // end try
        catch (Exception ex) {
            ex.printStackTrace();
        }

    } // end main
  
    

    public static String consultar(String line) throws MalformedURLException, IOException {
        System.out.println(line);
        URL url = new URL(line);
        URLConnection con = url.openConnection();

        BufferedReader in = new BufferedReader(
                new InputStreamReader(con.getInputStream()));

        String linea;
        String res = "";
        while ((linea = in.readLine()) != null) {
            res = res + linea;
        }
        //System.out.println(res);
        return res;
    }
}
