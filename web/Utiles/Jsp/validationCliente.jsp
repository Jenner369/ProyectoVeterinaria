<%
    if (session.getAttribute("user") != null && session.getAttribute("pass") != null
            && session.getAttribute("tipo") != null && session.getAttribute("id") != null) {
        String user = session.getAttribute("user").toString();
        String pass = session.getAttribute("pass").toString();
        String tipo = session.getAttribute("tipo").toString();
        String id = session.getAttribute("id").toString();

        if ((user != null && !user.isEmpty()) && (pass != null && !pass.isEmpty())) {
            //ESTOY LOGUEADO 
            if (tipo.equals("veterinario")) {
                response.sendRedirect("Servlet_Veterinario?enlace=menu");
            }
        }
    } else {
        response.sendRedirect("Servlet_Menu?enlace=login");
    }
%>