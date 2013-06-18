<!-- video sec -->
<article id="video-section"> 
    <h1>Rice Quality Analytics with Images Processing</h1>
    <div id="btnProcess">
        <input type="button" id="goto" value="Analysis" /> 
        <input type="button" id="re" onclick="onStart(this);"  value="Refresh" />
    </div>

    <!-- video area -->
    <!-- camera content -->
    <section id="wrapper" hidden=""> 
        <!-- video wrapper -->
        <div id="video-area"> 
            <!-- Status -->
            <span id="red">Ready</span> 
            <!-- stop button -->
            <div id="stop-wrapper">
                <input type="button" id="stop-btn" onclick="onStop();" value="" hidden=""/> <!-- stop -->
            </div>
            <!-- end stop button -->

            <!-- screen area -->
            <div id="wap">
                <video id="screen"autoplay="" src=" "></video>> 

            </div>
            <!-- end screen area -->
        </div>
        <!-- capture -->
        <div class="circle" onclick="capture();">
            <span>Capture</span>
        </div>
        <!-- end capture -->
    </section> 
    <!-- end camera content -->
    <!-- btn sec -->
    <p id="btn"> 
        <input type="button" id="start" onclick="onStart(this);" hidden="" />
    </p>
    <!-- end btn sec -->
    <!-- msg box -->
    <div id="text-msg"> 
        <p id="error">Click this "Play" to allow access local camera</p>
    </div>
    <!-- end msg box -->
</article> <!-- end video sec -->

