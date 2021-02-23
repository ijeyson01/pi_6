<%-- 
    Document   : registroContacto
    Created on : 11/02/2021, 14:20:14
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/cssLogin.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.min.js" type="text/javascript"></script>
        <script src="../js/J_Registro.js" type="text/javascript"></script>
        <title>Health Monitor+ | Registro</title>
    </head>
    <body>
        <div class="Div_Principal">
            <div class="Sec_log_info">
                <img src="../Imagenes/Concepto_HM.png" alt="Logo" class="imgLogo"/>
                <div class="frmLogin">
                    <table>
                         <th colspan="2"><h1>Registro de usuario</h1></th>
                        <tr><td>Nombres:</td><td><input type="text" id="txtNombreReg" required=""/></td></tr>
                            <tr><td>Apellidos:</td><td><input type="text" id="txtApellidoReg" required=""/></td></tr>
                            <tr><td>Genero:</td><td><select id="txtGeneroReg" required="">
                                                <option>--Seleccione su genero--</option>
                                                <option>Masculino</option>
                                                <option>Femenino</option>
                                </select></td></tr>
                                    <tr><td>Fecha de nacimiento:</td><td><input type="date" id="txtFechaReg" required=""/></td></tr>
                        <tr><td>Correo:</td><td><input type="email" id="txtCorreoReg" required=""/></td></tr>
                        <tr><td>Contraseña:</td><td><input type="password" id="txtContraseniaReg" required=""/> </td></tr>
                        <tr><td>Verifique Contraseña:</td><td><input type="password" id="txtContraseniaVerfReg" required=""/></td></tr>
                        <tr><td></td><td><input type="button" id="btnRegistrar" value="Registrar"><input type="button" id="btnAtras" value="Atras"></td></tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
