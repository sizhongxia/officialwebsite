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
            <div class="inner"><img src="/static/images/products/product_banner.jpg" alt=""></div>
        </div>
        <!-- banner end -->
        <div class="productContent" style="background: #ffffff; padding: 60px 0;">
            <div id="productBox1" class="productBox selection">
                <div id="product1" style="padding-top: 165px; margin-top: -165px;">
                    <div class="content">
                        <h2 class="case"><img src="/static/images/products/product1_title.png" alt=""></h2>
                        <p class="caseImg"><img src="/static/images/products/product1_img.jpg" width="1280" height="462" alt=""></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="productContent" style="background: #fafafa; padding: 0 0 30px;">
            <div id="productBox2" class="productBox selection">
                <div class="content">
                    <div class="productsHtml">
                        <p class="img"><img src="/static/images/products/product1_flow.png" width="595" height="424" alt=""></p>
                        <h3 class="title">产品明细</h3>
                        <p class="line"></p>
                        <p class="desc">信号源：智慧e房多媒体系统<br>
                            投影机：JMGO（坚果）<br>
                            显示幕：大视屏100寸高清影视幕<br>
                            <br>
                            方案效果：<br>
                            超大屏酒店介绍，影院级观影效果，视频直播更有feel</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="productContent" style="background: #ffffff;padding: 60px 0;">
            <div id="productBox3" class="productBox selection">
                <div id="product2" style="padding-top: 165px; margin-top: -165px;">
                    <div class="content">
                        <h2 class="case"><img src="/static/images/products/product2_title.png" alt=""></h2>
                        <p class="caseImg"><img src="/static/images/products/product2_img.jpg" width="1280" height="462" alt=""></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="productContent" style="background: #fafafa; padding: 0 0 30px;">
            <div id="productBox4" class="productBox selection">
                <div class="content">
                    <div class="productsHtml">
                        <p class="img"><img src="/static/images/products/product2_flow.png" width="595" height="490" alt=""></p>
                        <h3 class="title">产品明细</h3>
                        <p class="line"></p>
                        <p class="desc">信号源：智慧e房多媒体系统<br>
                            投影机：JMGO（坚果）<br>
                            显示幕：大视屏100寸高清影视幕<br>
                            <br>
                            方案效果：<br>
                            自助入住，自动开关空调灯光，超大屏酒店介绍，影院级观影效果，语音操作窗帘灯光开关</p>
                    </div>
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
        $(function(){
            init(function (rate) {
                window.onload = function () {
                    if(rate < 1){
                        $("#productBox1").height($("#productBox1").height() * rate);
                        $("#productBox2").height($("#productBox2").height() * rate);
                        $("#productBox3").height($("#productBox3").height() * rate);
                        $("#productBox4").height($("#productBox4").height() * rate);

                        $("#product1,#product2").css({
                            'padding-top': 165*rate + 'px',
                            'margin-top': -165*rate + 'px',
                        });

                        $(".productContent").css({
                            'padding': 60*rate + "px 0px",
                        });

                        $("#FootWrap").height(($("#FootWrap").height() + 20) * rate);
                    }
                };
            });
        });
    </script>
</body>

</html>