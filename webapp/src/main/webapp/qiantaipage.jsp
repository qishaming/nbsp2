<%--
  Created by IntelliJ IDEA.
  User: 张娜娜
  Date: 2018-5-11
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>前台页面</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%=path%>/fisrtpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="<%=path%>/fisrtpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
    <link href="<%=path%>/fisrtpage/basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="<%=path%>/fisrtpage/css/hmstyle.css" rel="stylesheet" type="text/css" />
    <script src="<%=path%>/js/jquery-3.2.1.js"></script>
    <script src="<%=path%>/fisrtpage/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="<%=path%>/fisrtpage/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>

<body>

<script type="text/javascript">



</script>
<script type="text/javascript">

    $.ajax({
        async : false,
        cache : false,
        timeout: 1000,
        url: ' ../../syzgoods/queryShowHtml.do',
        type: "post",
        success: function(data){

        },
        error:function(){

        }
    });
</script>

<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd" >
                    <c:if test="${empty sessionScope.user}">
                    <a href="login.jsp" target="_top" class="h">亲，请登录</a>
                    <a href="http://localhost:8085/zhuche.jsp" target="_top">免费注册</a>
                </c:if>
                    <c:if test="${!empty sessionScope.user}">
                        <h2>  欢迎用户<font color="red"   size="4">♔${sessionScope.user.username}♔</font>登录 	</h2>
                    </c:if>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng"><a onclick="tiaogeren()" ><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
            </div>
            <div class="topMessage mini-cart">
                <div class="menu-hd"><a id="mc-menu-hd" href="<%=path%>/cart.do" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
            </div>
            <div class="topMessage favorite">
                <div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
        </ul>
    </div>

    <!--悬浮搜索框-->

    <div class="nav white">
        <div class="logo"><img src="<%=path%>/fisrtpage/images/logo.png" /></div>
        <div class="logoBig">
            <li><img src="<%=path%>/fisrtpage/images/logobig.png" /></li>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="#"></a>
            <form   method="post"  action="<%=request.getContextPath()%>/listsolr/list">
                <input id="searchInput" name="key" type="text" placeholder="搜索" autocomplete="off">
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>


<div class="banner">
    <!--轮播 -->
    <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
        <ul class="am-slides" id="showphotos">
            <%--&lt;%&ndash;<li class="banner1"><a href="introduction.html"><img src="<%=path%>/fisrtpage/images/ad1.jpg" /></a></li>
            <li class="banner2"><a><img src="<%=path%>/fisrtpage/images/ad2.jpg" /></a></li>
            <li class="banner3"><a><img src="<%=path%>/fisrtpage/images/ad3.jpg" /></a></li>
            <li class="banner4"><a><img src="<%=path%>/fisrtpage/images/ad4.jpg" /></a></li>&ndash;%&gt;--%>

        </ul>
    </div>
    <div class="clear"></div>
</div>

