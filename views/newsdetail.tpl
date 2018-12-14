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
            <div class="inner"><img src="/static/images/newDetails/newDetails_banner.jpg" alt=""></div>
        </div>
        <!-- banner end -->
        <div class="newDetailsBox selection">

            <div class="title">
                <h3>重磅 | 青岛联合视界获国广东方(CIBN)战略投资</h3>
                <p>时间: 2018-07-30</p>
            </div>
            
            <div class="newsContent">
                
            </div>

            <div class="newsBtnBox">
                <div class="Row">
                    <a href="javascript:;">
                        <div class="Btn">
                            <p>上一篇</p>
                        </div>
                    </a>
                    <a href="javascript:;">
                        <div class="Btn">
                            <p>下一篇</p>
                        </div>
                    </a>
                </div>
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