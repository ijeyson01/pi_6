$(document).ready(function () {
    $(".div_cont_sel select").change(function(){
       var opc = $(".div_cont_sel select").val();
        if(opc === "1")
        {
            $(".div_ejm_contr div").css({"backgroundColor":"#000000"});
            $(".div_ejm_contr div h3").css({"color":"yellow"});
        }else if (opc === "2")
        {
            $(".div_ejm_contr div").css({"backgroundColor":"transparent"});
            $(".div_ejm_contr div h3").css({"color":"#000000"});
        }
    });
    
    
    $(".div_cont_tmnio_txt select").change(function(){
       var opc = $(".div_cont_tmnio_txt select").val();
        if(opc === "1")
        {
            $(".div_ejm_text div h3").css({"fontSize":"1.17em"});
        }else if (opc === "2")
        {
           $(".div_ejm_text div h3").css({"fontSize":"1.6em"});
        }else if (opc === "3")
        {
            $(".div_ejm_text div h3").css({"fontSize":"2.1em"});
        }
    });
    
    
    $(".div_cont_espacio_letras select").change(function(){
       var opc = $(".div_cont_espacio_letras select").val();
        if(opc === "1")
        {
            $(".div_ejm_text div h3").css({"letterSpacing":"0"});
        }else if (opc === "2")
        {
           $(".div_ejm_text div h3").css({"letterSpacing":"3px"});
        }else if (opc === "3")
        {
            $(".div_ejm_text div h3").css({"letterSpacing":"6px"});
        }
    });
    
    
    $(".div_cont_fuente select").change(function(){
       var opc = $(".div_cont_fuente select").val();
        if(opc === "1")
        {
            $(".div_ejm_text div h3").css({"fontFamily":"'Work Sans', sans-serif"});
        }else if (opc === "2")
        {
           $(".div_ejm_text div h3").css({"fontFamily":"'Arial', sans-serif"});
        }else if (opc === "3")
        {
            $(".div_ejm_text div h3").css({"fontFamily":"'Helvetica', sans-serif"});
        }else if (opc === "4")
        {
            $(".div_ejm_text div h3").css({"fontFamily":"'Times New Roman', sans-serif"});
        }
    });  
    
    
    $(".btn_aceptar").click(function (){
        var opc_cont = $(".div_cont_sel select").val();
        var opc_tam_txt = $(".div_cont_tmnio_txt select").val();
        var opc_espcd_letras = $(".div_cont_espacio_letras select").val();
        var opc_tipo_fuente = $(".div_cont_fuente select").val();
        
        var cntrs_fondo;
        var cntrs_color;
        var tam_text;
        var espcd_letras;
        var fuente;
        
        if(opc_cont === "1")
        {
            cntrs_fondo = "#000000";
            cntrs_color = "yellow";
        }else if(opc_cont === "2")
        {
            cntrs_fondo = "transparent";
            cntrs_color = "#000000";
        }
        
        if(opc_tam_txt === "1")
        {
            tam_text = "1.17em";
        }else if(opc_tam_txt === "2"){
            tam_text = "1.6em";
        }else if(opc_tam_txt === "3"){
            tam_text = "2.1em";
        }    
        
        if(opc_espcd_letras === "1")
        {            
            espcd_letras = "0px";
        }else if(opc_espcd_letras === "2"){
            espcd_letras = "3px";            
        }else if(opc_espcd_letras === "3"){
            espcd_letras = "6px";
        }
        
        if(opc_tipo_fuente === "1")
        {
            fuente = "Work Sans";
        }else if (opc_tipo_fuente === "2"){
            fuente = "Arial";
        }else if (opc_tipo_fuente === "3"){
            fuente = "Helvetica";
        }else if (opc_tipo_fuente === "4"){
            fuente = "Times New Roman";
        }               
        
        
        $.post('../AgregarEstilos', {opcion: "1", contr_fondo: cntrs_fondo, contr_color: cntrs_color, texto: tam_text, espaciado: espcd_letras, fuente: fuente}, function (responseJson) {
            alert("Datos ingresados");
        });
        
        
    });    
});