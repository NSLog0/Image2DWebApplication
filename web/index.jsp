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
        <script src="js/img_hover.js"></script>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> 
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script> 
        <title>Quality Analytics | Rice</title>
    </head>

    <body>
        <%
            if (session.getAttribute("Image") != null) {
                out.print("<div id=\"restore\" hidden=\"\">You have your old task ,you can previous <span id=\"task\">Continue</span> or <span id=\"ignore\">Ignore</span></div>");
            }
        %>

        <jsp:include page="includes/component/header.jsp"/>

        <div id="wrap-outer"><!-- Wraper content -->
            <jsp:include page="includes/component/videosection.jsp"/>

        </div><!-- end Wraper Content -->
        <canvas id="photo"></canvas>
            <jsp:include page="includes/component/lightbox.jsp"/>

        <jsp:include page="includes/component/footer.jsp"/>

        <!-- import file -->
        <script src="js/video.js"></script>
        <script src="js/webRTC.js"></script>
        <script src="js/GridLine.js"></script>
        <script src="js/_ajax_post.js"></script>
        <script src="js/browser.js"></script>
        <script src="js/session.js"></script>
        <script src="js/slide.js"></script>
        <!-- end import file -->
    </body>
</html>