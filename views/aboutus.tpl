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
            <div class="inner"><img src="/static/images/aboutus_banner.jpg" alt="关于我们"></div>
        </div>
        <!-- banner end -->
        <div class="projectBox projectSection2">
            <div class="projectInner selection">
                <h2 style="font-size:26px;margin-bottom: 15px;">
                    <img src="/static/images/chapter_symbol.png" style="float: left;margin-top: 9px;margin-right: 10px;">
                    <span>关于我们</span>
                </h2>
                <div>
                    <<<str2html .siteinfo.companyIntroduce>>>
                </div>
                <h2 style="font-size:26px;margin-bottom: 15px;margin-top: 40px;">
                    <img src="/static/images/chapter_symbol.png" style="float: left;margin-top: 9px;margin-right: 10px;">
                    <span>联系我们</span>
                </h2>
                <div>
                    <p style="line-height: 36px;font-size: 20px;text-indent: 2em;">联系电话：<<<.siteinfo.companyTelno>>></p>
                    <p style="line-height: 36px;font-size: 20px;text-indent: 2em;">联系邮箱：<<<.siteinfo.companyEmail>>></p>
                    <p style="line-height: 36px;font-size: 20px;text-indent: 2em;">联系地址：<<<.siteinfo.companyAddress>>></p>
                </div>
            </div>
        </div>
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
                        $(".projectSection2").height($(".projectSection2").height() * rate);

                        $("#FootWrap").height(($("#FootWrap").height() + 20) * rate);
                    }
                };
            });
        });
    </script>
</body>

</html>