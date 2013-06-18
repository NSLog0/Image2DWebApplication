function createGrid(size) {
    var ratioW = Math.floor(480 / size),
            ratioH = Math.floor(360 / size);
    var div = $("#wap");
    var parent = $('<div />', {
        class: 'grid',
        width: ratioW * size,
        height: ratioH * size
    }).addClass('grid').appendTo(div);
    for (var i = 0; i < ratioH; i++) {
        for (var p = 0; p < ratioW; p++) {

            $('<div />', {
                width: size - 1,
                height: size - 1
            }).appendTo(parent);
        }
    }
}

createGrid(60);
var w = 1;
var h = 9;
for (var i = 0; i < 60 * 8; i += 60) {

    $('div .grid div:nth-child(' + w + ')').append('<p>' + i + '</p>');
    w++;
}

for (var i = 60; i < 60 * 6; i += 60) {

    $('div .grid div:nth-child(' + h + ')').append('<p>' + i + '</p>');
    h += 8;
}




