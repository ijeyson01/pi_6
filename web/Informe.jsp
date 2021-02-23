<%-- 
    Document   : Informe
    Created on : 11/02/2021, 11:06:09
    Author     : USER
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %>
<%@page import="conexiones.conexion"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            Connection con = conexion.AbrirConexion();
            File reportFile = new File(application.getRealPath("Pacientes.jasper"));
            Map parameters = new HashMap(); 
            parameters.put("Nombre_parametro", "Valor_Parametro");
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, con);
            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length); 
            ServletOutputStream ouputStream = response.getOutputStream(); 
            ouputStream.write(bytes, 0, bytes.length);
            ouputStream.flush();
            ouputStream.close();
        %>
    </body>
</html>
