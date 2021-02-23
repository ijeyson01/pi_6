$(document).on('click', '#btnRegistrar', function ()
{
    var nombreR = $('#txtNombreReg').val();
    var apellidoR = $('#txtApellidoReg').val();
    var generoR = $('#txtGeneroReg').val();
    var fechaNacR = $('#txtFechaReg').val();
    var correoR = $('#txtCorreoReg').val();
    var passInR1 = $('#txtContraseniaReg').val();
    var passInR2 = $('#txtContraseniaVerfReg').val();
    var genDef = '';
    if (generoR === 'Masculino') {
        genDef = 'M';
    } else
    {
        genDef = 'F';
    }
    ;
    var datos =
            {
                NomR: nombreR,
                ApeR: apellidoR,
                GenR: genDef,
                FecR: fechaNacR,
                CorR: correoR,
                PssR: passInR1
            };
    if (passInR1 === passInR2 && generoR!=='--Seleccione su genero--') {
        $.ajax
                ({
                    url: '../srvltRegistroUser',
                    method: 'POST',
                    data: datos,
                    success: function ()
                    {
                        alert('Registro exitoso, revise su correo y verifique!');
                        location.href('./index.jsp');
                    }
                });
    } else
    {
        if (generoR =='--Seleccione su genero--') {
            alert('Seleccione su genero');
        }else{
        alert('Las contraseñas no coinciden!');}

    }
});