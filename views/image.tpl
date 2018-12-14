<!doctype html>
<html>

<head>
    <<<template "common/header.tpl" .>>>
</head>

<body>
    <!-- Menu start -->
    <<<template "common/menu.tpl" .>>>
    <!-- Menu end -->


    <!-- HeadWrap end -->
    <div id="MainWrap">
        <div class="banner">
            <div class="inner"><img src="/static/images/mediaSoftware/mediaSoftware_banner.jpg" alt=""></div>
        </div>
        <!-- banner end -->
        <div class="casesBox selection">
            <div class="in exhibition_hall">
                <div class="roundabout_box">
                    <ul>
                        <li>
                            <img src="/static/images/mediaSoftware/mediaSoftware_project1_loop1.jpg" alt="">
                            <span class="text">V4.0-涉外酒店版</span>
                        </li>
                        <li>
                            <img src="/static/images/mediaSoftware/mediaSoftware_project1_loop2.jpg" alt="">
                            <span class="text">V4.0-涉外酒店版</span>
                        </li>
                        <li>
                            <img src="/static/images/mediaSoftware/mediaSoftware_project1_loop3.jpg" alt="">
                            <span class="text">V4.0-涉外酒店版</span>
                        </li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- casesBox end -->
    </div>
    <!-- ContentWrap end -->

    <!-- Foot Start -->
    <<<template "common/footer.tpl" .>>>
    <!-- Foot End -->
    <<<template "common/jsres.tpl" .>>>
    <script type="text/javascript" src="/static/common/js/jquery.roundabout.min.js"></script>

    <script type="text/javascript">
        $(function () {
            init(function (rate) {
                window.onload = function () {
                    if (rate < 1) {
                        $(".casesBox").height($(".casesBox").height() * rate);
                        $("#FootWrap").height(($("#FootWrap").height() + 20) * rate);
                    }
                };

                $('.roundabout_box ul').roundabout({
                    duration: 500,
                    minScale: 0.6,
                    autoplay: true,
                    autoplayDuration: 5000,
                    minOpacity: 1,
                    maxOpacity: 1,
                    reflect: false,
                    startingChild: 3,
                    autoplayInitialDelay: 3000,
                    autoplayPauseOnHover: true,
                    enableDrag: true,
                    dropDuration:600,
                });


                $('#productBtnList p').on( 'click',function (e) {
                    console.log($(e.currentTarget).index());
                    // $('#productBtnList p').removeClass('cover');
                    // $(e.currentTarget).addClass('cover');

                    var index = $(this).index();
                    $(this).addClass("cover").siblings().removeClass("cover");
                    $(".loopContent .loopBox").eq(index).addClass("active").siblings().removeClass("active");

                });

            });
        });
    </script>
</body>

</html>