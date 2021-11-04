/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Beans.Beans_Cita;
import Beans.Beans_Mascota;
import Beans.Beans_Servicio;
import Beans.Beans_Veterinario;
import DAO.DAO_Cita;
import DAO.DAO_Mascota;
import DAO.DAO_Servicio;
import DAO.DAO_Veterinario;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
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
        int IDUsuario = Integer.parseInt(session.getAttribute("id").toString());
        String Tipo = session.getAttribute("tipo").toString();
        String url = "";
        if (opt == null || opt.isEmpty()) {
            RequestDispatcher destinos = request.getRequestDispatcher("Cliente/MenuCliente.jsp");
            destinos.forward(request, response);
        }
        switch (opt) {
            case "getDataCalendar":
                List<Beans_Cita> listaDatosCita = new ArrayList<>();
                Beans_Cita bCita = new Beans_Cita();
                try {
                    DAO_Cita dCita;
                    DAO_Mascota Mascota = new DAO_Mascota();
                    if (Tipo.equals("cliente")) {
                        
                        List<Beans_Mascota> listaMascotas_Cliente = Mascota.BuscarMascotaPorID_CLIENTE(IDUsuario);
                        for (int i = 0; i < listaMascotas_Cliente.size(); i++) {
                            dCita = new DAO_Cita();
                            List<Beans_Cita> aux = dCita.BuscarCitaPorMascota(listaMascotas_Cliente.get(i).getID());
                            (listaDatosCita = new ArrayList<>(listaDatosCita)).addAll(aux);
                        }
                    
                    }else{
                        dCita = new DAO_Cita();
                        listaDatosCita = dCita.BuscarCitaPorVeterinario(IDUsuario);
                    }

                    Iterator<Beans_Cita> it = listaDatosCita.iterator();
                    DAO_Servicio dServicio = new DAO_Servicio();

                    while (it.hasNext()) {
                        bCita = it.next();
                        Beans_Servicio bserv = dServicio.BuscarServicios_ID(bCita.getSERVICIO_ID());
                        bCita.setDESCRIPCION("Mascota: " + IDUsuario + ", atendido por el veterinario: " + bCita.getVETERINARIO_ID() + "\n" + "Servicio" + "\n"
                                + "Nombre" + bserv.getNombre() + "\n"
                                + "Costo" + bserv.getCosto() + "\n"
                                + "Duracion" + bserv.getDuracion());
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
                url = "Cliente/ReservaCita.jsp";
                break;
            case "modificar":
                url = "Cliente/ModificarCita.jsp";
                break;
            case "eliminar":
                url = "Cliente/EliminarCita.jsp";
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

                    LocalDateTime Entrada = LocalDateTime.parse(request.getParameter("fechaEntrada") + "T" + request.getParameter("horaEntrada"));
                    Entrada.minusHours(5);
                    String fechayhoraEntrada = Entrada.toString();
                    int servicio = Integer.parseInt(request.getParameter("servicioMascota"));
                    DAO_Servicio dServ = new DAO_Servicio();
                    Beans_Servicio bServ = dServ.BuscarServicios_ID(servicio);
                    //String fechayhoraSalida = request.getParameter("fechaSalida") + "T" + request.getParameter("horaSalida");
                    String fechayhoraSalida = LocalDateTime.parse(fechayhoraEntrada).plusMinutes(bServ.getDuracion()).toString();
                    double monto = Double.parseDouble(request.getParameter("montoTotal"));
                    int mas = Integer.parseInt(request.getParameter("mascota"));
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
                    Beans_Veterinario objVe = lista.get(Math.round((float) Math.random() * (lista.size() - 1)));

                    DAO_Cita objeCita = new DAO_Cita();
                    objeCita.InsertarCita(fechayhoraEntrada, fechayhoraSalida, monto, idMascota, objVe.getId(), servicio);

                    break;
                case "modificar":
                    url = "Cliente/ModificarCita.jsp";
                    int CITA_ID = Integer.parseInt(request.getParameter("idCita"));
                    String MEntrada = request.getParameter("fechaEntrada") + "T" + request.getParameter("horaEntrada");
                    int MServicio = Integer.parseInt(request.getParameter("servicioMascota"));
                    DAO_Servicio dMServ = new DAO_Servicio();
                    Beans_Servicio bMServ = dMServ.BuscarServicios_ID(MServicio);

                    //String MSalida = request.getParameter("fechaSalida") + "T" + request.getParameter("horaSalida");
                    String MSalida = LocalDateTime.parse(MEntrada).plusMinutes(bMServ.getDuracion()).toString();
                    double Mmonto = Double.parseDouble(request.getParameter("montoTotal"));
                    int Mmascota = Integer.parseInt(request.getParameter("mascota"));
                    DAO_Mascota Mascota = new DAO_Mascota();
                    List ListaRecibe = new ArrayList<>();
                    ListaRecibe = Mascota.BuscarMascota_PorIDCliente(Integer.parseInt(session.getAttribute("id").toString()));
                    Iterator<Beans_Mascota> Iterator = ListaRecibe.iterator();
                    Beans_Mascota BeansM;
                    int IDMascota = 0;

                    while (Iterator.hasNext()) {
                        BeansM = Iterator.next();
                        if (BeansM.getID() == Mmascota) {
                            IDMascota = BeansM.getID();
                        }
                    }
                    DAO_Veterinario OVeterinario = new DAO_Veterinario();

                    List<Beans_Veterinario> Lista = OVeterinario.SeleccionarVeterinario_PorDisponibilidad(MEntrada, MSalida);
                    Beans_Veterinario OBeansVeterinario = Lista.get(Math.round((float) Math.random() * Lista.size()));

                    DAO_Cita ObjeCita = new DAO_Cita();
                    ObjeCita.ModificarCita(CITA_ID, MEntrada, MSalida, Mmonto, IDMascota, OBeansVeterinario.getId(), MServicio);

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
