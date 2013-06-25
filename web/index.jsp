<%-- 
    Document   : index
    Created on : Jan 18, 2013, 10:23:02 PM
    Author     : pratchaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="http://localhost:8084/Image2DWebApplication/">
        <link rel="stylesheet" type="text/css" href="css/core.css">
        <link rel="stylesheet" type="text/css" href="css/lightbox.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/sliderbar.css">
        <link href='http://fonts.googleapis.com/css?family=Faster+One|Montserrat|Noticia+Text' rel='stylesheet' type='text/css'>
        <script src="js/jquery-2.0.0.min.js"></script>
        <script src="js/main.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> 
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script> 


        <title>Quality Analytics | Rice</title>
    </head>

    <body>
        <jsp:include page="includes/component/header.jsp"/>



        <div id="wrap-outer"><!-- Wraper content -->
            <jsp:include page="includes/component/videosection.jsp"/>
           
        </div><!-- end Wraper Content -->
        <canvas id="photo"></canvas>
            <jsp:include page="includes/component/lightbox.jsp"/>

        <jsp:include page="includes/component/footer.jsp"/>

        <!-- import file -->
        <script src="js/videoOption.js"></script>
        <script src="js/webRTC.js"></script>
        <script src="js/_ajax_post.js"></script>
        <script src="js/GridLine.js"></script>

        <script>
            $(".slider").slider({
                animate: true,
                range: "min",
                value: 190,
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
                }

            });



            $(".slider2").slider({
                animate: true,
                range: "min",
                value: 3,
                min: 0,
                max: 100,
                step: 1,
                //this gets a live reading of the value and prints it on the page
                slide: function(event, ui) {
                    $("#slider-result2").html(ui.value);
                },
                //this updates the hidden form field so we can submit the data using a form
                change: function(event, ui) {
                    $('#hidden2').attr('value', ui.value);
                }

            });

            $(".slider3").slider({
                animate: true,
                range: "min",
                value: 0.5,
                min: 0.0,
                max: 100.0,
                step: 0.5,
                //this gets a live reading of the value and prints it on the page
                slide: function(event, ui) {
                    $("#slider-result3").html(ui.value);
                },
                //this updates the hidden form field so we can submit the data using a form
                change: function(event, ui) {
                    $('#hidden3').attr('value', ui.value);
                }

            });


        </script>
        <!-- end import file -->
    </body>
</html>