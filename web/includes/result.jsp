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
        <link rel="stylesheet" type="text/css" href="css/result.css">
        <link href='http://fonts.googleapis.com/css?family=Faster+One|Montserrat|Noticia+Text' rel='stylesheet' type='text/css'>
        <script src="js/jquery-1.9.0.min.js"></script>
        <script src="js/jquery.blinds-0.9.js"></script>
        <title>Quality Analytics | Rice</title>
        <script>
            $(window).load(function () {
                $('.slideshow').blinds();
            })
        </script>
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
        <!-- Wraper content -->
        <div id="wrap-outer">
            <h1>Results in Quality Analytics and Resources</h1>
            <div id="all-photo">

                <div class="slideshow">
                    <ul>
                        <li><img src="images/simple/Untitled-4.png" alt="1" /></li>
                        <li><img src="images/simple/Untitled-2.png" alt="2" /></li>
                        <li><img src="images/simple/Untitled-3.png" alt="3" /></li>
                        <li><img src="images/simple/Untitled-1.png" alt="4" /></li>
                    </ul>
                </div>
                <div id="change-wrap">
                    <a href="#" class="change_link" onclick="$('.slideshow').blinds_change(0); return false;">1</a>
                    <a href="#" class="change_link" onclick="$('.slideshow').blinds_change(1); return false;">2</a>
                    <a href="#" class="change_link" onclick="$('.slideshow').blinds_change(2); return false;">3</a>
                    <a href="#" class="change_link" onclick="$('.slideshow').blinds_change(3); return false;">4</a>
                </div>
            </div>

        </div>
        <div id="clear"></div>
        <div id="tbl-result">
            <table border="1">
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
        </div>    

        <script src="js/videoOption.js"></script>
        <script src="js/webRTC.js"></script>
        <footer></footer>
    </body>
</html>