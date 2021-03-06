<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>结算页面</title>

		<link href="<%=path%>/fisrtpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/fisrtpage/basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/fisrtpage/css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/fisrtpage/css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="<%=path%>/fisrtpage/js/address.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery-3.2.1.js"></script>

	</head>

	<body>

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
					<div class="menu-hd MyShangcheng"><a href="#" onclick="tiaogeren()" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
				</div>
				<div class="topMessage mini-cart">
					<div class="menu-hd"><a id="mc-menu-hd" href="<%=path%>/cart.do " target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
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
					<form>
						<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
						<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
					</form>
				</div>
			</div>

			<div class="clear"></div>
			<div class="concent">
				<!--地址 -->
				<div class="paycont">
					<div class="address">
						<h3>确认收货地址 </h3>
						<div class="control">
							<div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
						</div>
						<div class="clear"></div>
						<ul>
							<div class="per-border"></div>
							<li class="user-addresslist defaultAddr">

								<div class="address-left">
									<div class="user DefaultAddr">

										<span class="buy-address-detail">   
                   <span class="buy-user">艾迪 </span>
										<span class="buy-phone">15871145629</span>
										</span>
									</div>
									<div class="default-address DefaultAddr">
										<span class="buy-line-title buy-line-title-type">收货地址：</span>
										<span class="buy--address-detail">
								   <span class="province">湖北</span>省
										<span class="city">武汉</span>市
										<span class="dist">洪山</span>区
										<span class="street">雄楚大道666号(中南财经政法大学)</span>
										</span>

										</span>
									</div>
									<ins class="deftip">默认地址</ins>
								</div>
								<div class="address-right">
									<a href="<%=path%>/fisrtpage/person/address.html">
										<span class="am-icon-angle-right am-icon-lg"></span></a>
								</div>
								<div class="clear"></div>

								<div class="new-addr-btn">
									<a href="#" class="hidden">设为默认</a>
									<span class="new-addr-bar hidden">|</span>
									<a href="#">编辑</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);" onclick="delClick(this);">删除</a>
								</div>

							</li>
							<div class="per-border"></div>
							<li class="user-addresslist">
								<div class="address-left">
									<div class="user DefaultAddr">

										<span class="buy-address-detail">   
                   <span class="buy-user">艾迪 </span>
										<span class="buy-phone">15871145629</span>
										</span>
									</div>
									<div class="default-address DefaultAddr">
										<span class="buy-line-title buy-line-title-type">收货地址：</span>
										<span class="buy--address-detail">
								   <span class="province">湖北</span>省
										<span class="city">武汉</span>市
										<span class="dist">武昌</span>区
										<span class="street">东湖路75号众环大厦2栋9层902</span>
										</span>

										</span>
									</div>
									<ins class="deftip hidden">默认地址</ins>
								</div>
								<div class="address-right">
									<span class="am-icon-angle-right am-icon-lg"></span>
								</div>
								<div class="clear"></div>

								<div class="new-addr-btn">
									<a href="#">设为默认</a>
									<span class="new-addr-bar">|</span>
									<a href="#">编辑</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);"  onclick="delClick(this);">删除</a>
								</div>

							</li>

						</ul>

						<div class="clear"></div>
					</div>
					<!--物流 -->
					<div class="logistics">
						<h3>选择物流方式</h3>
						<ul class="op_express_delivery_hot">
							<li data-value="yuantong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -468px"></i>圆通<span></span></li>
							<li data-value="shentong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -1008px"></i>申通<span></span></li>
							<li data-value="yunda" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -576px"></i>韵达<span></span></li>
							<li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last "><i class="c-gap-right" style="background-position:0px -324px"></i>中通<span></span></li>
							<li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i class="c-gap-right" style="background-position:0px -180px"></i>顺丰<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--支付方式-->
					<div class="logistics">
						<h3>选择支付方式</h3>
						<ul class="pay-list">
							<li class="pay card"><img src="<%=path%>/fisrtpage/images/wangyin.jpg" />银联<span></span></li>
							<li class="pay qq"><img src="<%=path%>/fisrtpage/images/weizhifu.jpg" />微信<span></span></li>
							<li class="pay taobao"><img src="<%=path%>/fisrtpage/images/zhifubao.jpg" />支付宝<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--订单 -->
					<div class="concent">
						<div id="payTable">
							<h3>确认订单信息</h3>
							<div class="cart-table-th">
								<div class="wp">

									<div class="th th-item">
										<div class="td-inner">商品信息</div>
									</div>
									<div class="th th-price">
										<div class="td-inner">单价</div>
									</div>
									<div class="th th-amount">
										<div class="td-inner">数量</div>
									</div>
									<div class="th th-sum">
										<div class="td-inner">金额</div>
									</div>
									<div class="th th-oplist">
										<div class="td-inner">配送方式</div>
									</div>

								</div>
							</div>
							<div class="clear"></div>

							<%--从cookie中取出的数据在前台遍历放在表格中--%>
							<c:forEach var="ff" items="${cart1}">
							<table id="tab">
								<tr class="item-list" >

									<div class="bundle-main">
										<ul class="item-content clearfix">

											<li class="td td-item">
												<div class="item-pic">
													<a href="#" target="_blank" data-title="美康粉黛醉美东方唇膏口红正品 持久保湿滋润防水不掉色护唇彩妆" class="J_MakePoint" data-point="tbcart.8.12">
														<img src="http://192.168.3.118:8085${ff.goodsimg}" class="itempic J_ItemImg"></a>
														<%--http://192.168.3.247:8080${ff.goodsimg}  f--%>
												</div>
												<div class="item-info">
													<div class="item-basic-info">
														<a href="#" target="_blank" title="美康粉黛醉美唇膏 持久保湿滋润防水不掉色" class="item-title J_MakePoint" data-point="tbcart.8.11">${ff.goodsname}</a>
													</div>
												</div>
											</li>
											<li class="td td-info">
												<div class="item-props item-props-can">
													<span class="sku-line">${ff.goodsScript}</span>
													<%--<span tabindex="0" class="btn-edit-sku theme-login">修改</span>--%>
													<i class="theme-login am-icon-sort-desc"></i>
												</div>
											</li>
											<li class="td td-price">
												<div class="item-price price-promo-promo">
													<div class="price-content">
														<div class="price-line">
															<em class="price-original">78.00</em>
														</div>
														<div class="price-line">
															<em class="J_Price price-now" tabindex="0">${ff.goodsPrice}</em>
															<input type="hidden" id="goodsPriceId"  value="${ff.goodsPrice}">
															<input type="hidden" id="goodnum"  value="${ff.goodnum}">
															<input type="hidden" id="goodsid"  value="${ff.goodsid}">
														</div>
													</div>
												</div>
											</li>
											<li class="td td-amount">
												<div class="amount-wrapper ">
													<div class="item-amount ">
														<div class="sl">

																<%--	<input class="min" name="" type="button" value="-" />
                                                                    <input class="text_box" name="" type="text" value="1" />
                                                                    <input class="add" name="" type="button" value="+" />
                --%>
															<%--<input class="min am-btn" name="" id="min" type="button"  value="-" />--%>
																	<input class="text_box" name="" id="text_box" type="text"  disabled value="${ff.goodnum}" style="width:30px;" />
																	<%--<input class="add am-btn" name="" id="add" type="button"   value="+" />--%>
														</div>
													</div>
												</div>
											</li>
											<li class="td td-sum">
												<div class="td-inner">
														<%--<em tabindex="0" class="J_ItemSum number">--%>
													<span id="total1"></span>
												</div>
											</li>
											<%--<li class="td td-op">
												<div class="td-inner">
													<a title="移入收藏夹" class="btn-fav" href="#">
														移入收藏夹</a>
													<a href="javascript:;" data-point-url="#" class="delete">
														删除</a>
												</div>
											</li>--%>
										</ul>

									</div>
						</tr>
						</table>
						</c:forEach>


							<div class="pay-total">
						<!--留言-->
							<div class="order-extra">
								<div class="order-user-info">
									<div id="holyshit257" class="memo">
										<label>买家留言：</label>
										<input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
										<div class="msg hidden J-msg">
											<p class="error">最多输入500个字符</p>
										</div>
									</div>
								</div>

							</div>
							<!--优惠券 -->
					<%--		<div class="buy-agio">
								<li class="td td-coupon">

									<span class="coupon-title">优惠券</span>
									<select data-am-selected>
										<option value="a">
											<div class="c-price">
												<strong>￥8</strong>
											</div>
											<div class="c-limit">
												【消费满95元可用】
											</div>
										</option>
										<option value="b" selected>
											<div class="c-price">
												<strong>￥3</strong>
											</div>
											<div class="c-limit">
												【无使用门槛】
											</div>
										</option>
									</select>
								</li>--%>



							</div>
							<div class="clear"></div>
							</div>
							<!--含运费小计 -->
							<div class="buy-point-discharge ">
								<p class="price g_price ">
									合计（含运费） <span>¥</span><em class="pay-sum"><span id="total3"></span></em>
								</p>
							</div>

							<!--信息 -->
							<div class="order-go clearfix">
								<div class="pay-confirm clearfix">
									<div class="box">
										<div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
											<span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee"><span id="total2"></span></em>
											</span>
										</div>

										<div id="holyshit268" class="pay-address">

											<p class="buy-footer-address">
												<span class="buy-line-title buy-line-title-type">寄送至：</span>
												<span class="buy--address-detail">
								   <span class="province">湖北</span>省
												<span class="city">武汉</span>市
												<span class="dist">洪山</span>区
												<span class="street">雄楚大道666号(中南财经政法大学)</span>
												</span>
												</span>
											</p>
											<p class="buy-footer-address">
												<span class="buy-line-title">收货人：</span>
												<span class="buy-address-detail">   
                                         <span class="buy-user">艾迪 </span>
												<span class="buy-phone">15871145629</span>
												</span>
											</p>
										</div>
									</div>

									<div id="holyshit269" class="submitOrder">
										<div class="go-btn-wrap">
											<%--<%=path%>/one/home/success.jsp--%>
												<%--总价放在后台计算
												$('#total2').val(),--%>
												<a href="#" onclick="addBrand()" class="btn-go" >提交订单</a>
