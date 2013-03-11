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
        <base href="http://localhost:8080/Image2DWebApplication/">
        <link rel="stylesheet" type="text/css" href="css/core.css">
        <link rel="stylesheet" type="text/css" href="css/lightbox.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link href='http://fonts.googleapis.com/css?family=Faster+One|Montserrat|Noticia+Text' rel='stylesheet' type='text/css'>
        <script src="js/jquery-1.9.0.min.js"></script>
        <title>Quality Analytics | Rice</title>
    </head>

    <body>
        <header> <!-- Header -->
            <div id="logo">
                <p>Quality Analytics</p>
            </div><!-- end Logo -->
            <div id="navigation">
                <ul>
                    <li class="selected"><a href="index.php">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Help</a></li>
                </ul>
            </div> <!-- end Navigation -->
        </header>
        <!-- end Logo -->

        <div id="wrap-outer"><!-- Wraper content -->
            <article id="video-section"> <!-- video sec-->
                <h1>Rice Quality Analytics with Images Processing</h1>
                <section id="wrapper" hidden=""> <!-- camara content -->
                    <div id="video-area"> <!-- videdo wrapper -->
                        <span>Ready</span> <!-- Status -->
                        <div id="stop-wrapper">
                            <input type="button" id="stop-btn" onclick="onStop();" value="" hidden=""/> <!-- stop -->
                        </div>
                        <video id="screen" autoplay="" src=" "></video> <!-- monotro -->
                    </div>
                    <i class="icon-camera icon-2x" id="cap" onclick="capture();"></i>
                </section> <!-- end camara content -->

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
                    <form action="includes/simple.jsp" method="post" enctype="multipart/form-data">
                        <input type="submit" id="goto" onclick="" value="Analysis"/> 
                        <input type="button" id="re" onclick="reload();"  value="Refresh"/>
                    </form>
                </div>
                <!-- end light box -->
            </article> <!-- end video sec -->
        </div><!-- end Wraper Content -->
        <canvas id="photo" style="display: none"></canvas>

        <script src="js/videoOption.js"></script>
        <script src="js/webRTC.js"></script>
        <footer></footer>
    </body>
</html>