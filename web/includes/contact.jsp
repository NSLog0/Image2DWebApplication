<%-- 
    Document   : Conntact
    Created on : Jun 12, 2013, 3:39:07 PM
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
                    <a href="index.html" id="logo"><h1>{Rice}Analyze</h1></a>
                    <ul>
                        <li>
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="includes/about.jsp">About</a>
                        </li>
                        <li class="selected">
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
        <jsp:include page="../includes/component/footer.jsp"/>
    </body>
</html>
