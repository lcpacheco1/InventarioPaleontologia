/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import adaptadores.DAOUsuarios;
import adaptadores.InicioSesion;
import adaptadores.SMSLogeo;
import dominio.puertos.LoginUser;
import dominio.puertos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rocio
 */
public class LoginSesion extends HttpServlet {
    String cedu;
    String rol;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //Se obtine parámetros del index.jsp => sección logueo
        String correo = request.getParameter("txtEmail");
        String pass = request.getParameter("txtContrasenia");
        //Creación de sesión
        HttpSession sesion = request.getSession();

        //Se realiza el inicio de sesión
        InicioSesion solicitud = new InicioSesion();
        solicitud.datos(correo, pass);
        SMSLogeo display = new SMSLogeo();
        DAOUsuarios repository = new DAOUsuarios();
        LoginUser login = new LoginUser(display, repository, solicitud);
        
        
        login.validate();

        cedu=repository.obtainCed().getCedula();
        rol = repository.obtenerUCed(cedu).getRol();
        if (rol.equals("Administrador")) {
            response.sendRedirect("/SistemaPaleontologia/Templates/internas/AdminReg.jsp?ced="+cedu+"");
        }else if(rol.equals("Usuario")){
            response.sendRedirect("/SistemaPaleontologia/Templates/internas/UserReg.jsp?ced="+cedu+"");
        }else if (correo.equals("") || pass.equals("")) {
            response.sendRedirect("index.jsp");
        }else if (correo.equals("") || pass.equals("")){
            response.sendRedirect("index.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
