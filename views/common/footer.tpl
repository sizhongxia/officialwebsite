<div id="FootWrap">
    <div class="selection">
        <div id="Footer" class="">
            <div class="threeCol clearfix">
                <div class="colL">
                    <p class="name"><<<.siteinfo.companyName>>></p>
                    <p>
                        公司电话：<<<.siteinfo.companyTelno>>><br>
                        公司地址：<<<.siteinfo.companyAddress>>><br></p>
                </div>
                <div class="colC clearfix">
                    <dl class="link1">
                        <dt>产品方案</dt>
                        <<<range .products.list>>>
                        <dd><a><<<.shortName>>></a></dd>
                        <<<end>>>
                    </dl>
                </div>
                <div class="colR">
                    <p class="qrcode"><img src="<<<.siteinfo.mpQrcode>>>" alt=""></p>
                    <p class="txt"><<<.siteinfo.mpName>>></p>
                </div>
            </div>
            <div class="copyright"><<<str2html .siteinfo.copyright>>></div>
        </div>
    </div>
</div>