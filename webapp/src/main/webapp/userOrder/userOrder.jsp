<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/5/24
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>订单管理</title>

    <link href="../fisrtpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="../fisrtpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="../fisrtpage/css/personal.css" rel="stylesheet" type="text/css">
    <link href="../fisrtpage/css/orstyle.css" rel="stylesheet" type="text/css">

    <script src="../fisrtpage/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../fisrtpage/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

</head>

<body>
<!--头 -->
<header>
    <article>
        <div class="mt-logo">
            <!--顶部导航条 -->
            <div class="am-container header">
                <ul class="message-l">
                    <div class="topMessage">
                        <div class="menu-hd">
                            <c:if test="${empty sessionScope.user}">
                                <a href="login.jsp" target="_top" class="h">亲，请登录</a>
                                <a href="http://localhost:8080/zhuche.jsp" target="_top">免费注册</a>
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
                        <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
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
                <div class="logoBig">
                    <li><img src="../fisrtpage/images/logobig.png" /></li>
                </div>

                <div class="search-bar pr">
                    <a name="index_none_header_sysc" href="#"></a>
                    <form>
                        <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                        <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
                    </form>
                </div>
            </div>

            <div class="clear"></div>
        </div>
        </div>
    </article>
</header>
<div class="nav-table">
    <div class="long-title"><span class="all-goods">全部分类</span></div>
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
</div>
<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-order">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                    <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">所有订单</a></li>
                        <li><a href="#tab2">待付款</a></li>
                        <li><a href="#tab3">待发货</a></li>
                        <li><a href="#tab4">待收货</a></li>
                        <li><a href="#tab5">待评价</a></li>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--交易成功-->

                                    <c:forEach items="${list}" var="list">
                                    <div class="order-status5">
                                        <div class="order-title">



                                            <div class="dd-num">订单编号：<a href="javascript:;">${list.orderFormId}</a></div>
                                            <span>成交时间：${list.orderUpdateTime}</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="http://192.168.3.118:8085${list.goodsimg}" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>${list.goodsname}</p>
                                                                    <p class="info-little">描述：${list.goodsScript}
                                                                        <br/>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                                ${list.goodsPrice}
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>${list.customerCount}
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>

                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：${list.orderFormTotalPrice}
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <c:if test="${list.orderFormState==1}">
                                                            <p class="order-info"><a href="logistics.html">已付款</a></p>
                                                            </c:if>
                                                            <c:if test="${list.orderFormState==2}">
                                                            <p class="order-info"><a href="logistics.html">商家已发货</a></p>
                                                            </c:if>
                                                            <c:if test="${list.orderFormState==3}">
                                                            <p class="order-info"><a href="logistics.html">已签收</a></p>
                                                            </c:if>
                                                            <c:if test="${list.orderFormState==4}">
                                                            <p class="order-info"><a href="logistics.html">已评价</a></p>
                                                            </c:if>
                                                            <c:if test="${list.orderFormState==5}">
                                                            <p class="order-info"><a href="logistics.html">退货审核中</a></p>
                                                            </c:if>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <c:if test="${list.orderFormState==4}">
                                                        <button class="am-btn am-btn-danger anniu" onclick="delOrder(${list.orderFormId})">
                                                            删除订单</button>
                                                        <button class="am-btn am-btn-danger anniu" onclick="tuiOrder(${list.orderFormId})">
                                                            申请退货</button>
                                                        </c:if>
                                                        <c:if test="${list.orderFormState==3}">
                                                        <button class="am-btn am-btn-danger anniu" onclick="pingJiaOrder(${list.orderFormId})">
                                                            点击评价</button>
                                                        <button class="am-btn am-btn-danger anniu" onclick="tuiOrder(${list.orderFormId})">
                                                            申请退货</button>
                                                        </c:if>
                                                        <c:if test="${list.orderFormState==2}">
                                                        <button class="am-btn am-btn-danger anniu" onclick="shouOrder(${list.orderFormId})">
                                                            点击签收</button>
                                                        </c:if>
                                                        <c:if test="${list.orderFormState==1}">
                                                        <button class="am-btn am-btn-danger anniu" onclick="cuiOrder(${list.orderFormId})">
                                                            催促发货</button>
                                                        </c:if>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>



                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--底部-->
        <div class="footer">
            <div class="footer-hd">
                <p>
                    <a href="#">恒望科技</a>
                    <b>|</b>
                    <a href="#">商城首页</a>
                    <b>|</b>
                    <a href="#">支付宝</a>
                    <b>|</b>
                    <a href="#">物流</a>
                </p>
            </div>
            <div class="footer-bd">
                <p>
                    <a href="#">关于恒望</a>
                    <a href="#">合作伙伴</a>
                    <a href="#">联系我们</a>
                    <a href="#">网站地图</a>
                    <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
                </p>
            </div>

        </div>
    </div>
    <aside class="menu">
        <ul>
            <li class="person">
                <a href="index.html">个人中心</a>
            </li>
            <li class="person">
                <a href="#">个人资料</a>
                <ul>
                    <li> <a href="information.html">个人信息</a></li>
                    <li> <a href="safety.html">安全设置</a></li>
                    <li> <a href="address.html">收货地址</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">我的交易</a>
                <ul>
                    <li class="active"><a href="order.html">订单管理</a></li>
                    <li> <a href="change.html">退款售后</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">我的资产</a>
                <ul>
                    <li> <a href="coupon.html">优惠券 </a></li>
                    <li> <a href="bonus.html">红包</a></li>
                    <li> <a href="bill.html">账单明细</a></li>
                </ul>
            </li>

            <li class="person">
                <a href="#">我的小窝</a>
                <ul>
                    <li> <a href="collection.html">收藏</a></li>
                    <li> <a href="foot.html">足迹</a></li>
                    <li> <a href="comment.html">评价</a></li>
                    <li> <a href="news.html">消息</a></li>
                </ul>
            </li>

        </ul>

    </aside>
</div>
<script type="text/javascript">





    //催促发货
    function cuiOrder(id) {
        alert("已催促商家发货！！！");
    }
    //收货
    function shouOrder(id) {
        $.ajax({
            url:"<%=request.getContextPath()%>/jpl/shouOrder",
            type:"post",
            data:{"orderFormId":id},

            success:function (){
                     alert('成功！');

            }
        })
    }
    //评价
    function pingJiaOrder(id) {
        alert("尚未开通此功能，给您带来的不便，我们深表歉意！");
    }
    //删除订单
    function delOrder(id) {
        $.ajax({
            url:"<%=request.getContextPath()%>/jpl/delOrder",
            type:"post",
            dataType:"text",
            data:{"orderFormId":id},

            success:function (){
                alert('成功！');

            }
        })
    }
    //退订单
    function tuiOrder(id) {
        $.ajax({
            url:"<%=request.getContextPath()%>/jpl/tuiOrder",
            type:"post",
            data:{"orderFormId":id},
            dataType:"text",
            success:function (){
                alert('成功！');

            }
        })
    }
</script>
</body>

</html>