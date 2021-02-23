<%-- 
    Document   : dashboard
    Created on : 20/01/2021, 18:01:55
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/cssPrincipal.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js"></script>
    </head>
    <body style=" ">     
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
                <div class="div_usuario"><span><a href="#">Daniel Vélez</a></span></div>
            </div>


            <div id="menu_items">
                <div class="items">
                    <a href="#">
                        <div class="div_img"><img src="Imagenes/condicion.png" alt="Condición"></div>
                        <div class="div_nombre_opcion"><span>Condición del paciente</span></div>                                                                        
                    </a>

                    <a href="#">
                        <div class="div_img"><img src="Imagenes/datos.png" alt="Monitoreo"></div>
                        <div class="div_nombre_opcion"><span>Monitoreo</span></div>                                                                        
                    </a>

                    <a href="#">
                        <div class="div_img"><img src="Imagenes/recordatorios.png" alt="Recordatorios"></div>
                        <div class="div_nombre_opcion"><span>Recordatorios</span></div>                                                                        
                    </a>                                                                               
                </div>                                

                <div class="items separator">                    
                </div>

                <div class="items">
                    <a href="#">
                        <div class="div_img"><img src="Imagenes/pacientes.png" alt="Pacientes"></div>
                        <div class="div_nombre_opcion"><span>Mis pacientes</span></div>                                                                        
                    </a>

                    <a href="#">
                        <div class="div_img"><img src="Imagenes/agregar.png" alt="Registrar"></div>
                        <div class="div_nombre_opcion"><span>Registrar</span></div>                                                                        
                    </a>                                                                                                                        
                </div>

                <div class="items separator">                    
                </div>

                <div class="items">
                    <a href="#">
                        <div class="div_img"><img src="Imagenes/m_principal.png" alt="Menú Principal"></div>
                        <div class="div_nombre_opcion"><span>Menú principal</span></div>                                                                        
                    </a>
                    <a href="#">
                        <div class="div_img"><img src="Imagenes/c_sesion.png" alt="Cerrar Sesión"></div>
                        <div class="div_nombre_opcion"><span>Cerrar sesión</span></div>                                                                        
                    </a>                                                                                                                                           
                </div>                                                
            </div>                                        
        </div>
        <div class="contenedorMaster">
            <div class="zonaLogo">
                <img src="Imagenes/Concepto_HM.png" alt="Logo" class="imgLogo"/>

                <div class="sec_info_sup">
                    <h1>Inicio</h1>
                </div>
            </div>

            
            <div class="PanBotonesInfo">
                <div class="auxInfo">
                        <div class="tituloInfo">
                            <h3 style="">Informaci&oacute;n General</h3>
                        </div>
                        <div class="sub_sec_info">
                            <div class="btnInfo1">
                                <img class="imgInfoGeneral" src="Imagenes/icons8_Nurse_Call_104px.png" alt=""/>
                                <h4>Total pacientes: -</h4>
                            </div>
                            <div class="btnInfo1">
                                <img class="imgInfoGeneral" src="Imagenes/icons8_Analyze_104px.png" alt=""/>
                                <h4>Último Registro: - </h4>
                            </div>
                            <div class="btnInfo1">
                                <img class="imgInfoGeneral" src="Imagenes/icons8_Analyze_104px.png" alt=""/>
                                <h4>Total de emergencias: - </h4>
                            </div>
                        </div>
                    </div>
                <div class="btnOpc_Reg">
                    <div>
                        <h3>Registros</h3>
                    </div>
                    <div class="sec_cont_btnInfo">
                        <div class="btnInfo">
                            <img src="Imagenes/icons8_Future_52px.png" alt=""/>
                            <h4>Acontecimientos</h4>
                        </div>
                        <div class="btnInfo">
                            <img src="Imagenes/icons8_AED_52px.png" alt=""/>
                            <h4>Dispositivos</h4>
                        </div>
                    </div>
                </div>
                
            </div>


            <div class="EncabezadoPanRegistros">
                <h2>
                    Pacientes
                </h2>
            </div>
            <br/>
            <div class="PanelRegistros">

                <div class="EncabezadoRegistros">
                    <p id="lblNombre">Paciente</p>
                </div>
                <br>
                <div class="linea"></div>
                <br>
                <div class="detalleRegistro">
                    <div>Edad: - |  Género: -  |  Condición:  - </div> 
                    <br/>
                    <button class="btnRevisar" id="btnRevisar"> Revisar</button>
                </div>
            </div>
            <br/> 



        </div>
    </body>
    <script src="js/Slider.js"></script>
</html>
