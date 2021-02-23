<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/Ajustes.css">
        <script src="../js/jquery.min.js"></script>
        <title>Ajustes</title>
    </head>
    <body>
        <div id="sidemenu" class="menu-expanded">
            <header id="header">
                <div id="titulo"><span>Nombre de la APP</span></div>
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
                    <a href="HojaPaciente.jsp">
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
                    <a href="MisPacientes.jsp">
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
                    <a href="../dashboard.jsp">
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
        <div id="div_main_conten">
        </div>
        
         <section class="sec_general_aj">
            <div class="div_h1"><h1></h1></div>
            <div class="div_cont_contraste">
                <fieldset>
                    <legend>Contraste</legend>
                    <div class="div_cont_sel">
                        <h3></h3>
                        <select>
                            <option>Elija una opción</option>
                            <option value="1">Fondo negro, letras blancas</option>
                            <option value="2">Fondo blanco, letras negras</option>
                            <option value="3">Fondo azul, letras blancas</option>
                            <option value="4">Fondo amarillo letras negras</option>
                        </select>                                                                        
                    </div>
                </fieldset>
                <div class="div_ejm_contr"><div><h3></h3></div></div>
            </div>
            
            <div class="div_cont_texto">
                <fieldset>
                    <legend>Texto</legend>
                    <div class="div_cont_tmnio_txt">
                        <h3></h3>
                        <select>
                            <option>Elija una opción</option>
                            <option value="1">Normal</option>
                            <option value="2">Grande</option>
                            <option value="3">Muy grande</option>
                        </select>
                    </div>
                    
                    <div class="div_cont_espacio_letras">
                        <h3></h3>
                        <select>
                            <option>Elija una opción</option>
                            <option value="1">Normal</option>
                            <option value="2">Grande</option>
                            <option value="3">Muy grande</option>
                        </select>
                    </div>
                    
                    <div class="div_cont_fuente">
                        <h3></h3>
                        <select>
                            <option>Elija una opción</option>
                            <option value="1">Predeterminada (Work Sans)</option>                            
                            <option value="2">Arial</option>
                            <option value="3">Helvética</option>
                            <option value="4">Times New Roman</option>                            
                        </select>
                    </div>                    
                </fieldset>
                <div class="div_ejm_text"><div><h3></h3></div></div>
            </div>   
            <div class="div_cont_apl_can">
                <div class="div_cont_btns">                    
                    <button class="btn_cancelar">Cancelar</button>
                    <button class="btn_aceptar">Aceptar</button>
                </div>
            </div>
        </section>
        
    </body>
    <script src="../js/Barra.js"></script>
    <script src="../js/CambiosAccesibilidad.js"></script>
</html>
