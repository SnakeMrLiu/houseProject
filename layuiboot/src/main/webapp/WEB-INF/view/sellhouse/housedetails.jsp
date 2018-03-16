<%--
  Created by IntelliJ IDEA.
  User: snake
  Date: 2018/3/15
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>房屋详情</title>
    <link href="https://beijing.anjuke.com/prop/view/A1143604949" rel="canonical">
    <!--start-->
    <link rel="stylesheet" rev="stylesheet" href="https://include.anjukestatic.com/anjuke-user/res/20180315.1504.0/b/Ershou_Web_Property_View_View3.css" type="text/css" />
    <!--end-->
    <script type="text/javascript">var PAGESTART = +new Date(); var PHPVERSION = '20180315.1504.0';</script>

    <script type="text/javascript" src="//include.anjukestatic.com/usjs/base/logger/dom.dom/dom.query/ajax/event/ui.panel/ui.autocomplete/ui.exposure/cookie/site/utils.base/a7745b92361b3d50fe42c424545f2d56.js"></script>
    <!-- <script type="text/javascript" src="//include.anjukestatic.com/ujs/chat.opener/a7745b92361b3d50fe42c424545f2d56.js" crossorigin></script> -->
    <script type="text/javascript">J.site.init()</script>
    <!-- -->
    <link rel="shortcut icon" href="https://pages.anjukestatic.com/usersite/site/img/global/1/favicon.ico" />
    <link rel="icon" href="https://pages.anjukestatic.com/usersite/site/img/global/1/favicon.ico" type="image/ico" />
