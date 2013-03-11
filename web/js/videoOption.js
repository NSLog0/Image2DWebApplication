$(document).ready(function(){
    $("#stop-btn ").hide();
    
    $("#video-area").hover(function(){
        $("#stop-btn").fadeIn(180);
    }, function(){
        $("#stop-btn").fadeOut(180)
    });
    
    $('i').hover(function(){
      
        $(this).removeClass("icon-2x");
        $(this).addClass("icon-3x"); 
        $(this).removeAttr("id");
        $(this).attr("id", "cap2");
        
    },function(){
        $(this).removeClass("icon-3x");
        $(this).addClass("icon-2x"); 
        $(this).removeAttr("id");
        $(this).attr("id", "cap");
    });
    
 
    
    event.preventDefault();
});
 
    
