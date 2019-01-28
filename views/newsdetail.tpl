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
        <!-- <div class="banner">
            <div class="inner"><img src="/static/images/newDetails/newDetails_banner.jpg" alt=""></div>
        </div> -->
        <!-- banner end -->
        <div class="newDetailsBox selection">
            <div class="title">
                <h3><<<.news.title>>></h3>
                <p>时间: <<<.news.time>>></p>
            </div>
            <div class="newsContent">
                <<<str2html .news.content>>>
            </div>
        </div>
        <!-- casesBox end -->
    </div>
    <!-- ContentWrap end -->
    <!-- Foot Start -->
    <<<template "common/footer.tpl" .>>>
    <!-- Foot End -->
    <<<template "common/jsres.tpl" .>>>
    <script type="text/javascript">
        $(function () {
            init(function (rate) {
                window.onload = function () {
                    if (rate < 1) {
                        $(".newDetailsBox").height($(".newDetailsBox").height() * rate);
                        $("#FootWrap").height(($("#FootWrap").height() + 20) * rate);
                    }
                };
            });
        });
    </script>
</body>
</html>