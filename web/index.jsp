<%-- 
    Document   : index
    Created on : 18/01/2021, 22:24:06
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <link href="css/cssLogin.css" rel="stylesheet" type="text/css"/>
        
        <script src="js/J_login.js" type="text/javascript"></script>
        <title>Login | Usuarios</title>
    </head>
    <body>

        <div class="Div_Principal">            
            <div class="Sec_log_info">
                <img src="Imagenes/Concepto_HM.png" alt="Logo" class="imgLogo"/>
                <div class="frmLogin">

                    <table>
                        <th colspan="2"><h1>Inicio de sesión</h1></th>
                        <tr><td></td><td></td></tr>
                        <tr><td alt="Etiqueta de usuario" >Usuario:</td><td><input type="text" alt="Nombre de usuario" id="txtCorreo"></td></tr>
                        <tr><td>Contraseña:</td><td><input type="password" alt="Contrasenia del usuario" id="txtContrasenia"></td></tr>                    
                        <tr><td></td><td></td></tr>
                        <tr><td></td><td><input type="button" alt="Boton inicio de sesión" class="btnAccion" id="btnIniciarSesion" value="Iniciar sesión"/><input type="button" class="btnAccion" value="Limpiar"></td></tr>
                    </table>
                    <br>
                    <p>¿No tienes cuenta? </p>
                    <a href="./Pestañas/registroContacto.jsp"><p>Registrate</p></a>
                </div>
               
            </div>
             
        </div>
        <div class="infoLogin">
                    <h1>Los beneficios de los dispositivos wearables </h1>
                    <ul>
                        <li>Acceso a datos en tiempo real.</li>
                        <li>Capacidad para colaborar, compartir y recuperar información de forma instantánea.</li>
                        <li>Permiten recopilar y enviar información visual sobre el entorno de trabajo.</li>
                        <li>Dejan libres las manos para realizar las tareas cotidianas del trabajo.</li>
                    </ul>
                </div>
    </body>
</html>
