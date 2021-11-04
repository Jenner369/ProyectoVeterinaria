<%-- 
    Document   : ReporteMascotasCliente
    Created on : 03/11/2021, 11:39:55 PM
    Author     : USER
--%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte de Mascotas Clientes</title>
    </head>
    <body>
        <%
            String Parametro = request.getParameter("DNI");
            Connection con;
            String USERNAME = "root";
            String PASSWORD = "Sistemas...2020";
            String HOST = "localhost";
            String PORT = "3306";
            String DATABASE = "inventario";
            String CLASSNAME = "com.mysql.cj.jdbc.Driver";
            String URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE + "?serverTimezone=UTC";

            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            File reportFile = new File(application.getRealPath("//Utiles/Reportes/MascotasDeClientes.jasper"));
            Map parametros = new HashMap();
            parametros.put("DNI", Integer.parseInt(Parametro));
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parametros, con);

            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream output = response.getOutputStream();
            response.getOutputStream();
            output.write(bytes, 0, bytes.length);
            output.flush();
            output.close();
        %>
    </body>
</html>
