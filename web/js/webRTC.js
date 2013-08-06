
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
    $('#video-section h1').slideUp('400');
    setTimeout(function() {
        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;
        $('#text-msg , #cap,#goto').css('display', 'none');
        $('#wrapper').fadeIn('300');
        $('#text-msg').css('display', 'none');
        $('#cap').css('display', 'block');
        $('#start').fadeOut('900');
        $('.slidesui').hide();

    }, 200);

    $('#show').fadeOut('600');
    $('#re , #goto').fadeOut('600');
}

function noStream(e) {
    var msg = 'Camera has stoped or click agian access to use camera';
    if (e.code === 1) {
        msg = 'User denied access to use camera.';
    }
    document.getElementById('error').textContent = msg;
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

