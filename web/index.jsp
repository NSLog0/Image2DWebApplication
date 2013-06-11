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
        <link href='http://fonts.googleapis.com/css?family=Faster+One|Montserrat|Noticia+Text' rel='stylesheet' type='text/css'>
        <script src="js/jquery-1.9.0.min.js"></script>
        <title>Quality Analytics | Rice</title>
    </head>

    <body>
        <header> <!-- Header -->
            <div id="outside">
                <div id="inside" class="inside">
                </div>
            </div>           
            <div id="header">
                <div>
                    <a href="index.html" id="logo"><img src="images/logo.png" alt="logo"></a>
                    <ul>
                        <li class="selected">
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="subdivisions.html">About</a>
                        </li>
                        <li>
                            <a href="blog.html">Contact</a>
                        </li>
                        <li>
                            <a href="about.html">Help</a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- end Navigation -->
        </header>
        <!-- end Logo -->

        <div id="wrap-outer"><!-- Wraper content -->
            <article id="video-section"> <!-- video sec -->
                <h1>Rice Quality Analytics with Images Processing</h1>
                <section id="wrapper" hidden=""> <!-- camara content -->
                    <div id="video-area"> <!-- videdo wrapper -->
                        <span>Ready</span> <!-- Status -->
                        <div id="stop-wrapper">
                            <input type="button" id="stop-btn" onclick="onStop();" value="" hidden=""/> <!-- stop -->
                        </div>
                        <div id="wap">
                            <video id="screen"autoplay="" src=" "></video> <!-- monotro -->
                        </div>

                    </div>
                    <input type="button" id="cap" onclick="capture();" value="" /> 

                </section> <!-- end camara content -->
                <input type="button" id="goto" onclick="sendto();" value="Analysis" /> 
                <input type="button" id="re" onclick="onStart(this);"  value="Refresh" />
                <p id="btn"> <!-- btn sec -->
                    <input type="button" id="start" onclick="onStart(this);" hidden="" />
                </p>

                <div id="text-msg"> <!-- msg box -->
                    <p id="error">Click this "Play" to allow access local camera</p>
                </div>

                <!-- photo section-->
                <div id="main-photo" hidden=""></div>
                <div class="bg"> <!-- light box -->
                    <img src="images/loading.gif" id="loadingImage"/>
                </div>
                <div class="lightbox">
                    <a class="close">x</a>
                    <p>press x to close</p>
                    <img />
                </div>
                <!-- end light box -->
            </article> <!-- end video sec -->
        </div><!-- end Wraper Content -->
        <canvas id="photo"></canvas>

        <script src="js/videoOption.js"></script>
        <script src="js/webRTC.js"></script>

        <script>
                                /*
                                 var url = "http://localhost:8084/REStfulService/resources/json/service/get"; 
                                 $(document).ready(function(){
                                 //attach a jQuery live event to the button
                                 $('#goto').click(function(){
                                 $.getJSON(url, function(data) {
                                 //alert(data); //uncomment this for debug
                                 //alert (data.item1+" "+data.item2+" "+data.item3); //further debug
                                 $('#showdata').html("<p>Broken: "+data[0].broken+" Unbroken: "+data[0].unbroken+" Count: "+data[0].count+"Image <img src=\""+data[0].image2base64+"\""+"/></p>");
                                 });
                                 });
                                 });
                                 */
                                function sendto() {
                                    var url = 'http://localhost:8084/Image2DWebApplication/requesthandle';
                                    var imageData = $('query').prop('src');
                                    var param = {image: imageData};
                                    $.post(url, param, function(data) {

                                    });
                                }
        </script>

        <footer></footer>
    </body>
</html>