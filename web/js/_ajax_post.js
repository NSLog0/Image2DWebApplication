/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 *//*
  $('#goto').live("click", function() {
  var txt = $('show').attr('src');
  var i = {"Image": [{"image": txt}]};
  var base64 = i.Image[0].image;
  base64 = base64.replace(/^.*base64,/i, "");
  i.Image[0].image = base64;
  console.log('add');
  $.ajax({
  type: 'POST',
  contentType: 'application/json',
  url: "/RESTfulService/resources/json/service/api",
  dataType: "json",
  data: JSON.stringify(i),
  success: function(data, status) {
  console.log('add: ' + status);
  var img = data[0].image;
  // $('#showdata').html('<p>' + data[0].width + " " + data[0].height + " " + data[0].color_mode + " "
  //   + '<br/><img src="' + img + '" /></p>');
  lightResult();
  // console.log(status);
  },
  error: function(data, status) {
  alert("send data error:" + status);
  }
  });
  
  });*/

$("#goto").click(function() {
    $('#lightbox').fadeIn('900');
    var txt = $('#show').attr('src');
    var i = [{"image": txt}];
    var base64 = i[0].image;
    base64 = base64.replace(/^.*base64,/i, "");
    i[0].image = base64;
    console.log('add');
    $.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: "/RESTfulService/resources/json/service/api",
        dataType: "json",
        data: JSON.stringify({"Image": i}),
        success: function(data, status, xhr) {
            console.log('add: ' + status);

            var img = data[0].image;
            if (status !== 'success') {

            } else {

                // document.getElementById("output").children[0].children[0].children[0].innerHTML = data[0].width;
                // document.getElementById("output").children[0].children[0].children[1].innerHTML = data[0].height;
                /// document.getElementById("output").children[0].children[0].children[2].innerHTML = "Test";
                //document.getElementById("output").children[0].children[0].children[3].innerHTML = "Test";
                //document.getElementById("output").children[0].children[0].children[4].innerHTML = "Test";
               $('#lightbox #content #tbl-result #result a.preview').attr("href",img);
                $('#lightbox #content #tbl-result #result .i').attr("src",img);
                setTimeout(function() {
                    $('#tbl-result').slideDown('slow');
                    $('#loading').hide();
                }, 3000);
                //insert lightbox HTML into page
                // $('#content').append(lightbox);

            }

            $('#lightbox').click(function() { //must use live, as the lightbox element is inserted into the DOM
                $('#lightbox').hide();
            });
            //$('#footer').html('<p>' + data[0].width + " " + data[0].height + " " + data[0].color_mode + " "
            //  + '<br/><img src="' + img + '" /></p>');

            console.log(status);
        },
        error: function(data, status) {
            alert("send data error:" + status);
        }
    });

});

