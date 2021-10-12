/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Beans.Beans_Cita;
import Beans.Beans_Mascota;
import Beans.Beans_Veterinario;
import DAO.DAO_Cita;
import DAO.DAO_Mascota;
import DAO.DAO_Veterinario;
import com.google.gson.Gson;
import java.beans.Beans;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
@WebServlet(name = "Servlet_Cita", urlPatterns = {"/Servlet_Cita"})
public class Servlet_Cita extends HttpServlet {

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
            out.println("<title>Servlet Servlet_Cita</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet_Cita at " + request.getContextPath() + "</h1>");
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
        String opt = request.getParameter("enlace");
        HttpSession session = request.getSession(true);
        int IDCliente = Integer.parseInt(session.getAttribute("id").toString());
        String url = "";
        if (opt == null || opt.isEmpty()) {
            RequestDispatcher destinos = request.getRequestDispatcher("Cliente/MenuCliente.jsp");
            destinos.forward(request, response);
        }
        switch (opt) {
            case "getDataCalendar":
                List<Beans_Cita> listaDatosCita = new ArrayList<Beans_Cita>();
                Beans_Cita bCita = new Beans_Cita();
                try {
                    DAO_Cita dCita = new DAO_Cita();
                    listaDatosCita = dCita.BuscarCitaPorCliente(IDCliente);
                    Iterator<Beans_Cita> it = listaDatosCita.iterator();
                    while (it.hasNext()) {
                        bCita = it.next();
                        bCita.setDESCRIPCION("Mascota: "+IDCliente+", atendido por el veterinario: "+bCita.getVETERINARIO_ID());
                    }
                } catch (SQLException e) {
                    System.out.println(e);
                }
                String json = new Gson().toJson(listaDatosCita);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);
                return;
            case "calendario":
                break;
            case "agregar":
                break;
            case "modificar":
                break;
            case "eliminar":
                break;
            default:
                throw new AssertionError();
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
        //processRequest(request, response);
        try {
            //processRequest(request, response);
            String opt = request.getParameter("enlace");
            HttpSession session = request.getSession(true);
            String url = "";
            if (opt == null || opt.isEmpty()) {
                RequestDispatcher destinos = request.getRequestDispatcher("Cliente/MenuCliente.jsp");
                destinos.forward(request, response);
            }
            switch (opt) {

                case "agregar":
                    url = "Cliente/VerCalendarioCliente.jsp";

                    String fechayhoraEntrada = request.getParameter("fechaEntrada") + "T" + request.getParameter("horaEntrada");
                    String fechayhoraSalida = request.getParameter("fechaSalida") + "T" + request.getParameter("horaSalida");
                    double monto = Double.parseDouble(request.getParameter("montoTotal"));
                    int mas = Integer.parseInt(request.getParameter("mascota"));
                    int servicio = Integer.parseInt(request.getParameter("servicioMascota"));

                    DAO_Mascota mascota = new DAO_Mascota();
                    List listaRecibe = new ArrayList<>();
                    listaRecibe = mascota.BuscarMascota_PorIDCliente(Integer.parseInt(session.getAttribute("id").toString()));
                    Iterator<Beans_Mascota> iter = listaRecibe.iterator();
                    Beans_Mascota beansM;
                    int idMascota = 0;

                    while (iter.hasNext()) {
                        beansM = iter.next();
                        if (beansM.getID() == mas) {
                            idMascota = beansM.getID();
                        }
                    }
                    DAO_Veterinario objveterinario = new DAO_Veterinario();

                    List<Beans_Veterinario> lista = objveterinario.SeleccionarVeterinario_PorDisponibilidad(fechayhoraEntrada, fechayhoraSalida);
                    Beans_Veterinario objVe = lista.get(Math.round((float) Math.random() * lista.size()));

                    DAO_Cita objeCita = new DAO_Cita();
                    objeCita.InsertarCita(fechayhoraEntrada, fechayhoraSalida, monto, idMascota, objVe.getId(), servicio);

                    break;
                case "modificar":
                    url = "Cliente/ModificarCita.jsp";
                    //Recibimos parametros

                    break;
                case "Eliminar":
                    url = "Cliente/EliminarCita.jsp";
                    //Recibimos  el parametro. 
                    int idCita = Integer.parseInt(request.getParameter("id"));
                    DAO_Cita cita = new DAO_Cita();
                    cita.EliminarCita(idCita);
                    break;

                case "calendar":
                    url = "Cliente/VerCalendarioCliente.jsp";
                    break;
                default:
                    url = "Cliente/MenuCliente.jsp";
                    break;
            }
            RequestDispatcher destinos = request.getRequestDispatcher(url);
            destinos.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Servlet_Cita.class.getName()).log(Level.SEVERE, null, ex);
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
