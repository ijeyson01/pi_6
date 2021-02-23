$(document).ready(function(){
   $(".modal").css({'display':'none'});    
   $(".ul_submenu li:nth-child(4)").click(function(){
       $(".modal").css({'display':'block'}); 
       $(".modal").css({'display':'flex'}); 
   });
   
   $(".btn_canc").click(function(){
       $(".modal").css({'display':'none'});        
   });
   
});