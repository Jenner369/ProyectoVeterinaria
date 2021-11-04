/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jedur
 */
@WebServlet(name = "Servlet_Veterinario", urlPatterns = {"/Servlet_Veterinario"})
public class Servlet_Veterinario extends HttpServlet {

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
            out.println("<title>Servlet Servlet_Veterinario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet_Veterinario at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        String opt = request.getParameter("enlace");
        String url = "";
        if (opt == null || opt.isEmpty()) {
            RequestDispatcher destinos = request.getRequestDispatcher("Servlet_Menu");
            destinos.forward(request, response);
        } else {
            switch (opt) {
                case "menu":
                    url = "Veterinario/MenuVeterinario.jsp";
                    break;
                case "historial":
                    url = "Veterinario/VerHistorialMascota.jsp";
                    break;
                case "calendario":
                    url = "Veterinario/VerCalendarioVeterinario.jsp";
                    break;
                case "lavado":
                    url = "Veterinario/VerCalendarioVeterinario.jsp";
                    break;
                default:
                    url = "Servlet_Menu";
            }
        }
        RequestDispatcher destinos = request.getRequestDispatcher(url);
        destinos.forward(request, response);
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
