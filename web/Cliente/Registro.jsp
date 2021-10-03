<%-- 
    Document   : Registro
    Created on : 24/09/2021, 12:21:28 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro cliente</title>
        <link href="../Utiles/Css/estilosRegistro.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
            <table id="tablap">
                <tr>
                    <td id="imagen">
                        <img src="../Utiles/Images/imagen_registro1.png" alt=""/>
                    </td>
                    <td id="cliente">
                        <h1 align="center">VETERINARIA</h1>
                        <br>
                        <hr>
                        <div id="registro" align="center">
                            <form id="formulario">
                                <table id="formulario">
                                    <tr>
                                        <td colspan="2" align="center">
                                            <img src="../Utiles/Images/usuario2.png" alt=""/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Nombre</td>
                                        <td><input type="text" name="Nombre" id="Nombre"></td>
                                    </tr>

                                    <tr>
                                        <td>Apellido Paterno</td>
                                        <td><input type="text" name="ApellidoP" id="ApellidoP"></td>
                                    </tr>

                                    <tr>
                                        <td>Apellido Materno</td>
                                        <td><input type="text" name="ApellidoM" id="ApellidoM"></td>
                                    </tr>

                                    <tr>
                                        <td>Usuario</td>
                                        <td><input type="text" name="Usuario" id="Usuario"></td>
                                    </tr>

                                    <tr>
                                        <td>Contraseña</td>
                                        <td><input type="password" name="Contraseña" id="Contraseña"></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2" align="center" id="controles">
                                            <input type="submit" name="Registrarse" id="Registrarse" value="Registrarse">
                                            <input type="reset" name="Cancelar" id="Cancelar" value="Cancelar">
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
