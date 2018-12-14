<!doctype html>
<html>

<head>
    <<<template "common/header.tpl" .>>>
</head>

<body>
    <!-- Menu start -->
    <<<template "common/menu.tpl" .>>>
    <!-- Menu end -->
    

    <div id="MainWrap">
        <div class="banner">
            <div class="inner"><img src="/static/images/news_banner.jpg" alt=""></div>
        </div>
        <!-- banner end -->
        <div class="newsBox selection">
            <ul class="newsList">
                <<<range .newses.list>>>
                <li>
                    <p class="img"><img src="<<<.coverPic>>>" width="430" height="250" alt=""></p>
                    <p class="date"><<<.time>>></p>
                    <p class="title"><a href="/news/<<<.id>>>"><<<.title>>></a></p>
                    <p class="desc"><<<.abstract>>>…</p>
                    <p class="link"><a href="/news/<<<.id>>>">查看全文></a></p>
                </li>
                <<<end>>>
            </ul>
            <<<if .newses.hasNextPage>>>
            <div class="newsMore"><a href="/news?page=<<<.newses.hasNextPage>>>">阅读更多+</a></div>
            <<<end>>>
        </div>
        <!-- newsBox end -->
    </div>
    <!-- ContentWrap end -->


    <!-- Foot Start -->
    <<<template "common/footer.tpl" .>>>
    <!-- Foot End -->

    <<<template "common/jsres.tpl" .>>>
        
    <script type="text/javascript">
        $(function(){
            init(function (rate) {
                window.onload = function () {
                    if(rate < 1){
                        $(".newsBox").height($(".newsBox").height() * rate);
                        $("#FootWrap").height(($("#FootWrap").height() + 20) * rate);
                    }
                };
            });
        });
    </script>
</body>

</html>