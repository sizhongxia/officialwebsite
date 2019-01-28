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
        <div id="SliderWrap">
            <div id="slideBox" class="slideBox">
                <div class="hd">
                    <ul>
                        <<<range .banners.list>>>
                        <li><<<.title>>></li>
                        <<<end>>>
                    </ul>
                </div>
                <div class="bd">
                    <ul>
                        <<<range .banners.list>>>
                        <li class="p" style="background-image: url(<<<.picUrl>>>)"></li>
                        <<<end>>>
                    </ul>
                </div>
            </div>
        </div>
        <!-- SliderWrap end -->
        <!-- <div class="index_schemeBox">
            <ul class="clearfix">
                <li>
                    <a href="project_hotel_new.html">
                        <p class="imgBg"><img class="bg" src="/static/images/index/index_scheme_bg01.jpg" alt=""></p>
                        <p class="txt"><img src="/static/images/index/index_scheme_txt01.png" alt="酒店方案 大屏影音客房"></p>
                    </a>
                </li>
                <li>
                    <a href="project_panHotel_new.html">
                        <p class="imgBg"><img class="bg" src="/static/images/index/index_scheme_bg02.jpg" alt=""></p>
                        <p class="txt"><img src="/static/images/index/index_scheme_txt02.png" alt="泛酒店方案 影音娱乐包房"></p>
                    </a>
                </li>
                <li>
                    <a href="project_businessShow.html">
                        <p class="imgBg"><img class="bg" src="/static/images/index/index_scheme_bg03.jpg" alt=""></p>
                        <p class="txt"><img src="/static/images/index/index_scheme_txt03.png" alt="商显方案 精彩影视+广告"></p>
                    </a>
                </li>
            </ul>
        </div> -->
        <!-- index_schemeBox end -->
        <!-- <div class="index_schemeBox2" id="index_schemeBox2">
            <div class="inner clearfix selection">
                <h2><img src="/static/images/index/index_scheme2_h2.png" alt="产品方案"></h2>
                <div class="scheme scheme_case1 wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0s">
                    <a href="mediaSoftware.html">
                        <p class="imgBg"><img class="bg" src="/static/images/index/index_scheme2_p1.jpg" alt=""></p>
                        <p class="txt"><img src="/static/images/index/index_scheme2_h3_1.png" alt="影音系统软件方案"></p>
                        <p class="more"><img src="/static/images/index/index_scheme2_more.png" alt="more"></p>
                    </a>
                </div>
                <div class="scheme scheme_case2 wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0.2s">
                    <a href="products.html#product1">
                        <p class="imgBg"><img class="bg" src="/static/images/index/index_scheme2_p2.jpg" alt=""></p>
                        <p class="txt"><img src="/static/images/index/index_scheme2_h3_2.png" alt="影音系统组合方案"></p>
                        <p class="more"><img src="/static/images/index/index_scheme2_more.png" alt="more"></p>
                    </a>
                </div>
                <div class="scheme scheme_case3 wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                    <a href="products.html#product2">
                        <p class="imgBg"><img class="bg" src="/static/images/index/index_scheme2_p3.jpg" alt=""></p>
                        <p class="txt"><img src="/static/images/index/index_scheme2_h3_3.png" alt="智慧影音客房整体方案"></p>
                        <p class="more"><img src="/static/images/index/index_scheme2_more.png" alt="more"></p>
                    </a>
                </div>
            </div>
        </div> -->
        <!-- index_schemeBox2 end -->
        <div class="index_advantage " id="index_advantage">
            <div class="inner clearfix selection">
                <h2 style="text-align: center;font-size: 18px;color: #d3d3d3;">一通无限，为客户提供定制化的一站式物联网解决方案及服务</h2>
                <ul>
                    <li class="wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0s">
                        <img style="width:150px;height:150px;" src="/static/images/index_characteristic_02.png" alt="数据采集">
                        <span style="display: block;line-height: 32px;font-size: 20px;">数据采集</span>
                        <p style="padding: 4px 30px;margin-bottom: 20px;">通过智能硬件采集设备，可采集各行业关键数据</p>
                    </li>
                    <li class="wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0s">
                        <img style="width:150px;height:150px;" src="/static/images/index_characteristic_05.png" alt="数据存储">
                        <span style="display: block;line-height: 32px;font-size: 20px;">数据存储</span>
                        <p style="padding: 4px 30px;margin-bottom: 20px;">利用大数据存储引擎，对采集数据实时存储</p>
                    </li>
                    <li class="wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0s">
                        <img style="width:150px;height:150px;" src="/static/images/index_characteristic_03.png" alt="智能分析">
                        <span style="display: block;line-height: 32px;font-size: 20px;">智能分析</span>
                        <p style="padding: 4px 30px;margin-bottom: 20px;">完整的海量数据分析，借助专家系统为采集数据赋能</p>
                    </li>
                </ul>
            </div>
        </div>
        <!-- index_advantage end -->
        <div class="index_case" id="index_case">
            <div class="inner clearfix selection">
                <h2><img src="/static/images/index_case_h2.png" alt="产品案例"></h2>
                <ul class="clearfix">
                    <li class="wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                        <a href="javascript:;">
                            <p class="imgBg"><img class="bg" src="/static/images/index_case_p2.jpg" alt=""></p>
                            <!-- <p class="txt"><img src="/static/images/index/index_case_txt2.png" alt="产品案例"></p>
                            <p class="more"><img src="/static/images/index/index_case_more.png" alt="more"></p> -->
                            <p class="hoverbg"></p>
                        </a>
                    </li>
                    <li class="wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0.2s">
                        <a href="javascript:;">
                            <p class="imgBg"><img class="bg" src="/static/images/index_case_p3.jpg" alt=""></p>
                            <!-- <p class="txt"><img src="/static/images/index/index_case_txt3.png" alt="产品案例"></p>
                            <p class="more"><img src="/static/images/index/index_case_more.png" alt="more"></p> -->
                            <p class="hoverbg"></p>
                        </a>
                    </li>
                    <li class="wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0s">
                        <a href="javascript:;">
                            <p class="imgBg"><img class="bg" src="/static/images/index_case_p1.jpg" alt=""></p>
                            <!-- <p class="txt"><img src="/static/images/index/index_case_txt1.png" alt="产品案例"></p>
                            <p class="more"><img src="/static/images/index/index_case_more.png" alt="more"></p> -->
                            <p class="hoverbg"></p>
                        </a>
                    </li>
                    <li class="wow animated slideInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                        <a href="javascript:;">
                            <p class="imgBg"><img class="bg" src="/static/images/index_case_p4.jpg" alt=""></p>
                            <!-- <p class="txt"><img src="/static/images/index/index_case_txt4.png" alt="产品案例"></p>
                            <p class="more"><img src="/static/images/index/index_case_more.png" alt="more"></p> -->
                            <p class="hoverbg"></p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- index_brand end -->
        <div class="index_news" id="index_news">
            <div class="inner selection">
                <h2><img src="/static/images/index_news_h2.png" alt="新闻资讯"></h2>
                <div class="twoCol clearfix">
                    <div class="colL">
                        <a href="/news/<<<.newschosen.id>>>" target="_blank">
                            <!--class="ov"-->
                            <p class="img imgTransition"><img src="<<<.newschosen.coverPic>>>" alt="新闻资讯"></p>
                            <div class="txt">
                                <p class="title"><<<.newschosen.title>>></p>
                                <p class="line"></p>
                                <p class="more"><img src="/static/images/more_white.png" alt="more"></p>
                            </div>
                        </a>
                    </div>
                    <div class="colR">
                        <ul class="list">
                            <<<range .newses.list>>>
                            <li>
                                <a href="/news/<<<.id>>>" target="_blank">
                                    <p class="title" style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;"><<<.title>>></p>
                                    <p class="desc" style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;"><<<.abstract>>></p>
                                    <p class="date"><<<.time>>></p>
                                </a>
                            </li>
                            <<<end>>>
                        </ul>
                        <p class="more2"><a href="/news"><img src="/static/images/more.png" class="over" alt="more"></a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- schemeBox2 end 
        <div class="index_brand" id="index_brand">
            <div class="inner selection">
                <h2><img src="/static/images/index_brand_h2.png" alt="合作伙伴"></h2>
                <ul class="clearfix">
                    <li><img src="/static/images/partner_logo.jpg" alt="LOGO"></li>
                </ul>
            </div>
        </div>-->
        <!-- index_brand end -->
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
                    //console.log($("#index_schemeBox2").height());
                    if (rate < 1) {
                        // $("#index_schemeBox2").height($("#index_schemeBox2").height() * rate);
                        // 解决方案
                        $("#index_advantage").height($("#index_advantage").height() * rate);
                        // 产品案例
                        $("#index_case").height($("#index_case").height() * rate);
                        // 合作伙伴
                        $("#index_brand").height($("#index_brand").height() * rate);
                        // 新闻资讯
                        $("#index_news").height($("#index_news").height() * rate);
                        // 底部
                        $("#FootWrap").height(($("#FootWrap").height() + 20) * rate);
                    }
                };
                var wHeight = $(window).height();
                if (rate < 1) {
                    $('#slideBox, #SliderWrap, .bd ul li').height(900 * rate);
                } else {
                    $('#slideBox, #SliderWrap, .bd ul li').height(900);
                }
                $('.bd>ul>li>.selection').css({
                    'transform-origin': '50% 50%',
                });
                $(".slideBox").slide({
                    mainCell: ".bd ul",
                    effect: 'fold',
                    autoPlay: true,
                    mouseOverStop: false,
                    interTime: 3000,
                    delayTime: 1000,
                    startFun: function (i) {
                        //console.log(i);
                        // 切换Logo
                        // if (i == 2) {
                        //     if ($(window).scrollTop() < 100) {
                        //         $('#HeadWrap').addClass('innerPage');
                        //         $("#HeadWrap.innerPage").find(".logo img").attr('src', '/static/common/images/logo_white.png');
                        //     }
                        // } else {
                        //     $('#HeadWrap').removeClass('innerPage');
                        //     $("#HeadWrap").find(".logo img").attr('src', '/static/common/images/logo.png');
                        // }
                    },
                });
            });

        });
    </script>
</body>
</html>