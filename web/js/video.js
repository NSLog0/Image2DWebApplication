$(document).ready(function(){
    $("#stop-btn ").hide();
    
    $("#video-area").hover(function(){
        $("#stop-btn").css('opacity','0.4');
        $("#stop-btn").fadeIn('180');
    }, function(){
        $("#stop-btn").fadeOut('180');
    });
    
    
    event.preventDefault();
});
 
    
