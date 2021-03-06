<%--
  Created by IntelliJ IDEA.
  User: snake
  Date: 2018/3/15
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    ul, ol { padding: 0;}
    .banner { position: relative; overflow: auto; text-align: center;}
    .banner li { list-style: none; }
    .banner ul li { float: left; }
    #b04 { width: 640px;}
    #b04 .dots { position: absolute; left: 0; right: 0; bottom: 20px;}
    #b04 .dots li
    {
        display: inline-block;
        width: 10px;
        height: 10px;
        margin: 0 4px;
        text-indent: -999em;
        border: 2px solid #fff;
        border-radius: 6px;
        cursor: pointer;
        opacity: .4;
        -webkit-transition: background .5s, opacity .5s;
        -moz-transition: background .5s, opacity .5s;
        transition: background .5s, opacity .5s;
    }
    #b04 .dots li.active
    {
        background: #fff;
        opacity: 1;
    }
    #b04 .arrow { position: absolute; top: 200px;}
    #b04 #al { left: 15px;}
    #b04 #ar { right: 15px;}
</style>
<head>
    <title>房屋详情</title>
    <link href="https://beijing.anjuke.com/prop/view/A1143604949" rel="canonical">
    <!--start-->
    <link rel="stylesheet" rev="stylesheet" href="https://include.anjukestatic.com/anjuke-user/res/20180315.1504.0/b/Ershou_Web_Property_View_View3.css" type="text/css" />
    <!--end-->
    <script type="text/javascript">var PAGESTART = +new Date(); var PHPVERSION = '20180315.1504.0';</script>

    <script type="text/javascript" src="//include.anjukestatic.com/usjs/base/logger/dom.dom/dom.query/ajax/event/ui.panel/ui.autocomplete/ui.exposure/cookie/site/utils.base/a7745b92361b3d50fe42c424545f2d56.js"></script>
    <!-- <script type="text/javascript" src="//include.anjukestatic.com/ujs/chat.opener/a7745b92361b3d50fe42c424545f2d56.js" crossorigin></script> -->
    <!-- -->
    <link rel="shortcut icon" href="https://pages.anjukestatic.com/usersite/site/img/global/1/favicon.ico" />
    <link rel="icon" href="https://pages.anjukestatic.com/usersite/site/img/global/1/favicon.ico" type="image/ico" />
    <script src="../js/jquery-1.8.0.js"></script>
    <script type="text/javascript" src="../js/unslider/unslider.min.js"></script>

</head>
<body>
<input type="hidden" id="houseId" value="${houseId}">
<div id="content">
    <div class="p_1180 p_crumbs">
        <a href="../sellhouse/toSellHouseList"> &lt;返回</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="https://beijing.anjuke.com/sale/">北京二手房</a> &gt; <a href="https://beijing.anjuke.com/sale/chaoyang/">朝阳二手房</a> &gt; <a href="https://beijing.anjuke.com/sale/yayuncun/">亚运村二手房</a> &gt; <a href="https://beijing.anjuke.com/community/view/56722">紫玉山庄</a>
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
            <div class="switch_warpper">
                <div class="switch_with_map">
                    <div class="inner_switcher" id="inner_switcher">
                        <!-- 把要轮播的地方写上来 -->
                        <div class="banner" id="b04">
                            <ul id="housesLideshow">
                            </ul>
                            <a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al" src="../js/unslider/arrowl.png" alt="prev" width="20" height="35"></a>
                            <a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar" src="../js/unslider/arrowr.png" alt="next" width="20" height="37"></a>
                        </div>

                        <div class="switch_list zhankeng_last" id="zhankeng_last">
                            <div class="img_wrap zhankeng_img1"></div>
                            <div class="img_wrap zhankeng_img2"></div>
                        </div>
                    </div>
                    <div class="switch_tab_wrap " id="switch_tab_wrap">
                        <a class="switch_tag switch_tag_now" href="javascript:slideshow(1);" data-track=pc_fydy_switch_snt id="room_tab">
                            <i class="switch-icon iconfont switch-room-icon">&#xE026;</i>
                            <em class="title">室内图(<span class="num" id="imgTypeNumber1"></span>)</em>
                        </a>

                        <a class="switch_tag switch_tag_now" href="javascript:slideshow(2);" data-track=pc_fydy_switch_hxt id="hx_tab">
                            <i class="switch-icon iconfont switch-hx-icon">&#xE013;</i>
                            <em class="title">户型图(<span class="num" id="imgTypeNumber2"></span>)</em>
                        </a>
                        <a class="switch_tag switch_tag_now" href="javascript:slideshow(3);" data-track=pc_fydy_switch_hjt id="surround_tab">
                            <i class="switch-icon iconfont switch-surd-icon">&#xE014;</i>
                            <em class="title">环境图(<span class="num" id="imgTypeNumber3"></span>)</em>
                        </a>
                    </div>
                </div>
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
                                        <a href="https://beijing.anjuke.com/community/view/56722" target="_blank" _soj=propview>${house.garden}</a>
                                    </dd>
                                </dl>
                                <dl><dt>所在位置：</dt>
                                    <dd>

                                        <p class="loc-text"><a href="https://beijing.anjuke.com/sale/chaoyang/" target="_blank" _soj=propview>${house.sheng}</a>－
                                            <a href="https://beijing.anjuke.com/sale/yayuncun/" target="_blank" _soj=propview>${house.shi}</a>－
                                            ${house.xian}</p>
                                        <i class="iconfont i-location">&#xE003;</i>
                                    </dd>
                                </dl>
                                <dl><dt>建造年代：</dt><dd>${house.buildingTime}</dd></dl>
                                <dl><dt>房屋类型：</dt><dd>${house.houseType}</dd></dl>
                            </div>
                            <div class="second-col detail-col">
                                <dl><dt>房屋户型：</dt><dd>
                                    ${house.room}室
                                    ${house.hall}厅
                                    ${house.toilet}卫
                                </dd></dl>
                                <dl><dt>建筑面积：</dt><dd>${house.area}平方米</dd></dl>
                                <dl><dt>房屋朝向：</dt><dd>${house.roomDirection}</dd></dl>
                                <dl><dt>所在楼层：</dt><dd>${house.floor}</dd></dl>
                            </div>
                            <div class="third-col detail-col">
                                <dl><dt>装修程度：</dt><dd>${house.fitment}</dd></dl>
                                <dl><dt>房屋单价：</dt><dd>${house.unitPrice}元/m²</dd></dl>
                                <dl><dt>参考首付：</dt><dd>
                                    ${house.monthlyPayments}万                    </dd></dl>
                                <dl><dt>参考月供：</dt>
                                    <dd><span id="reference_monthpay"> ${house.monthlyPayments}</span></dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--tags-->
