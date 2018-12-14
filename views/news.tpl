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
                    <p class="img"><img src="/static//static/images/newDateImg/20181101_cover.jpg" width="430" height="250" alt=""></p>
                    <p class="date">2018/11/01</p>
                    <p class="title"><a href="new_20181101.html">11月21日-23日，联合视界参加国际智慧酒店展览会</a></p>
                    <p class="desc">第五届中国（上海）国际智慧酒店展览会将于2018年11月21日-23日在国家会展中心（上海）举行，青岛联合视界数字传媒有限公司应邀参展，展位号：C016，诚邀业界各位同仁莅临。…</p>
                    <p class="link"><a href="new_20181101.html">查看全文></a></p>
                </li>
                <li>
                    <p class="img"><img src="/static/images/newDateImg/20180727_cover.jpg" width="430" height="250" alt=""></p>
                    <p class="date">2018/07/27</p>
                    <p class="title"><a href="new_20180727.html">重磅 | 青岛联合视界获国广东方(CIBN)战略投资</a></p>
                    <p class="desc">7月25日，青岛联合视界数字传媒有限公司宣布获得国广东方网络（北京）有限公司战略投资，成为国内唯一获得权威内容牌照方投资的酒店多媒体服务企业。…</p>
                    <p class="link"><a href="new_20180727.html">查看全文></a></p>
                </li>
                <li>
                    <p class="img"><img src="/static/images/newDateImg/20180410_cover.jpg" width="430" height="250" alt=""></p>
                    <p class="date">2018/04/10</p>
                    <p class="title"><a href="new_20180410.html">新方案，新UI，新智能，参展上海</a></p>
                    <p class="desc">本次展会，联合视界携最新3.0版本高调亮相，其中涵盖的语音AI操控体验值得期待！ 联合视界携手业内知名智能化团队深度打造的智能语音系统，能让住客与繁杂的客控RCU操作步骤说再…</p>
                    <p class="link"><a href="new_20180410.html">查看全文></a></p>
                </li>
                <li>
                    <p class="img"><img src="/static/images/newDateImg/20171212_cover.jpg" width="430" height="250" alt=""></p>
                    <p class="date">2017/12/12</p>
                    <p class="title"><a href="new_20171212.html">联合视界参展第二十四届广州酒店用品展</a></p>
                    <p class="desc">12月13-15日，联合视界携最新版本智慧e房，参展第二十四届广州酒店用品展览会，新增智能客房睡眠体验，酒店微电商新零售，在线点餐等新功能，期待您莅临参观！…</p>
                    <p class="link"><a href="new_20171212.html">查看全文></a></p>
                </li>
                <li>
                    <p class="img"><img src="/static/images/newDateImg/20171027_cover.jpg" width="430" height="250" alt=""></p>
                    <p class="date">2017/10/27</p>
                    <p class="title"><a href="new_20171027.html">联合视界高调亮相HSF上海展会载誉而归</a></p>
                    <p class="desc">10月27日，为期三天的2017年中国（上海）国际智慧酒店展览会（以下简称HSF上海展会）在上海国家会展中心圆满落下帷幕！本届HSF上海展会，联合视界携全球首家云技术的酒店多媒体系…</p>
                    <p class="link"><a href="new_20171027.html">查看全文></a></p>
                </li>
                <li>
                    <p class="img"><img src="/static/images/newDateImg/20170810_cover.jpg" width="430" height="250" alt=""></p>
                    <p class="date">2017/08/10</p>
                    <p class="title"><a href="new_20170810.html">联合视界荣获“金钥匙特约服务商”称号</a></p>
                    <p class="desc">2017年8月，联合视界获得“金钥匙特约服务商”称号，对于联合视界来说，是管理水平和服务水平成熟的标志，是对联合视界高水平的软件、硬件以及完善的服务流程的权威认可。…</p>
                    <p class="link"><a href="new_20170810.html">查看全文></a></p>
                </li>
    
            </ul>
            <!-- <div class="newsMore"><a href="#">阅读更多+</a></div> -->
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