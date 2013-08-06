$("#goto").click(function() {
    $('#lightbox').fadeIn('900');

    //var txt = $('#show').attr('src');
    var i = [{"getstat": "true"}];
    //var base64 = i[0].image;
    //base64 = base64.replace(/^.*base64,/i, "");
    //i[0].image = base64;
    $.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: "/processor/resources/service/api",
        dataType: "json",
        data: JSON.stringify({"Stat": i}),
        success: function(data, status, xhr) {
            console.log('json: ' + status);
            var img = data[0].before;
            var _img = data[0].after;

            $.getScript('js/video.js', function()
            {
                _img = normal;
                thres = "";
                normal = "";
            });

            if (status !== 'success') {

            } else {
                $('#show').fadeOut('500');
                $('#show').remove();
                $('.slidesui').fadeOut('500');
                $('#start').css('margin', '105px 0 0 0');
                $('#start').fadeIn('200');
                $('#re , #goto').fadeOut('600');
                $('#text-msg').fadeIn('600');
                //insert 
                var rows = '<td>' + data[0].oftotal + '</td>'
                        + '<td>' + data[0].standard + '</td>'
                        + '<td>' + data[0].broken + '</td>'
                        + '<td>' + data[0].unbrok + '</td>'
                        + '<td>' + data[0].avgloss +'%'+ '</td>'
                        + '<td>' + data[0].avggood +'%'+ '</td>';

                $('#output >  tbody > tr').append(rows);

                $('#lightbox #content #tbl-result #result a#set1').attr("href", img);
                $('#lightbox #content #tbl-result #result .i').attr("src", img);

                $('#lightbox #content #tbl-result #result a#set2').attr("href", _img);
                $('#lightbox #content #tbl-result #result .j').attr("src", _img);
                setTimeout(function() {
                    $('#tbl-result').slideDown('slow');
                    $('#loading').hide();
                }, 3000);
                //insert lightbox HTML into page
                // $('#content').append(lightbox);

            }

            $('#close').click(function() { //must use live, as the lightbox element is inserted into the DOM
                $('#lightbox').hide();
                $('#output >  tbody > tr > td').remove();
            });
            console.log(status);
        },
        error: function(data, status) {
            alert("send data error:" + status);
            console.log(data);
        }
    });

});