<div class="houseInfo-desc">
    <!-- 二手房信息 -->
    <div class="houseInfo-item">
        <h5 class="houseInfo-item-title"><span class="iconfont">&#xE092;</span><span class="title-content">核心卖点</span></h5>
        <div class="houseInfo-item-desc js-house-explain">
            <span style="font-size:14px;">${house.sellingPoint}</span>        </div>
    </div>
    <!-- 二手房信息 -->
    <div class="houseInfo-item">
        <h5 class="houseInfo-item-title"><span class="iconfont">&#xE093;</span><span class="title-content">业主心态</span></h5>
        <div class="houseInfo-item-desc">
           ${house.ownerMentality} </div>
    </div>
    <!-- 二手房信息 -->
    <div class="houseInfo-item">
        <h5 class="houseInfo-item-title"><span class="iconfont">&#xE094;</span><span class="title-content">小区配套</span></h5>
        <div class="houseInfo-item-desc">
           ${house.communityComplete}  </div>
    </div>
    <!-- 二手房信息 -->
    <div class="houseInfo-item">
        <h5 class="houseInfo-item-title"><span class="iconfont">&#xE095;</span><span class="title-content">服务介绍</span></h5>
        <div class="houseInfo-item-tags clearfix">
            <span class="tags-service tags-money">佣金最高≤0.5%</span>
            <span class="tags-service">新房买卖</span>
            <span class="tags-service">新房代购</span>
            <span class="tags-service">投资咨询</span>
        </div>
        <div class="houseInfo-item-desc">
           ${house.serviceIntroduce}进入房地产行业已经3年，帮助数十位客户挑选满意的家，我们目前合作全北京100多个一手项目，长期合作的开发商有：远洋、、龙湖、、融创、鸿坤、融科、鲁能等地产龙头！ 我们公司理念是一个可以带您看全北京的项目，包括豪宅和别墅，为您快捷、高效、安全放心服务，节约您的时间和精力！ 如果您对本房不满意，可以点击我的头像进入我的房源库，更多全北京房源期待您的关注！        </div>
    </div>
    <!-- 租房信息 -->
</div>
</body>
<script>
    function slideshow(type){
        $.ajax({
            url:"../sellhouse/slideshow",
            type:"post",
            data:{"type":type,"sid":$("#houseId").val()},
            dataType:"json",
            async:false,
            success:function(data){
                var li = '';
                for(var i = 0;i < data.list.length;i++){
                    li += '<li><img src="'+data.list[i]+'" alt="图片已损坏" width="640" height="480" ></li>';
                }
                $("#housesLideshow").html(li);
                var unslider04 = $('#b04').unslider({
                        dots: true,
                        fluid: true,  //响应式
                        autoplay: true,  //自动播放
                        arrows: false  //显示“Prev”和“Next”的箭头

                    }),
                    data04 = unslider04.data('unslider');
                $('.unslider-arrow04').click(function() {
                    var fn = this.className.split(' ')[1];
                    data04[fn]();
                });
            }
        })
    }
    $(function(){
        $.ajax({
            url:"../sellhouse/slideshowCount",
            type:"post",
            data:{"houseId":$("#houseId").val()},
            dataType:"json",
            async:false,
            success:function(data){
                alert(data.one);
                $("#imgTypeNumber1").text(data.one);
                $("#imgTypeNumber2").text(data.two);
                $("#imgTypeNumber3").text(data.three);
                var li = '';
                for(var i = 0;i < data.list.length;i++){
                    li += '<li><img src="'+data.list[i]+'" alt="图片已损坏" width="640" height="480" ></li>';
                }
                $("#housesLideshow").html(li);
            }
        })
    })
    $(document).ready(function(e) {
        var unslider04 = $('#b04').unslider({
                dots: true,
                fluid: true,  //响应式
                autoplay: true,  //自动播放
                arrows: false  //显示“Prev”和“Next”的箭头

            }),
            data04 = unslider04.data('unslider');
        $('.unslider-arrow04').click(function() {
            var fn = this.className.split(' ')[1];
            data04[fn]();
        });
    });
</script>
</html>
