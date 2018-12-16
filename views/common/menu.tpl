<div id="HeadWrap">
    <div id="Header" class="selection">
        <h1 class="logo"><a href="/"><img src="<<<.siteinfo.webLogo>>>" alt="<<<.siteinfo.webTitle>>>"></a></h1>
        <ul id="HeaderNav">
            <li><a href="/" <<<if eq .currentMenu "index">>>class="active"<<<end>>> >首页</a></li>
            <li><a href="/solution" <<<if eq .currentMenu "solution">>>class="active"<<<end>>> >产品案例</a>
                <div class="subnav subnav2">
                    <ul>
                        <<<range .products.list>>>
                        <li><a href="/solution/<<<.id>>>"><<<.shortName>>></a></li>
                        <<<end>>>
                    </ul>
                </div>
            </li>
            <li><a href="/news" <<<if eq .currentMenu "news">>>class="active"<<<end>>> >新闻资讯</a></li>
            <li><a href="/aboutus" <<<if eq .currentMenu "aboutus">>>class="active"<<<end>>> >关于我们</a></li>
        </ul>
    </div>
</div>