<div class="shopNav">
    <div class="slideall">

        <div class="long-title" ><span class="all-goods" <%--onmouseover="div()"--%> id="sss1">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="#">首页</a></li>
                <li class="qc"><a href="#">闪购</a></li>
                <li class="qc"><a href="#">限时抢</a></li>
                <li class="qc"><a href="#">团购</a></li>
                <li class="qc last"><a href="#">大包装</a></li>
            </ul>
            <div class="nav-extra">
                <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
                <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
            </div>
        </div>

        <!--侧边导航 -->
        <div id="nav" class="navfull"  style="display:none">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">
                    <div class="category"  id="nav1">
                        <ul class="category-list" id="js_climit_li">

                        </ul>
                    </div>
                </div>

            </div>
        </div>



        <!--小导航 -->
        <div class="am-g am-g-fixed smallnav">
            <div class="am-u-sm-3">
                <a href="sort.html"><img src="<%=path%>/fisrtpage/images/navsmall.jpg" />
                    <div class="title">商品分类</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="<%=path%>/fisrtpage/images/huismall.jpg" />
                    <div class="title">大聚惠</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="<%=path%>/fisrtpage/images/mansmall.jpg" />
                    <div class="title">个人中心</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="<%=path%>/fisrtpage/images/moneysmall.jpg" />
                    <div class="title">投资理财</div>
                </a>
            </div>
        </div>

        <!--走马灯 -->

        <div class="marqueen" style="background-color:#FFCCCC">

            <h1><font color="red" >最新新闻</font></h1>
            <div name="title" style="color: deeppink " ></div>
            <ul>

                <li>

                </li>

            </ul>



        </div>
        <div class="clear"></div>
    </div>
    <script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function() {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }
            $(function() {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
    </script>
</div>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--今日推荐 -->

        <div class="am-g am-g-fixed recommendation">
            <div class="clock am-u-sm-3" >
            <img src="<%=path%>/fisrtpage/images/2016.png "></img>
            <p>今日<br>推荐</p>
        </div>
        <div class="am-u-sm-4 am-u-lg-3 ">
            <div class="info ">
                <h3>真的有鱼</h3>
                <h4>开年福利篇</h4>
            </div>
            <div class="recommendationMain ">
                <img src="<%=path%>/fisrtpage/images/tj.png "></img>
            </div>
        </div>
        <div class="am-u-sm-4 am-u-lg-3 ">
            <div class="info ">
                <h3>囤货过冬</h3>
                <h4>让爱早回家</h4>
            </div>
            <div class="recommendationMain ">
                <img src="<%=path%>/fisrtpage/images/tj1.png "></img>
            </div>
        </div>
        <div class="am-u-sm-4 am-u-lg-3 ">
            <div class="info ">
                <h3>浪漫情人节</h3>
                <h4>甜甜蜜蜜</h4>
            </div>
            <div class="recommendationMain ">
                <img src="<%=path%>/fisrtpage/images/tj2.png "></img>
            </div>
        </div>

    </div>
    <div class="clear "></div>
    <!--热门活动 -->

    <div class="am-container activity ">
        <div class="shopTitle ">
            <h4>活动</h4>
            <h3>每期活动 优惠享不停 </h3>
            <span class="more ">
                              <a class="more-link " href="# ">全部活动</a>
                            </span>
        </div>


        <div class="am-g am-g-fixed ">
            <div class="am-u-sm-3 ">
                <div class="icon-sale one "></div>
                <h4>秒杀</h4>
                <div class="activityMain ">
                    <img src="<%=path%>/fisrtpage/images/activity1.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>
            <div class="am-u-sm-3 ">
                <div class="icon-sale two "></div>
                <h4>特惠</h4>
                <div class="activityMain ">
                    <img src="<%=path%>/fisrtpage/images/activity2.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>
            <div class="am-u-sm-3 ">
                <div class="icon-sale three "></div>
                <h4>团购</h4>
                <div class="activityMain ">
                    <img src="<%=path%>/fisrtpage/images/activity3.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>
            <div class="am-u-sm-3 last ">
                <div class="icon-sale "></div>
                <h4>超值</h4>
                <div class="activityMain ">
                    <img src="<%=path%>/fisrtpage/images/activity.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>
        </div>
    </div>

    <div class="clear "></div>

    <!--甜点-->
        <div id="goods" >
        </div >


    <div class="footer ">
        <div class="footer-hd ">
            <p>
                <a href="# ">恒望科技</a>
                <b>|</b>
                <a href="# ">商城首页</a>
                <b>|</b>
                <a href="# ">支付宝</a>
                <b>|</b>
                <a href="# ">物流</a>
            </p>
        </div>
        <div class="footer-bd ">
            <p>
                <a href="# ">关于恒望</a>
                <a href="# ">合作伙伴</a>
                <a href="# ">联系我们</a>
                <a href="# ">网站地图</a>
                <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
            </p>
        </div>
    </div>
</div>
</div>
</div>
</div>
<!--引导 -->

<div class="navCir">
    <li class="active"><a href="home3.html"><i class="am-icon-home "></i>首页</a></li>
    <li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
    <li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>
    <li><a href="<%=path%>/fisrtpage/person/index.html"><i class="am-icon-user"></i>我的</a></li>
</div>
<!--菜单 -->
<div class=tip>
    <div id="sidebar">
        <div id="wrap">
            <div id="prof" class="item ">
                <a href="# ">
                    <span class="setting "></span>
                </a>
                <div class="ibar_login_box status_login ">
                    <div class="avatar_box ">
                        <p class="avatar_imgbox "><img src="<%=path%>/fisrtpage/images/no-img_mid_.jpg " /></p>
                        <ul class="user_info ">
                            <li>用户名：sl1903</li>
                            <li>级&nbsp;别：普通会员</li>
                        </ul>
                    </div>
                    <div class="login_btnbox ">
                        <a href="# " class="login_order ">我的订单</a>
                        <a href="# " class="login_favorite ">我的收藏</a>
                    </div>
                    <i class="icon_arrow_white "></i>
                </div>

            </div>
            <div id="shopCart " class="item ">
                <a href="# ">
                    <span class="message "></span>
                </a>
                <p>
                    购物车
                </p>
                <p class="cart_num ">0</p>
            </div>
            <div id="asset " class="item ">
                <a href="# ">
                    <span class="view "></span>
                </a>
                <div class="mp_tooltip ">
                    我的资产
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="foot " class="item ">
                <a href="# ">
                    <span class="zuji "></span>
                </a>
                <div class="mp_tooltip ">
                    我的足迹
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="brand " class="item ">
                <a href="#">
                    <span class="wdsc "><img src="<%=path%>/fisrtpage/images/wdsc.png " /></span>
                </a>
                <div class="mp_tooltip ">
                    我的收藏
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="broadcast " class="item ">
                <a href="# ">
                    <span class="chongzhi "><img src="<%=path%>/fisrtpage/images/chongzhi.png " /></span>
                </a>
                <div class="mp_tooltip ">
                    我要充值
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div class="quick_toggle ">
                <li class="qtitem ">
                    <a href="# "><span class="kfzx "></span></a>
                    <div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
                </li>
                <!--二维码 -->
                <li class="qtitem ">
                    <a href="#none "><span class="mpbtn_qrcode "></span></a>
                    <div class="mp_qrcode " style="display:none; "><img src="<%=path%>/fisrtpage/images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
                </li>
                <li class="qtitem ">
                    <a href="#top " class="return_top "><span class="top "></span></a>
                </li>
            </div>

            <!--回到顶部 -->
            <div id="quick_links_pop " class="quick_links_pop hide "></div>

        </div>

    </div>
    <div id="prof-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            我
        </div>
    </div>
    <div id="shopCart-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            购物车
        </div>
    </div>
    <div id="asset-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            资产
        </div>

        <div class="ia-head-list ">
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">优惠券</div>
            </a>
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">红包</div>
            </a>
            <a href="# " target="_blank " class="pl money ">
                <div class="num ">￥0</div>
                <div class="text ">余额</div>
            </a>
        </div>

    </div>
    <div id="foot-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            足迹
        </div>
    </div>
    <div id="brand-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            收藏
        </div>
    </div>
    <div id="broadcast-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            充值
        </div>
    </div>
</div>
<script>
    window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
</script>
<script type="text/javascript " src="<%=path%>/fisrtpage/basic/js/quick_links.js "></script>

<script type="text/javascript">
    function tiaogeren() {
        var aa=${sessionScope.user.username};
        if(aa==null&&aa==""){
            alert("请先登陆")
        }else(
            location.href="<%=path%>/jpl/queryOrder"
        )

    }

</script>
<script type="text/javascript">








    $(function(){
            var t=0;
        $.ajax({
            url:"<%=request.getContextPath()%>/login/queryDaXiao",
            type:"post",
            data:"",
            dataType:"json",
            async:false,
            success:function (data){
                var tr="";//拼接大类
                var td="";//拼接商品
                var count=0;
                $.each(data,function() {
                    t++;
                    count++;
                    //循环加载大类
                    tr += '<li class="appliance js_toggle relative first">' +
                        '<div class="category-info"  >' +
                        '<h3 class="category-name b-category-name" ><i><img src="<%=path%>/fisrtpage/images/cake.png"></i><a class="ml-22" title="'+this.bigTypeName+'" onmouseover="xiao('+this.bigTypeId+','+count+',\''+this.bigTypeName+'\')">'+this.bigTypeName+'</a></h3>' +
                        '<em>&gt;</em>' +
                        '</div>' +
                        '<div class="menu-item menu-in top">' +
                        ' <div class="area-in">' +
                        ' <div class="area-bg">' +
                        '<div class="menu-srot"   >' +
                        '<div class="sort-side" >' +
                        '<dl class="dl-sort" id="xiaolei'+count+'"  >' +
                        '  <dt><span title="蛋糕">'+this.bigTypeName+'</span></dt>' +
                        '</dl>' +
                        '</div>' +
                        '<div class="brand-side">' +
                        ' <dl class="dl-sort"><dt><span>实力商家</span></dt>' +
                        ' <dd><a rel="nofollow" title="呵官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵官方旗舰店</span></a></dd>' +
                        '  </dl>' +
                        ' </div></div></div></div></div>' +
                        '<b class="arrow"></b>' +
                        ' </li>';


                    td+='<div id="f'+t+'">' +
                        '<div class="am-container ">' +
                        '<div class="shopTitle ">' +
                        '<h4>'+this.bigTypeName+'</h4>' +
                        '<div class="today-brands">' +
                        '</div>' +
                        '<span class="more">' +
                        '<a href="search.jsp?id='+this.bigTypeId+'">更多<font color="red">'+this.bigTypeName+'</font>商品<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>\n' +
                        '</span>' +
                        '</div>' +
                        '</div>' +
                        '<div class="am-g am-g-fixed floodFour">' +
                        '<div class="am-u-sm-5 am-u-md-4 text-one list ">' +
                        '<a href="# ">' +
                        '<div class="outer-con ">' +
                        '<h1><font color="red">开抢啦！！！</font></h1>' +
                        '<div class="title " >' +
                        '</div>' +
                        '<div class="sub-title ">' +
                        '<h4><font color="red">'+this.bigTypeName+'</font>清仓大甩卖</h4>' +
                        '</div>' +
                        '</div>' +
                        '<img src="<%=path%>/fisrtpage/images/logobig.png " />' +
                        '</a>' +
                        '<div class="triangle-topright"></div>' +
                        '</div>' +
                        '<div id="r'+t+'"></div>' +
                        '<div class="clear "></div>' +
                        '</div>' +
                        '</div>';
                })
                $("#js_climit_li").append(tr)
                $("#goods").append(td)
                     //循环执行ajax

                $.each(data,function() {
                    var gt=this.bigTypeId;
                    $.ajax({
                        url: "<%=request.getContextPath()%>/login/queryGoods",
                        type: "post",
                        data: {"id": this.bigTypeId},
                        dataType: "json",
                        success: function (datas) {
                            tp = '';
                            script='';
                            $.each(datas,function(){
                                tp +=" <div class='am-u-sm-7 am-u-md-4 text-two'>"+"<div class='outer-con'>"+
                                    "<div class=\'title \'>"+this.goodsName+"</div><div class=\'sub-title \'>"
                                    +"¥"+this.goodsPrice+"</div>"+"<i class=\'am-icon-shopping-basket am-icon-md  seprate\'></i>" +
                                    "</div>"+"<a href='#' onclick='queryGoods("+this.goodsId+");'><img src='http://192.168.3.118:8085"+this.goodsimg+"' width='200px' height='150px'/></a></div>";

                            } )
                            $("#r"+gt+"").html(tp);
                        }
                    })
                })
            }
        })


    })














        function xiao(id,count,name) {
            $.ajax({
                url:"<%=request.getContextPath()%>/login/queryXiao",
                type:"post",
                data:{"bid":id},
                dataType:"json",
                success:function (data){
                    var tr='<dt><span title="'+name+'">'+name+'</span></dt>';
                    $.each(data,function() {
                         tr+='<dd><a title="'+this.smallTypeName+'" href="search.jsp?id='+this.bigTypeId+'"><span>'+this.smallTypeName+'</span></a></dd>' ;
                    })
                    $("#xiaolei"+count+"").html(tr)
                    if(count!=null & count!=""){

                    }
                },
                error:function (){
                    alert("大小类加载失败")
                }
            })
        }


        //div 商品导航显示
    $("#sss1").on({
        mouseover:function () {
            $("#nav").show();
        }
    })
    $("#nav1").on({
        mouseover:function () {
            $("#nav").show();
        },
        mouseout:function () {
            $("#nav").hide()
        }
    })



    //新闻

    $.ajax({
        url:"<%=request.getContextPath()%>/new/queryNew",
        type:"post",
        dataType:"json",
        async:false,
        success:function (mt){
            var div= "";
            $(mt).each(function (){
                div += "<div value='"+this.newsid+"' onclick='diannew("+this.newsid+")'><font color='#FFFFFF'> "+this.title+"</font></div><br/>";
            });
            $("[name='title']").html(div);
        },
        error:function (){
            alert("程序出错2");
        }
    });
    function  diannew(id){
        location.href="<%=request.getContextPath()%>/new/queryNewHtml?newsid="+id;

    }

   function queryGoods(id) {

       location.href="<%=request.getContextPath()%>/pyg/"+id+".html";
   }






</script>



<!--轮播 -->
<script type="text/javascript">
    $.ajax({
        url:"<%=path%>/ZnnController/queryPhoto.do",
        type:"post",
        dataType:"json",
        success:function(data){
            var html="";
            for(var i = 0; i < data.length; i++){
                if (data[i].gstate==1){
                    html+= "<li class='banner"+i+"'><a><img src='http://localhost:8085"+data[i].gphoto+"' onclick='findMerchant("+data[i].gmid+")'/></a></li>";
                }
            }
            $("#showphotos").append(html);
            $('.am-slider').flexslider();
            /*$(document).ready(function() {*/
            $("li").hover(function() {
                $(".category-content .category-list li.first .menu-in").css("display", "none");
                $(".category-content .category-list li.first").removeClass("hover");
                $(this).addClass("hover");
                $(this).children("div.menu-in").css("display", "block")
            }, function() {
                $(this).removeClass("hover")
                $(this).children("div.menu-in").css("display", "none")
            });
            /*})*/
        }
    })
    /* (function() {
         $('.amslider-').flexslider();
     });*/
    function findMerchant(gmid) {
        alert(gmid)
        location.href="<%=path%>/ZnnController/toqueryMerchantInfo.do?gmid="+gmid;
    }


</script>

</body>





</html>