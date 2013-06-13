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
        <script src="js/main.js"></script>
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
                    <a href="index.html" id="logo"><h1>{Rice}Analyze</h1></a>
                    <ul>
                        <li class="selected">
                            <a href="#">Home</a>
                        </li>
                        <li>
                            <a href="includes/about.jsp">About</a>
                        </li>
                        <li>
                            <a href="includes/contact.jsp">Contact</a>
                        </li>
                        <li>
                            <a href="includes/help.jsp">Help</a>
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
                <input type="button" id="goto" value="Analysis" /> 
                <input type="button" id="re" onclick="onStart(this);"  value="Refresh" />
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
                <p id="btn"> <!-- btn sec -->
                    <input type="button" id="start" onclick="onStart(this);" hidden="" />
                </p>

                <div id="text-msg"> <!-- msg box -->
                    <p id="error">Click this "Play" to allow access local camera</p>
                </div>

            </article> <!-- end video sec -->
        </div><!-- end Wraper Content -->

        <canvas id="photo"></canvas>

        <div id="lightbox" hidden="">
            <p>Click to close</p>
            <div id="content">
                <div id = "loading" ><img src="images/load.gif"/></div>
                <div id="tbl-result" hidden="">  
                    <table border="1" id="output">  
                        <caption>Table of Results</caption>   
                        <thead>  
                            <tr>  
                                <th scope="col">grains of rice</th>  
                                <th scope="col">standard Value</th>  
                                <th scope="col">Average calculated</th>  
                                <th scope="col">Time</th>  
                                <th scope="col">Size</th>  
                            </tr>  
                        <tbody>  
                            <tr>  
                                <td>100</td>  
                                <td>27%-35%</td>  
                                <td>20%</td>  
                                <td>30s</td>  
                                <td>250×249</td>  
                            </tr>  
                        </tbody>  
                        </thead>  
                    </table>  
                    <div id="result">
                        <a href="" class="preview"><img src="" alt="gallery thumbnail" class="i" width="350"/></a>
                        <a href="" class="preview"><img src="" alt="gallery thumbnail" class="i" width="350"/></a>

                    </div>

                </div> 
            </div></div>

        <div id="footer">
            <div>
                <p>
                    &#169; 2013 Pratchaya Suputsopon. All Rights Reserved.
                </p>

            </div>
        </div>


        <script src="js/videoOption.js"></script>
        <script src="js/webRTC.js"></script>
        <script src="js/_ajax_post.js"></script>


    </body>
</html>