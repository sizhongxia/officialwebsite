function init(callBack) {
    new WOW().init();

    var ww = $(window).width();
    var rate = 1;

    if (ww < 1920 && ww >= 1720) {
        // rate = (ww / 1920).toFixed(2);
    } else if (ww < 1720 && ww >= 1560) {
        rate = 0.84;
    } else if (ww < 1560 && ww >= 1440) {
        rate = 0.8;
    } else if (ww < 1440 && ww >= 1366) {
        rate = 0.78;
    } else if (ww < 1366) {
        rate = 0.74;
    }

    $('.selection').css({
        'transform': 'scale(' + rate + ')',
        'transform-origin': '50% 0',
    });
    $("#HeadWrap").height($("#HeadWrap").height() * rate);
    callBack(rate);
}
