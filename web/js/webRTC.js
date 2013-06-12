
navigator.getUserMedia = navigator.webkitGetUserMedia || navigator.getUserMedia;
window.URL = window.URL || window.webkitURL;

var app = document.getElementById('wrapper');
var video = document.getElementById('screen');
var canvas = document.getElementById('photo');
var gallery = document.getElementById('main-photo');
document.getElementById('start').hidden = false;

function gotStream(stream) {
    if (window.URL) {
        video.src = window.URL.createObjectURL(stream);
    } else {
        video.src = stream; //-o
        // $('#start , #text-msg').fadeOut('200');
    }

    video.onerror = function(e) {
        stream.stop();
    };

    stream.onended = noStream;



    // Since video.onloadedmetadata isn't firing for getUserMedia video, we have
    // to fake it.
    setTimeout(function() {
        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;
        $('#text-msg , #cap,#goto').css('display', 'none');
        $('#wrapper').fadeIn('300');
        $('#text-msg').css('display', 'none');
        $('#cap').css('display', 'block');
        $('#start').fadeOut('900');

    }, 200);

    $('#show').fadeOut('900');
    $('#re , #goto').fadeOut('100');
}

function noStream(e) {
    var msg = 'Camera has stoped or click agian access to use camera';
    if (e.code === 1) {
        msg = 'User denied access to use camera.';
    }
    document.getElementById('error').textContent = msg;
}


function close() {

    $('.bg , .lightbox').css('display', 'none');
}

function capture() {

    var photo = document.getElementById('photo'), context = photo.getContext('2d');
    photo.width = video.clientWidth;
    photo.height = video.clientHeight;
    context.drawImage(video, 0, 0, photo.width, photo.height);
    var img = document.createElement('img');
    img.src = canvas.toDataURL('image/jpeg');
    img.id = "show";

    $('#wrapper').fadeOut('90');
    insertAfter(document.getElementById('wrapper'), img);
    setTimeout(function() {
        video.src = " ";
        $('#re, #goto').slideDown('500');
    }, 1200);

    $('#video-section h1').fadeOut('200');
    /*
     $(document).ready(function() {
     $('.bg').animate({
     "opacity": "0.9"
     }, 300, "linear");
     $('div#main-photo').each(function() {
     var $a1 = $(this);
     var src = $a1.find('img').attr('src');
     $('.bg').fadeIn(600)
     $('div.bg img#loadingImage').show();
     $('div.lightbox img').attr('src', src);
     $('div.lightbox img').addClass('query');
     $('.lightbox').delay(2000).fadeIn(600);
     });
     
     $('.close').click(function() {
     
     close();
     });
     });
     */



    //  gallery.removeChild(img);

}

function onStop() {

    $('#wrapper').fadeOut('700');
    setTimeout(function() {
        $('#start').css('margin', '105px 0 0 0');
        $('#start').fadeIn('200');
        $('#video-section h1').slideUp('400');
        $('#text-msg').fadeIn('600');
    }, 376);

    video.src = " ";

}

function onStart() {
    if (!navigator.getUserMedia) {
        document.getElementById('error').innerHTML = 'Sorry. <code>navigator.getUserMedia()</code> is not available.';
        return;
    } else {
        navigator.getUserMedia({
            video: true
        }, gotStream, noStream);
    }


}

function insertAfter(referenceNode, newNode) {
    referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
}