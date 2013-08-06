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
                <video id="screen"autoplay="" src=" "></video>
                <!-- end screen area -->
            </div>

            <!-- capture -->
            <div class="circle" onclick="capture();
                createSession();">
                <p>Capture</p>
            </div>
            <!-- end capture -->
    </section> 
    <img src="" id="show" hidden=""/>
    <div class="slidesui" hidden="">
        <div id="box">
            <input id="demo_box_2" class="css-checkbox" type="checkbox" checked="checked" />
            <label for="demo_box_2" name="demo_lbl_2" class="css-label">Binary View</label>
        </div>
        <span>Threshold *</span>
        <div class="slider"></div>
        <div id="slider-result">127</div>  
        <input type="hidden" id="hidden" value="127"/>

        <span>Smooth</span>
        <div class="slider2"></div>
        <div id="slider-result2">3</div>  
        <input type="hidden" id="hidden2" value="3"/>

        <span>Sharpness</span>
        <div class="slider3"></div>
        <div id="slider-result3">0.5</div>  
        <input type="hidden" id="hidden3" value="0.5"/>
    </div>
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

