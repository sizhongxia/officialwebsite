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
                <li>
                    <p class="img"><img src="/static/images/newDateImg/20181101_cover.jpg" width="430" height="250" alt=""></p>
                    <p class="date">2018/11/01</p>
                    <p class="title"><a href="new_20181101.html">11月21日-23日，联合视界参加国际智慧酒店展览会</a></p>
                    <p class="desc">第五届中国（上海）国际智慧酒店展览会将于2018年11月21日-23日在国家会展中心（上海）举行，青岛联合视界数字传媒有限公司应邀参展，展位号：C016，诚邀业界各位同仁莅临。…</p>
                    <p class="link"><a href="new_20181101.html">查看全文></a></p>
                </li>
            </ul>
            <div class="newsMore"><a href="javascript:;">阅读更多+</a></div>
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