</head>
<body>
<div id="content">
    <div class="p_1180 p_crumbs">
        <a href="https://beijing.anjuke.com">北京房产网</a> &gt; <a href="https://beijing.anjuke.com/sale/">北京二手房</a> &gt; <a href="https://beijing.anjuke.com/sale/chaoyang/">朝阳二手房</a> &gt; <a href="https://beijing.anjuke.com/sale/yayuncun/">亚运村二手房</a> &gt; <a href="https://beijing.anjuke.com/community/view/56722">紫玉山庄</a>    </div>
    <div class="topBar">
        <em class="houseTitle"></em>
        <p class="brokerInfo"><i class="iconfont">&#xE048;</i>${house.ename} <span class="mobile">
                188 0127 3773            </span>
        </p>
        <p class="houseInfo">
            4室2厅4卫，
            403m²，
            6000万</p>
    </div>
    <div class="clearfix title-guarantee">
        <h3 class="long-title">
            ${house.title}</h3>
        <i title="该房源已现金担保，保证房源真实，保证可带看" class="guarantee_icon">安选验真</i>
    </div>
    <div class="wrapper">
        <!--页面左侧-->
        <div class="wrapper-lf clearfix">
            <div class="basic-info clearfix">
                <span class="light info-tag"><em>${house.price}</em>万</span>
                <span class="info-tag"><em>${house.room}</em>室<em>${house.hall}</em>厅</span>
                <span class="info-tag"><em>${house.area}</em>平方米</span>
                <!-- 这里锚点定位的代码在monthpay2组件里 -->
                <span class="info-tag no-border tag-cal"><i class="iconfont viewpage-calculator">&#xE015;</i>房贷计算</span>
                <div class="moreFunc">
                    <a rel="nofollow"  href="https://www.anjuke.com/mobile?pm=b1028&from=esf_page" class="moreFunc-entrance" id="js_report" target="_blank" data-soj="esf_page"><i class="iconfont">&#xE208;</i>下载app举报
                    </a>&nbsp;|&nbsp;<a href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=123&faqTypeId=4" class="moreFunc-entrance" target="_blank">安选假赔百元细则</a>
                </div>
            </div>

            <!--轮播组件-->
            <div class="switch_warpper">
                <div class="switch_with_map">
                    <div class="inner_switcher" id="inner_switcher">
                        <div class="switch_mask switch_left_mask" id="switch_left_mask" data-track=pc_fydy_switch_qh>
                            <i class="switch_left_btn switch_btn iconfont" id="switch_left_btn">&#xE023;</i>
                            <span id="prev-title">室内图片</span>
                        </div>
                        <div class="switch_mask switch_right_mask" id="switch_right_mask" data-track=pc_fydy_switch_qh>
                            <i class="switch_right_btn switch_btn iconfont" id="switch_right_btn">&#xE012;</i>
                            <span id="next-title">室内图片</span>
                        </div>
                        <div class="switch_wrap" id="switch_wrap">
                            <div class="switch_list zhankeng_first" id="zhankeng_first">
                                <div class="img_wrap zhankeng_img1"></div>
                                <div class="img_wrap zhankeng_img2"></div>
                            </div>
                            <!--室内图-->
                            <div class="switch_list" id="room_pic_wrap">
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/53a11d-%E4%B8%BD%E5%85%B9%E8%A1%8C/2f22f6a0e2c712044b72ade3a3672490-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/3deb69-%E4%B8%BD%E5%85%B9%E8%A1%8C/1fee57ede08bd26477354bad52c381c7-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/8aef8b-%E4%B8%BD%E5%85%B9%E8%A1%8C/87bdaa732bea2ec0d4d044b1249538d2-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/ec6ba4-%E4%B8%BD%E5%85%B9%E8%A1%8C/dfd922d4de9ce596e075a84431c58410-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/c69d06-%E4%B8%BD%E5%85%B9%E8%A1%8C/26c7f311753b438be10f99bce517abdc-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/ac1e4a-%E4%B8%BD%E5%85%B9%E8%A1%8C/2a61d3b096f94f404d47611bac71b47c-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/7c28b4-%E4%B8%BD%E5%85%B9%E8%A1%8C/6f6203f2c97dd488fcc6c1a5b978926e-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/225d8f-%E4%B8%BD%E5%85%B9%E8%A1%8C/c17cf30e546266592b2badb51da7710a-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/652dd0-%E4%B8%BD%E5%85%B9%E8%A1%8C/f4c294029de3c4ca6a1c860d5265bc00-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                            </div>

                            <!--户型图-->
                            <div class="switch_list" id="hx_pic_wrap">
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/dffc3c-%E4%B8%BD%E5%85%B9%E8%A1%8C/b7a180e19fc28b4cbe9cc25f66c6049d-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                            </div>

                            <!--环境图-->
                            <div class="switch_list" id="surround_pic_wrap">
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/70b59e-%E4%B8%BD%E5%85%B9%E8%A1%8C/4320f3113664360fd758befc76415b37-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/anjuke/781caf-%E4%B8%BD%E5%85%B9%E8%A1%8C/f39e0bf240128590b3bdb17ad0982203-599x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://images9.anjukestatic.com/community/20091206/37/56/36/68/37563668/600x450.jpg" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/hj/0ab3a1e97286eba84b923c2c525c8d5d/600x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://images3.anjukestatic.com/community/20090311/6/75/64/50/6756450/600x450.jpg" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/hj/0ca51c087162c0bd0eb79f3e078aa3d7/600x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/hj/0dc419a3a288ad7966196a6cb795a5af/600x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/hj/0ef80cff886d3c35664c36e7dedea8a1/600x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/hj/11863e0efa3e30e529ef6a179dd4685d/600x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                                <div class="img_wrap">
                                    <img data-src="https://pic1.ajkimg.com/display/hj/16fd3c424c15388938d4d2600b75ea62/600x450.jpg?t=1" src="https://pages.anjukestatic.com/usersite/site/img/global/defaultImg/big-load-img2.png" alt="" height="450">
                                </div>
                            </div>

                            <div class="switch_list zhankeng_last" id="zhankeng_last">
                                <div class="img_wrap zhankeng_img1"></div>
                                <div class="img_wrap zhankeng_img2"></div>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="switch_tab_wrap " id="switch_tab_wrap">
                    <a class="switch_tag switch_tag_now" href="javascript:;" data-track=pc_fydy_switch_snt id="room_tab">
                        <i class="switch-icon iconfont switch-room-icon">&#xE026;</i>
                        <em class="title">室内图(9)</span></em>
                    </a>

                    <a class="switch_tag" href="javascript:;" data-track=pc_fydy_switch_hxt id="hx_tab">
                        <i class="switch-icon iconfont switch-hx-icon">&#xE013;</i>
                        <em class="title">户型图<span class="num">(1)</span></em>
                    </a>
                    <a class="switch_tag" href="javascript:;" data-track=pc_fydy_switch_hjt id="surround_tab">
                        <i class="switch-icon iconfont switch-surd-icon">&#xE014;</i>
                        <em class="title">环境图<span class="num">(10)</span></em>
                    </a>
                </div>
            </div>
            <div class="houseInfoBox">
                <h4 class="block-title houseInfo-title">房屋信息
                    <span class="anxian"><i class="ax-i"></i><span class="ax-d"><i class="iconfont">&#xE057;</i><span>保真保看</span><i class="iconfont">&#xE057;</i><span>真实在售</span><i class="iconfont">&#xE057;</i><span>假赔百元</span></span>
                <div class="anxuan-tip">
                    <em class="arrow-up-t">
                        <em class="arr-t"></em>
                    </em>
                    <p><span>安心挑房：</span>房源存在，价格真实，安心挑房远离虚假。</p>
                    <p><span>安选服务：</span>佣金透明，服务分级，安选服务顺畅交易。</p>
                    <p><span>安全沟通：</span>微聊聊天，保护手机，安全沟通杜绝骚扰。</p>
                </div>
                </span>
                    <span class="house-encode">房屋编码： ${house.roomNum}，发布时间：${house.releaseTime}</span></h4>
                <div class="block-wrap block-nocopy no-bd-top">
                    <div class="houseInfo-wrap">
                        <div class="houseInfo-detail clearfix">
                            <div class="first-col detail-col">
                                <dl><dt>所属小区：</dt>
                                    <dd>
                                        <a href="https://beijing.anjuke.com/community/view/56722" target="_blank" _soj=propview>${house}</a>
                                    </dd>
                                </dl>
                                <dl><dt>所在位置：</dt>
                                    <dd>

                                        <p class="loc-text"><a href="https://beijing.anjuke.com/sale/chaoyang/" target="_blank" _soj=propview>朝阳</a>－
                                            <a href="https://beijing.anjuke.com/sale/yayuncun/" target="_blank" _soj=propview>亚运村</a>－
                                            紫玉东路1号</p>
                                        <i class="iconfont i-location">&#xE003;</i>
                                    </dd>
                                </dl>
                                <dl><dt>建造年代：</dt><dd>2008年</dd></dl>
                                <dl><dt>房屋类型：</dt><dd>别墅</dd></dl>
                            </div>
                            <div class="second-col detail-col">
                                <dl><dt>房屋户型：</dt><dd>
                                    4室
                                    2厅
                                    4卫
                                </dd></dl>
                                <dl><dt>建筑面积：</dt><dd>403平方米</dd></dl>
                                <dl><dt>房屋朝向：</dt><dd>南北</dd></dl>
                                <dl><dt>所在楼层：</dt><dd>共3层					</dd></dl>
                            </div>
                            <div class="third-col detail-col">
                                <dl><dt>装修程度：</dt><dd>精装修</dd></dl>
                                <dl><dt>房屋单价：</dt><dd>148879 元/m²</dd></dl>
                                <dl><dt>参考首付：</dt><dd>
                                    1800.01万                    </dd></dl>
                                <dl><dt>参考月供：</dt>
                                    <dd><span id="reference_monthpay"></span></dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>

</script>
</html>
