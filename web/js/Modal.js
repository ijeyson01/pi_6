$(document).ready(function () {
    $('.modal').css({'display': 'none'});
    $('.accionEd').click(function () {
        $('.modal').css({'display': 'block'});
        $('.modal').css({'display': 'flex'});
    });
    
    $('.modal').click(function(){
        $('.modal').css({'display': 'none'});
    });
    
});