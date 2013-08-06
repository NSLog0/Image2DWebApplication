
$("#stop-btn ").hide();
$("#video-area").hover(function() {
    $("#stop-btn").css('opacity', '0.4');
    $("#stop-btn").fadeIn('180');
}, function() {
    $("#stop-btn").fadeOut('180');
});

normal = "";
thres = "";

$('.css-label').click(function() {
    if ($('#demo_box_2').is(':checked')) {
        $("#show").attr("src", thres);
    } else {
        $("#show").attr("src", normal);
    }
});


function capture() {

    var photo = document.getElementById('photo'), context = photo.getContext('2d');
    photo.width = video.clientWidth;
    photo.height = video.clientHeight;
    context.drawImage(video, 0, 0, photo.width, photo.height);

    var src = canvas.toDataURL('image/jpeg');
    $("#show").attr("src", src);
    init();
    $('#wrapper').fadeToggle('50');
    // insertAfter(document.getElementById('wrapper'), img);
    setTimeout(function() {
        $('#show').fadeIn('500');
        $('.slidesui').fadeIn('600');
        video.src = " ";
        $('#re, #goto').slideDown('500');
    }, 1200);
    $('#video-section h1').fadeOut('500');
}


function close() {

    $('.bg , .lightbox').css('display', 'none');
}

function onStop() {

    $('#wrapper').fadeOut('700');
    setTimeout(function() {
        $('#start').css('margin', '105px 0 0 0');
        $('#start').fadeIn('200');
        $('#video-section h1').slideUp('400');
        $('#text-msg').fadeIn('600');
        $('.slidesui').hide();
    }, 376);

    video.src = " ";

}



function pageScroll() {
    window.scrollBy(0, 50);

}




function init() {
    var txt = $('#show').attr('src');
    var i = [{"image": txt}];
    var base64 = i[0].image;
    base64 = base64.replace(/^.*base64,/i, "");
    i[0].image = base64;
    $.ajax({
        type: 'PUT',
        contentType: 'application/json',
        url: "/processor/resources/preprocess/api/init",
        dataType: "json",
        data: JSON.stringify({"Image": i}),
        success: function(data) {
            var img = data[0].image1;
            var _img = data[0].image2;
            $("#show").attr("src", img);
            normal = img;
            thres = _img;
            console.log("already put!");
        },
        error: function(data, status) {
            console.log("puting error");
        }
    });

}



