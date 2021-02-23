$(document).on('click', '#btnIniciarSesion', function ()
{
    var correoL = $('#txtCorreo').val();
    var passL = $('#txtContrasenia').val();
    $.ajax({
        url: 'SrvltLogin',
        method: 'POST',
        data: {
            CorreoL: correoL,
            PassL: passL
        },
        success: function(Validador) {
            if (Validador=='0') {
                alert("Datos incorrectos!");
                location.href='#';
            }else
            {
                if (Validador=='1') {
                    alert('Usuario administrador');
                    location.href = '#';
                }else{
                    if (Validador=='3') {
                        location.href = 'dashboard.jsp';
                    }
                }
            }
        }

    });
});
