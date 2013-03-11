    
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
        document.getElementById('text-msg').hidden = true;
        document.getElementById('wrapper').hidden = false;
        document.getElementById('cap').hidden = false;
        document.getElementById('goto').hidden = false;
        document.getElementById('start').hidden = true;

    }, 800);
}

function noStream(e) {
    var msg = 'Camera has stoped or click agian access to use camera';
    if (e.code == 1) {
        msg = 'User denied access to use camera.';
    }
    document.getElementById('error').textContent = msg;
}

function reload(){
    onStart();
    close();
}

function close(){
                    
    $('.bg , .lightbox').css('display','none');
}

function capture() {

    var photo = document.getElementById('photo'), context = photo.getContext('2d');
    photo.width = video.clientWidth;
    photo.height = video.clientHeight;
    context.drawImage(video, 0, 0, photo.width, photo.height);
    var img = document.createElement('img');
    img.src = canvas.toDataURL('image/png');
    gallery.appendChild(img);
    //window.open(img.src, '_blank');
    onStop();
    $(document).ready(function(){
        $('.bg').animate({
            "opacity":"0.9"
        },300, "linear");
        $('div#main-photo').each(function() {
            var $a1 = $(this);
            var src = $a1.find('img').attr('src');
            $('.bg').fadeIn(600)
            $('div.bg img#loadingImage').show();
            $('div.lightbox img').attr('src',src);
            $('.lightbox').delay(2000).fadeIn(600);
        });
       
        $('.close').click(function(){
                   
            close();
        });
    });
            
  
    
    gallery.removeChild(img);
   
}

function onStop() {
    video.src = " ";
    document.getElementById('text-msg').hidden = false;
    document.getElementById('wrapper').hidden = true;
    document.getElementById("start").hidden = false;

}

function onStart() {
    
    if (!navigator.getUserMedia) {
        document.getElementById('error').innerHTML = 'Sorry. <code>navigator.getUserMedia()</code> is not available.';
        return;
    } else {

        navigator.getUserMedia({
            video : true
        }, gotStream, noStream);
    }

}
