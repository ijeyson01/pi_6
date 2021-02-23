<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/MisPacientes.css">
        <script src="../js/jquery.min.js"></script>
        <title>Mis Pacientes</title>
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

        <div class="div_cont_tb_pac">
            <div><h1></h1></div>

            <table cellspacing="0">
                <thead>
                    <tr class="encabezado">
                        <th class="nombres">Nombres</th>
                        <th class="condicion">Condición</th>
                        <th class="ultimo_reg">Último registro</th>
                        <th class="detalles">Detalles</th>
                    </tr>
                </thead>    
                <tbody>                                    
                    <tr>
                        <td>María Susana López Castañeda</td>
                        <td>Discapacidad intelectual</td>
                        <td class="registro">11-11-2020</td>
                        <td class="accionEd">Ver</td>
                    </tr>
                    <tr>
                        <td>Juan Cito Medranda Carbo</td>
                        <td>Discapacidad motora</td>
                        <td class="registro">12-11-2020</td>
                        <td class="accionEd">Ver</td>
                    </tr>
                    <tr>
                        <td>Fabricio Leonel Llorente Zambrano</td>
                        <td>Tercera edad</td>
                        <td class="registro">01-02-2021</td>
                        <td class="accionEd">Ver</td>
                    </tr>            
                </tbody>
            </table>                        
        </div>                

        <div class="modal">  
            <div class="div_cont">
                <div class="div_cont_secciones">
                    <div class="div_cont_personales"><h3></h3></div>                    
                </div>

                <div class="div_cont_d_per">
                    <div class="div_primer_fila">
                        <div class="div_pf_c1">
                            <div class="div_izq"><h5>Paciente:</h5></div>
                            <div class="div_der">María Susana López Castañeda</div>
                        </div>                        
                        <div class="div_pf_c3">
                            <div class="div_izq"><h5>Cédula:</h5></div>
                            <div class="div_der">1234567890</div>
                        </div>
                        <div class="div_pf_c3">
                            <div class="div_izq"><h5>Edad:</h5></div>
                            <div class="div_der">31</div>
                        </div>
                    </div>
                    <div class="div_segunda_fila">                                                
                        <div class="div_sf_c3">
                            <div class="div_izq"><h5>Correo:</h5></div>
                            <div class="div_der">mar89susan@gmail.com</div>
                        </div>
                        <div class="div_sf_c2">
                            <div class="div_izq"><h5>Dirección:</h5></div>
                            <div class="div_der">Quevedo, San Camilo</div>                            
                        </div>
                        <div class="div_sf_c3">
                            <div class="div_izq"><h5>Fecha de registro:</h5></div>
                            <div class="div_der">11-11-2020</div>
                        </div>
                    </div>
                    <div class="div_tecer_fila">                                                
                        <div class="div_tf_c1">
                            <div class="div_izq"><h5>Tipo de condición:</h5></div>
                            <div class="div_der">Discapacidad intelectual</div>
                        </div>
                        <div class="div_tf_c2">
                            <div class="div_izq"><h5>Enfermedad:</h5></div>
                            <div class="div_der">Síndrome de Rett</div>
                        </div>
                    </div>
                </div>

            </div>
        </div>        
    </body>   
    <script src="../js/Barra.js"></script>
    <script src="../js/Modal.js"></script>
</html>
