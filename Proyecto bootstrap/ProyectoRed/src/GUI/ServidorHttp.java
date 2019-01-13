package GUI;

import static com.oracle.jrockit.jfr.ContentType.Bytes;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.net.Socket;

public class ServidorHttp {

    public static void main(String[] args) throws Exception {
        HttpServer server = HttpServer.create(new InetSocketAddress(4021), 0);
        server.createContext("/index.com", new MyHandler());
        server.createContext("/http.com", new MyHandler());
        server.setExecutor(null); // creates a default executor
        System.out.println("=============SERVIDOR HTTP=============");

        server.start();
    }

    static class MyHandler implements HttpHandler {

        public void handle(HttpExchange t) throws IOException {
            // <editor-fold defaultstate="collapsed" desc="Codigo html">
            String html_i = "<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "<head>\n"
                    + "	<title>Servidor http</title>\n"
                    + "<link href='https://fonts.googleapis.com/css?family=Arvo' rel='stylesheet'>"
                    + "</head>\n"
                    + "<style type=\"text/css\">\n"
                    + "	*{\n"
                    + "		margin: 0;\n"
                    + "		padding: 0;\n"
                    + "	}\n"
                    + "	body{\n"
                    + "		background-color: #fff;\n"
                    + "         font-family: 'Arvo';\n"
                    + "	}\n"
                    + " header{\n"
                    + "         background: rgb(150, 184, 210);\n"
                    + "         padding: 4em;\n"
                    + "         margin-bottom: 40px\n"
                    + " }\n"
                    + "h1{\n"
                    + "	text-shadow: -2px -2px 1px #000;\n"
                    + "	text-align: center;	\n"
                    + "	color: #fff;\n"
                    + "	clear: right;\n"
                    + "}\n"
                    + "h2{\n"
                    + "	text-align: center;	\n"
                    + " margin-bottom: 15px;\n"
                    + "}\n"
                    + ".contenedor{\n"
                    + "	background-color: rgba(237, 240, 242,1);\n"
                    + "	color: #32393f;;\n"
                    + "	padding: 40px 30px;\n"
                    + "	width: 70%;\n"
                    + "	margin: 0 auto;\n"
                    + "	border-radius: 15px; \n"
                    + "	box-shadow: 8px 8px 8px rgb(237, 240, 242);\n"
                    + " font-size: 20px;"
                    + "}\n"
                    + "</style>"
                    + "<body>\n"
                    + "<header>"
                    + "<h1>SERVIDOR HTTP</h1>"
                    + "</header>"
                    + "<div class='contenedor'>\n"
                    + "<h2>Mensaje</h2>"
                    + "<p>";

            String html_f = "</p>\n"
                    + "</div>\n"
                    + "</body>\n"
                    + "</html>";
            // </editor-fold>
            String respuesta = "Bienvenido al servidor http, este es un mensaje de prueba, el cual se recibe en el momento de ingresar su url.";
            System.out.println("En este servidor tenemos el siguiente mensaje: " + respuesta);
            respuesta = html_i + respuesta + html_f;
            t.sendResponseHeaders(200, respuesta.length());
            OutputStream os = t.getResponseBody();
            byte a[] = html_i.getBytes();
            byte b[] = respuesta.getBytes();
            byte c[] = html_f.getBytes();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            outputStream.write(a);
            outputStream.write(b);
            outputStream.write(c);
            byte pagina[] = outputStream.toByteArray();

            //System.out.println(respuesta);
            os.write(respuesta.getBytes());
            os.close();
        }
    }
}
