function edit(data, data1, data2) {
    var i = [{"thres": data}, {"smooth": data1}, {"sharp": data2}];
    $.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: "/processor/resources/preprocess/api/edit",
        dataType: "json",
        data: JSON.stringify({"Data": i}),
        success: function(data) {
            var img = data[0].image1;
            var _img = data[0].image2;

            if ($('#demo_box_2').is(':checked')) {
                $("#show").attr("src", img);
            } else {
                $("#show").attr("src", _img);
            }
            
            $.getScript('js/video.js', function()
            {
                normal = img;
                thres = _img;
            });
        },
        error: function(data, status) {
            console.log("thres error");
        }
    });
}


$(".slider").slider({
    animate: true,
    range: "min",
    value: 127,
    min: 0,
    max: 255,
    step: 1,
    //this gets a live reading of the value and prints it on the page
    slide: function(event, ui) {
        $("#slider-result").html(ui.value);

    },
    //this updates the hidden form field so we can submit the data using a form
    change: function(event, ui) {
        $('#hidden').attr('value', ui.value);
        var data = $('#hidden').val();
        var data1 = $('#hidden2').val();
        var data2 = $('#hidden3').val();
        edit(data, data1, data2);

    }
});


$(".slider2").slider({
    animate: true,
    range: "min",
    value: 3,
    min: 1,
    max: 27,
    step: 2,
    //this gets a live reading of the value and prints it on the page
    slide: function(event, ui) {
        $("#slider-result2").html(ui.value);
    },
    //this updates the hidden form field so we can submit the data using a form
    change: function(event, ui) {
        $('#hidden2').attr('value', ui.value);
        var data = $('#hidden').val();
        var data1 = $('#hidden2').val();
        var data2 = $('#hidden3').val();
        edit(data, data1, data2);
    }

});

$(".slider3").slider({
    animate: true,
    range: "min",
    value: 0.5,
    min: 0.0,
    max: 20.5,
    step: 0.5,
    //this gets a live reading of the value and prints it on the page
    slide: function(event, ui) {
        $("#slider-result3").html(ui.value);
    },
    //this updates the hidden form field so we can submit the data using a form
    change: function(event, ui) {
        $('#hidden3').attr('value', ui.value);
        var data = $('#hidden').val();
        var data1 = $('#hidden2').val();
        var data2 = $('#hidden3').val();
        edit(data, data1, data2);
    }

});







