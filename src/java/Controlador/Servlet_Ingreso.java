/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Beans.Beans_Cliente;
import Beans.Beans_Veterinario;
import DAO.DAO_Cliente;
import DAO.DAO_Veterinario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
@WebServlet(name = "Servlet_Ingreso", urlPatterns = {"/Servlet_Ingreso"})
public class Servlet_Ingreso extends HttpServlet {

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
            out.println("<title>Servlet Servlet_Ingreso</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet_Ingreso at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        String user;
        String pass;
        String tipo;
        user = request.getParameter("user");
        pass = request.getParameter("pass");
        tipo = request.getParameter("tipo");
        if (tipo.equals("cliente")) {
            try {
                Beans_Cliente lCliente = new Beans_Cliente();
                DAO_Cliente o = new DAO_Cliente();
                lCliente = o.BuscarCliente_porUserPass(user, pass);
                if (lCliente.getUsuario() != null) {
                    HttpSession misession = request.getSession(true);
                    misession.setAttribute("user", lCliente.getUsuario());
                    misession.setAttribute("pass", lCliente.getPassword());
                    misession.setAttribute("id", lCliente.getID());
                    misession.setAttribute("tipo", tipo);
                    response.sendRedirect("Servlet_Cliente?enlace=menu");
                    //RequestDispatcher destinos = request.getRequestDispatcher("Cliente/MenuCliente.jsp");
                    //destinos.forward(request, response);
                } else {
                    //response.sendRedirect("Servlet_Menu?enlace=login");
                    RequestDispatcher destinos = request.getRequestDispatcher("login.jsp");
                    destinos.forward(request, response);
                }

            } catch (SQLException ex) {
                Logger.getLogger(Servlet_Ingreso.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (tipo.equals("veterinario")) {
            try {
                Beans_Veterinario lVeterinario = new Beans_Veterinario();
                DAO_Veterinario o = new DAO_Veterinario();
                lVeterinario = o.BuscarUsuario(user, pass);

                HttpSession misession = request.getSession(true);
                misession.setAttribute("user", lVeterinario.getUsuario());
                misession.setAttribute("pass", lVeterinario.getPassword());
                misession.setAttribute("id", lVeterinario.getId());
                misession.setAttribute("tipo", tipo);

                RequestDispatcher destinos = request.getRequestDispatcher("Servlet_Veterinario?enlace=menu");
                destinos.forward(request, response);

            } catch (SQLException ex) {
                Logger.getLogger(Servlet_Ingreso.class.getName()).log(Level.SEVERE, null, ex);
            }
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