<%--
											<a id="J_Go" href="javascript:void(0);" onclick="addBrand(${ff.goodsid},${ff.goodnum},${ff.goodsPrice})" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
--%>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
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
			<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" id="user-name" placeholder="收货人">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								<input id="user-phone" placeholder="手机号必填" type="email">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">所在地</label>
							<div class="am-form-content address">
								<select data-am-selected>
									<option value="a">浙江省</option>
									<option value="b">湖北省</option>
								</select>
								<select data-am-selected>
									<option value="a">温州市</option>
									<option value="b">武汉市</option>
								</select>
								<select data-am-selected>
									<option value="a">瑞安区</option>
									<option value="b">洪山区</option>
								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
								<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
								<small>100字以内写出你的详细地址<%=path%>/fisrtpage.</small>
							</div>
						</div>

						<div class="am-form-group theme-poptit">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<div class="am-btn am-btn-danger">保存</div>
								<div class="am-btn am-btn-danger close">取消</div>
							</div>
						</div>
					</form>
				</div>

			</div>

			<div class="clear"></div>



	<script type="text/javascript">

        function addBrand(){
			var gp = $("#goodsPriceId").val();
			var gn = $("#goodnum").val();
			var gid = $("#goodsid").val();
            $.ajax({
                url:"<%=path%>/addBrand.do",
                type:"post",
                data:{'id':gid,'gnum':gn,'gprice':gp},
                dataType:"text",
                success:function (result){
                    if(result==1){
                       /* location.href="<%=path%>/shopcart.jsp";*/
                        location.href="<%=path%>/toSuccess.do";

                    }
                },
                error:function (){
                    alert("error！");
                }
            })
        }

        /*跳转至个人中心*/
        function tiaogeren() {
            var aa=${sessionScope.user.username};
            if(aa==null&&aa==""){
                alert("请先登陆")
            }else(
                location.href="<%=path%>/jpl/queryOrder"
            )
        }



		/*计算价格*/
        $(function(){
            $("#add").click(function(){
                var t=$(this).parent().find('input[class*=text_box]');
                var s = parseInt(t.val());
                alert(s);
                t.val(s++);
                setTotal();
            })
            $("#min").click(function(){
                var t=$(this).parent().find('input[class*=text_box]');
                var s = parseInt(t.val());
                s--;
                if(s=0){
                    t.val(0);
                }
                setTotal();
            })
            function setTotal(){
                var t=$(this).parent().find('input[class*=text_box]');
                var s = parseInt(t.val());
                var ss = 0;
                var  g = $("#goodsPriceId").val();
                var  t = $(".text_box").val();
                alert(g)
                alert(t)
                $("#tab tr").each(function(){
                    ss+=parseInt(t) * parseFloat(g);
                });
                $("#total1").html(ss.toFixed(2));
                $("#total2").html(ss.toFixed(2));
                $("#total3").html(ss.toFixed(2));
            }
            setTotal();
        })





	</script>
	</body>

</html>