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
            <div class="inner"><img src="/static/images/project_businessShow/project_businessShow_banner.jpg" alt="商显方案"></div>
        </div>
        <!-- banner end -->
        <div class="projectBox projectSection2">
            <div class="projectInner selection">
                <h2><img src="/static/images/project_businessShow/project_businessShow_scene_title.png" alt="应用场景"></h2>
                <ul class="projectList">
                    <li>
                        <div class="content">
                            <div class="project">
                                <div class="hotelRow">
                                    <div class="Col">
                                        <div class="Row">
                                            <div class="businessImg">
                                                <p class="imgTransition"><img src="/static/images/project_businessShow/project_businessShow_scene_img1.jpg" height="275" alt=""></p>
                                                <p class="hoverbg"></p>
                                                <p class="title"><img src="/static/images/project_businessShow/project_businessShow_scene_img1_title.png" alt="智慧工地"></p>
                                            </div>
                                            <div class="businessImg">
                                                <p class="imgTransition"><img src="/static/images/project_businessShow/project_businessShow_scene_img2.jpg" height="275" alt=""></p>
                                                <p class="hoverbg"></p>
                                                <p class="title"><img src="/static/images/project_businessShow/project_businessShow_scene_img2_title.png" alt="智慧养殖"></p>
                                            </div>
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