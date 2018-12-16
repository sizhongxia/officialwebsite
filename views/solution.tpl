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
            <div class="inner"><img src="/static/images/solution_banner.jpg" alt="产品案例"></div>
        </div>
        <!-- banner end -->
        <div class="projectBox projectSection2">
            <div class="projectInner selection">
                <h2><img src="/static/images/case_show.png" alt="案例展示"></h2>
                <ul class="projectList">
                    <li>
                        <div class="content">
                            <div class="project">
                                <div class="hotelRow">
                                    <div class="Col">
                                        <div class="Row">
                                            <<<range .products.list>>>
                                            <div class="businessImg">
                                                <p class="imgTransition"><img src="<<<.coverPicUrl>>>" height="275" alt=""></p>
                                                <p class="hoverbg"></p>
                                                <p class="title"><a href="/solution/<<<.id>>>"><<<.shortName>>></a></p>
                                            </div>
                                            <<<end>>>
                                        </div>
                                        <!-- <div class="Row">
                                            <div class="businessImg">
                                                <p class="imgTransition"><img src="/static/images/project_businessShow/project_businessShow_scene_img4.jpg" alt=""></p>
                                                <p class="hoverbg"></p>
                                                <p class="title"><img src="/static/images/project_businessShow/project_businessShow_scene_img4_title.png" alt="医院定制"></p>
                                            </div>
                                            <div class="businessImg">
                                                <p class="imgTransition"><img  src="/static/images/project_businessShow/project_businessShow_scene_img5.jpg" alt=""></p>
                                                <p class="hoverbg"></p>
                                                <p class="title"><img src="/static/images/project_businessShow/project_businessShow_scene_img5_title.png" alt="酒店前台房价牌"></p>
                                            </div>
                                        </div> -->
                                    </div>
                                    <!-- <div>
                                        <div class="businessImg">
                                            <p  class="imgTransition"><img src="/static/images/project_businessShow/project_businessShow_scene_img3.jpg" alt=""></p>
                                            <p class="hoverbg"></p>
                                            <p  class="title"><img src="/static/images/project_businessShow/project_businessShow_scene_img3_title.png" alt="地铁站、机场"></p>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
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