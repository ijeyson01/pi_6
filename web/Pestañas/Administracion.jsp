<%-- 
    Document   : Administracion
    Created on : 12/02/2021, 15:53:42
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/cssPrincipal.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.min.js" type="text/javascript"></script>
        <script src="../js/Slider.js" type="text/javascript"></script>
        <title>Health Monitor+ | Administración</title>
    </head>
    <body>
   <div id="sidemenu" class="menu-expanded">
            <header id="header">
                <div id="titulo"><span>Health Monitor+  </span></div>
                <div id="div_cont_menu">
                    <div class="div_btn_ham"></div>
                    <div class="div_btn_ham"></div>
                    <div class="div_btn_ham"></div>
                </div>
            </header>

            <div class="div_perfil">
                <div class="div_foto"><span>DV</span></div>
                <div class="div_usuario"><span><a href="Ajustes.jsp">Daniel Vélez</a></span></div>
            </div>


            <div id="menu_items">
                <div class="items">
                    <a href="#">
                        <div class="div_img"><img src="../Imagenes/condicion.png" alt="Condición"></div>
                        <div class="div_nombre_opcion"><span>Condición del paciente</span></div>                                                                        
                    </a>

                    <a href="#">
                        <div class="div_img"><img src="../Imagenes/datos.png" alt="Monitoreo"></div>
                        <div class="div_nombre_opcion"><span>Monitoreo</span></div>                                                                        
                    </a>

                    <a href="#">
                        <div class="div_img"><img src="../Imagenes/recordatorios.png" alt="Recordatorios"></div>
                        <div class="div_nombre_opcion"><span>Recordatorios</span></div>                                                                        
                    </a>                                                                               
                </div>                                

                <div class="items separator">                    
                </div>

                <div class="items">
                    <a href="#">
                        <div class="div_img"><img src="../Imagenes/pacientes.png" alt="Pacientes"></div>
                        <div class="div_nombre_opcion"><span>Mis pacientes</span></div>                                                                        
                    </a>

                    <a href="#">
                        <div class="div_img"><img src="../Imagenes/agregar.png" alt="Registrar"></div>
                        <div class="div_nombre_opcion"><span>Registrar</span></div>                                                                        
                    </a>                                                                                                                        
                </div>

                <div class="items separator">                    
                </div>

                <div class="items">
                    <a href="#">
                        <div class="div_img"><img src="../Imagenes/m_principal.png" alt="Menú Principal"></div>
                        <div class="div_nombre_opcion"><span>Menú principal</span></div>                                                                        
                    </a>
                    <a href="#">
                        <div class="div_img"><img src="../Imagenes/c_sesion.png" alt="Cerrar Sesión"></div>
                        <div class="div_nombre_opcion"><span>Cerrar sesión</span></div>                                                                        
                    </a>                                                                                                                                           
                </div>                                                
            </div>                                        
        </div>
        <div class="contenedorMaster">
            <div class="zonaLogo">
                <img src="../Imagenes/Concepto_HM.png" alt="Logo" class="imgLogo"/>
                <div class="sec_info_sup">
                    <h1 style="">Administración</h1>
                </div>
                
            </div>
           <br>

               <div class="sec_info_sup_admin">
                    <div class="auxInfo">
                    <div class="tituloInfo">
                        <h3>Informaci&oacute;n General</h3>
                    </div>
                    <div class="sub_sec_info">
                        <div>
                        <div class="btnInfo1_2">
                            <img src="../Imagenes/icons8_Nurse_Call_104px.png" alt=""/>
                             <div class="info_btninfo">
                            <h3>Asistentes:  </h3>
                            <br/>
                            <h1>8</h1>
                            </div>
                        </div>
                            
                            <div class="Sec_botones_Admin"><input class="btnGestion" type="button" value="Editar" /><input class="btnReporte" type="button" value="Reportes"/></div>
                        </div>
                        <div>
                        <div class="btnInfo1_2">
                            <img src="../Imagenes/icons8_Therapy_104px.png" alt=""/>
                             <div class="info_btninfo">
                            <h3>Pacientes:  </h3>
                            <br/>
                            <h1>8</h1>
                            </div>
                        </div>
                            <div class="Sec_botones_Admin"><input class="btnGestion" type="button" value="Editar" /><input class="btnReporte" type="button" value="Reportes"/></div>
                        </div>
                        <div>
                        <div class="btnInfo1_2">
                            <img src="../Imagenes/icons8_Businessman_104px.png" alt=""/>
                            <div class="info_btninfo">
                            <h3>Administradores:  </h3>
                            <br/>
                            <h1>8</h1>
                            </div>
                        </div>
                            <div class="Sec_botones_Admin"><input class="btnGestion" type="button" value="Editar" /><input class="btnReporte" type="button" value="Reportes"/></div>
                        </div>
                    </div>
                    </div>
                </div>


            
            



        </div>
    </body>
    
</html>
