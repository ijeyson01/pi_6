$(document).ready(function () {
    $.post('../SPaciente', {opcion: "1"}, function (responseJson) {
        paciente = JSON.parse(responseJson);
        var miSelect = $("#pacientes").val();
        $("#pacientes").find('option').remove().end();
        for (var j = 0; j < paciente.length; j++)
        {
            var miOption3 = document.createElement("option");
            miOption3.setAttribute("label", paciente[j].nombres);
            var op1 = document.getElementById("pacientes");
            op1.appendChild(miOption3);
        }
    });


    $("#pacientes").change(function () {
        var mi_paciente = $("option:selected, #paciente").attr('label');              
        $.post('../SPaciente', {v_paciente: mi_paciente, opcion: "2"}, function (responseJson) {            
            paciente = JSON.parse(responseJson);  
            console.log(paciente);
            for (var j = 0; j < paciente.length; j++)
            {
                $("#lblCondicionPaciente").html(paciente[j].descripCondicion);
                $("#lblTipoCondicion").html(paciente[j].descripTipoCondicion);
                $("#lblEdadPaciente").html(paciente[j].edad);
            }
        });
    });
});