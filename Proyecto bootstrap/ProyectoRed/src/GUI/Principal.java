package GUI;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;
import java.net.*;
import java.io.*;
import javax.swing.Box;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Principal {

    public static void main(String[] args) throws IOException {
        int cont_ventana = 0;
        int limite = 18;
        int umbral = 10;
        String[] urls= { "http://localhost:4021/index.com", "http://localhost:4021/http.com"};

//        JTextField xField = new JTextField(5);
//        JTextField yField = new JTextField(5);
//        JTextField zField = new JTextField(5);
//
//        JPanel myPanel = new JPanel();
//        myPanel.add(new JLabel("CWD:"));
//        myPanel.add(xField);
//        myPanel.add(Box.createHorizontalStrut(15)); // a spacer
//        myPanel.add(new JLabel("PIPELIMIT:"));
//        myPanel.add(yField);
//        myPanel.add(Box.createHorizontalStrut(15)); // a spacer
//        myPanel.add(new JLabel("SSH:"));
//        myPanel.add(zField);
//
//        int result = JOptionPane.showConfirmDialog(null, myPanel,
//                "Ingresar Variables Para TCP-RENO", JOptionPane.OK_CANCEL_OPTION);
//        if (result == JOptionPane.OK_OPTION) {
//            System.out.println("x value: " + xField.getText());
//            System.out.println("y value: " + yField.getText());
//            System.out.println("z value: " + zField.getText());
//            cont_ventana = Integer.parseInt(xField.getText());
//            limite = Integer.parseInt(yField.getText());
//            umbral = Integer.parseInt(zField.getText());
//        }

        String messag;
        Grafica grafica;
        System.out.println("=============Principal=============");

        InetAddress host = InetAddress.getByName("localhost");
        System.out.println("Conexion establecida en el puerto: " + 4020);
        Socket socket = new Socket(host, 4020);

        PrintWriter imprim = new PrintWriter(socket.getOutputStream(), true);  //Para Enviar al Servidor   
        System.out.println("Conectadose a: " + socket.getRemoteSocketAddress());
        BufferedReader br = new BufferedReader(new InputStreamReader(socket.getInputStream()));//Para Recibir de servidor
        //http://localhost:4021/index
        JFrame frame = new JFrame("Seleccion Una Url");
        String URLseleccionada = (String) JOptionPane.showInputDialog(frame,
                "Seleccion Una URL",
                "Lista de URL",
                JOptionPane.QUESTION_MESSAGE,
                null,
                urls,
                urls[0]);
       
        imprim.println(URLseleccionada);//es 4021 por que se lo crea en ServidorHttp.java
        imprim.flush();
        messag = br.readLine();
        String[] messag2 = messag.split("<p>");
        String[] messag3 = messag2[1].split("</p>");
        String mensaje = messag3[0];
        System.out.println(messag3[0]);
        System.out.println("Mensaje a enviar " + mensaje);

        System.out.println("Iter\tcwd");
        System.out.println(
                "================================================================");
        try {
            InetAddress direccion = InetAddress.getByName("127.0.0.1");
            int receiverPort = Integer.parseInt("4020");
            String sub = "";
            int puntero = 0;
            int iteracion = 1;
            int primero = 0;
            grafica = new Grafica();
            grafica.plotGraph();
            for (cont_ventana = 1; puntero < mensaje.length();) {
                //System.out.println("puntero " + puntero);
                //System.out.println("ventana " + cwd);
                //System.out.println("puntero "+puntero+"<"+message.length());
                if (puntero + cont_ventana > mensaje.length()) {
                    sub = mensaje.substring(puntero, mensaje.length());
                    puntero = mensaje.length();
                    //System.out.println("fast retransmit (final)");
                    //System.out.println(iter + "\t" + cwd);
                    // System.out.println("LLEGO");
                } else {
                    if (cont_ventana >= limite) {
                        System.out.println("Congestion avoidance 1 ");
                        if (cont_ventana == limite) {
                            sub = mensaje.substring(puntero, puntero + cont_ventana / 2);
                            puntero = puntero + cont_ventana / 2;
                          
                            System.out.println(iteracion + "\t" + cont_ventana / 2);
                            // pipelimit+=2; //tcp variante
                        }
                        //tcpPlot.plotTcp(iter, cwd, ssh, pipelimit);
                        cont_ventana = cont_ventana / 2;
                        umbral = cont_ventana;

                    } else {
                        if (cont_ventana >= umbral || primero == 1) {
                            System.out.println("Retransmision rapida");
                            sub = mensaje.substring(puntero, puntero + cont_ventana + 1);
                            cont_ventana = cont_ventana + 1;
                            puntero = puntero + cont_ventana;
                            System.out.println(iteracion + "\t" + cont_ventana);
                        } else {
                            if (cont_ventana * 2 > limite) {
                                grafica.plotTcp(iteracion, cont_ventana * 2, umbral, limite);
                                System.out.println("Congestion avoidance 2");
                                umbral = cont_ventana;
                                sub = mensaje.substring(puntero, puntero + cont_ventana + 1);
                                cont_ventana += 1;
                                System.out.println(iteracion + "\t" + cont_ventana);
                                primero = 1;
                                puntero = puntero + cont_ventana;
                             //   pipelimit+=2; // tcp variante
                            } else {
                                System.out.println("Slow start");
                                sub = mensaje.substring(puntero, puntero + (cont_ventana * 2));
                                cont_ventana = cont_ventana * 2;
                                System.out.println(iteracion + "\t" + cont_ventana);
                                puntero = puntero + cont_ventana;
                            }
                        }
                    }
                }
                if (cont_ventana <= limite) {
                    //System.out.println(iter + "\t" + cwd);
                    grafica.plotTcp(iteracion, cont_ventana, umbral, limite);
                    iteracion++;
                    Thread.sleep(1000);
                    DatagramSocket mySocket = new DatagramSocket();
                    // System.out.println("DATOS====" + sub);
                    byte[] buffer = sub.getBytes();
                    DatagramPacket datagram = new DatagramPacket(buffer, buffer.length, direccion, receiverPort);
                    mySocket.send(datagram);
                    mySocket.close();
                }
            }
            socket.close();
            imprim.close();
        } // end try
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}