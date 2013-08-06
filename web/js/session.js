function createSession() {
    var txt = $('#show').attr('src');
    var i = {"image": txt};
    console.log('add');
    var url = "http://localhost:8084/Image2DWebApplication/requesthandle";
    var posting = $.post(url, i);
    posting.done(function(data) {
        console.log('added image');
    });

}

function restore(res) {

    $('#text-msg , #cap').css('display', 'none');
    $('#text-msg').css('display', 'none');
    $('#start').fadeOut('900');
    $("#show").attr("src", res);
    $.getScript('js/video.js', function()
    {
        init();
    });
    
    setTimeout(function() {
        $('#show').fadeIn('500');
        $('.slidesui').fadeIn('600');
        video.src = " ";

        $('#re, #goto').slideDown('500');
    }, 1200);

    $('#video-section h1').fadeOut('500');

    remove();
}

function remove() {
    $('#restore').slideUp('500');
    setTimeout(function() {
        $('#restore').remove();
    }, 600);

}
setTimeout(function() {
    $('#restore').slideDown(800);

}, 500);

$('#task').click(function() {
    $.getJSON('http://localhost:8084/Image2DWebApplication/requesthandle', function(data) {
        console.log('got image!!');
        var res = data.image;
        restore(res);
    });

});

$('#goto , #ignore').click(function() {
    $.ajax({
        url: 'http://localhost:8084/Image2DWebApplication/requesthandle',
        type: 'DELETE',
        success: function(result) {
            console.log(result);
            remove();
        }
    });
});




