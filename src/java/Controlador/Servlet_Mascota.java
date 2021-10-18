package Controlador;

import DAO.DAO_Mascota;
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

@WebServlet(name = "Servlet_Mascota", urlPatterns = {"/Servlet_Mascota"})
public class Servlet_Mascota extends HttpServlet {

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
            out.println("<title>Servlet Servlet_Mascota</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet_Mascota at " + request.getContextPath() + "</h1>");
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
        //ID del dueño y accion a realizar
        int ID = Integer.parseInt(request.getParameter("ID"));
        String accion = request.getParameter("accion");
        
        //Para Registrar
        String Nombre = request.getParameter("NombreR");
        String Raza = request.getParameter("RazaR");
        String Sexo = request.getParameter("SexoR");
        String Tipo = request.getParameter("TipoR");
        
        //Para Modificar
        String NombreM = request.getParameter("NombreM");
        String RazaM = request.getParameter("RazaM");
        String SexoM = request.getParameter("SexoM");
        String TipoM = request.getParameter("TipoM");
        String CodigoM = request.getParameter("codigoMascotaM");
        
        //Para Eliminar
        String CodigoE = request.getParameter("codigoMascotaE");
        

        int CodigoMascota;
        try {
            DAO_Mascota OperacionMascota = new DAO_Mascota();
            switch (accion) {
                case "registrar":
                    OperacionMascota.RegistrarMascota(Nombre, Raza, Sexo, Tipo, "a", ID);
                    response.sendRedirect("Servlet_Cliente?enlace=mascota");
                    break;
                case "modificar":
                    CodigoMascota = Integer.parseInt(CodigoM);
                    OperacionMascota.ActualizarMascota(CodigoMascota, NombreM, RazaM, SexoM, TipoM);
                    response.sendRedirect("Servlet_Cliente?enlace=mascota");
                    break;
                case "eliminar":
                    CodigoMascota = Integer.parseInt(CodigoE);
                    OperacionMascota.EliminarMascota(CodigoMascota);
                    response.sendRedirect("Servlet_Cliente?enlace=mascota");
                    break;
                default:
                    break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Servlet_Mascota.class.getName()).log(Level.SEVERE, null, ex);
            RequestDispatcher destinos = request.getRequestDispatcher("Cliente/VerMascota.jsp");
            destinos.forward(request, response);
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
