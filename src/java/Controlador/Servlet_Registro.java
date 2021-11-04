/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.DAO_Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jedur
 */
@WebServlet(name = "Servlet_Registro", urlPatterns = {"/Servlet_Registro"})
public class Servlet_Registro extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet_Registro</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet_Registro at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String modo = request.getParameter("modo");

        //Registro Cliente
        String nombre = request.getParameter("nombre");
        String paterno = request.getParameter("paterno");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String materno = request.getParameter("materno");

        //Modificar Cliente
        String nombreM = request.getParameter("nombreM");
        String paternoM = request.getParameter("paternM");
        String maternoM = request.getParameter("maternoM");
        String userM = request.getParameter("userM");
        String passM = request.getParameter("passM");
        String CodClienteM = request.getParameter("codigoClienteM");

        //Eliminar Cliente
        String CodClienteE = request.getParameter("codigoClienteE");

        int CodigoCliente;

        try {
            DAO_Cliente ModoCliente = new DAO_Cliente();
            switch (modo) {
                case "registrar":
                    ModoCliente.RegistrarCliente(nombre, paterno, materno, user, pass, null);
                    //response.sendRedirect("Servlet_Ingreso?tipo=cliente&user=" + user + "&pass=" + pass);
                    RequestDispatcher destinos = request.getRequestDispatcher("Servlet_Ingreso?tipo=cliente&user=" + user + "&pass=" + pass);
                    destinos.forward(request, response);
                    break;
                case "modificar":
                    CodigoCliente = Integer.parseInt(CodClienteM);
                    ModoCliente.ActualizarCliente(CodigoCliente, nombreM, paternoM, maternoM, userM, passM, null);
                    response.sendRedirect("Servlet_Ingreso?tipo=cliente");
                    break;
                case "eliminar":
                    CodigoCliente = Integer.parseInt(CodClienteE);
                    ModoCliente.EliminarCliente(CodigoCliente);
                    response.sendRedirect("Servlet_Ingreso?tipo=cliente");
                    break;
                default:
                    break;
            }
        } catch (SQLException e) {
            Logger.getLogger(Servlet_Registro.class.getName()).log(Level.SEVERE, null, e);
            //RequestDispatcher destinos = request.getRequestDispatcher("Cliente/MenuCliente.jsp");
            //destinos.forward(request, response);
        }
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
