<%@ page import="java.nio.file.Path" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath(); %>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>



		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>购物车页面</title>

		<link href="<%=path%>/fisrtpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/fisrtpage/basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/fisrtpage/css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/fisrtpage/css/optstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="<%=path%>/fisrtpage/js/jquery.js"></script>

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
					<div class="menu-hd MyShangcheng"><a href="#"  onclick="tiaogeren()" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
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
					<form>
						<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
						<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
					</form>
				</div>
			</div>

			<div class="clear"></div>

			<!--购物车 -->
			<div class="concent">
				<div id="cartTable">
					<div class="cart-table-th">
						<div class="wp">
							<div class="th th-chk">
								<div id="J_SelectAll1" class="select-all J_SelectAll">

								</div>
							</div>
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
							<div class="th th-op">
								<div class="td-inner">操作</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>


					<%--private  Integer goodsid;
					private String goodsname;
					private Integer typeid;
					private Integer brandId;
					private Integer sizeId;
					private String goodsimg;
					private String goodsPrice;
					private String goodsDiscounts;
					private Integer goodsAuditState;
					private Integer merchantId;
					private Integer goodnum;--%>

			<%--从cookie中取出的数据在前台遍历放在表格中--%>
					<c:forEach var="ff" items="${cart1}">
					<table id="tab">
					<tr class="item-list" >
						<%--<div class="bundle  bundle-last ">
							<div class="bundle-hd">
								<div class="bd-promos">
									<div class="bd-has-promo">已享优惠:<span class="bd-has-promo-content">省￥19.50</span>&nbsp;&nbsp;</div>
									<div class="act-promo">
										<a href="#" target="_blank">第二支半价，第三支免费<span class="gt">&gt;&gt;</span></a>
									</div>
									<span class="list-change theme-login">编辑</span>
								</div>
							</div>--%>
							<%--<div class="clear"></div>--%>
							<div class="bundle-main">
								<ul class="item-content clearfix">
									<li class="td td-chk">
										<div class="cart-checkbox ">
<%--
											<input class="check" id="J_CheckBox_170037950254" name="items[]" value="170037950254" type="checkbox">
--%>
											<input class="check-all check" id="J_CheckBox_170037950254" name="quanxuan" value="true" type="checkbox">
											<label for="J_CheckBox_170037950254"></label>
										</div>
									</li>
									<li class="td td-item">
										<div class="item-pic">
											<a target="_blank" data-title="美康粉黛醉美东方唇膏口红正品 持久保湿滋润防水不掉色护唇彩妆" class="J_MakePoint" data-point="tbcart.8.12">
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
											<span class="sku-line"><%--${ff.goodsScript}--%></span>
											<span>${ff.goodsScript}</span>
											<span tabindex="0" class="btn-edit-sku theme-login">修改</span>
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
													<input type="hidden" id="goodsPriceId" class="goodsPriceId" value="${ff.goodsPrice}">
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
													<input class="min am-btn" name="" id="min" type="button"   value="-" />
													<input class="text_box" name="" id="text_box" type="text"  value="${ff.goodnum}" style="width:30px;" />
													<input class="add am-btn" name="" id="add" type="button"    value="+" />
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
									<li class="td td-op">
										<div class="td-inner">
											<a title="移入收藏夹" class="btn-fav" href="javascript:void(0);" onclick="shoucangjia()">
                  移入收藏夹</a>
											<%--暂时注释，因为如何从cookie中删除数据还不会！2018-5-27--%>
											<a  onclick="delGoodsInfo(${ff.goodsid})"  class="delete">删除</a>
										</div>
									</li>
								</ul>

							</div>
						</div>
					</tr>
				</table>
					</c:forEach>
<%-------------------------------------------------------------------------------------------------------------------------------%>
<%-------------------------------------------------------------------------------------------------------------------------------%>
				<div class="clear"></div>

				<div class="float-bar-wrapper">
					<div id="J_SelectAll2" class="select-all J_SelectAll">
						<div class="cart-checkbox">
							<input class="check-all check" id="J_SelectAllCbx2" name="quanxuan" value="true" type="checkbox">
							<%--<label for="J_SelectAllCbx2"></label>--%>
						</div>
						<span>全选</span>
					</div>
					<div class="operations">
						<a href="#" hidefocus="true" class="deleteAll">删除</a>
						<a href="#" hidefocus="true" class="J_BatchFav">移入收藏夹</a>
					</div>
					<div class="float-bar-right">
						<div class="amount-sum">
							<span class="txt">已选商品</span>
							<em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
							<div class="arrow-box">
								<span class="selected-items-arrow"></span>
								<span class="arrow"></span>
							</div>
						</div>
						<div class="price-sum">
							<span class="txt">合计:</span>
							<strong class="price">¥<em id="J_Total"><span id="total2"></span></em></strong>
						</div>
						<div class="btn-area">
							<a href="<%=path%>/cartToJiesuan.do"  class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">
								<span>结&nbsp;算</span></a>
						</div>
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

			<!--操作页面-->

			<div class="theme-popover-mask"></div>

			<div class="theme-popover">
				<div class="theme-span"></div>
				<div class="theme-poptit h-title">
					<a href="javascript:;" title="关闭" class="close">×</a>
				</div>
				<div class="theme-popbod dform">
					<form class="theme-signin" name="loginform" action="" method="post">

						<div class="theme-signin-left">

							<li class="theme-options">
								<div class="cart-title">颜色：</div>
								<ul>
									<li class="sku-line selected">${ff.goodsScript}</li>
									<span>${ff.goodsScript}</span>
								</ul>
							</li>
							<div class="theme-options">
								<div class="cart-title number">数量</div>
								<dd>
									<input class="min am-btn am-btn-default" name="" type="button" value="-" />
									<input class="text_box" name="" type="text" value="1" style="width:30px;" />
									<input class="add am-btn am-btn-default" name="" type="button" value="+" />
									<span  class="tb-hidden">库存<span class="stock">1000</span>件</span>
								</dd>

							</div>
							<div class="clear"></div>
							<div class="btn-op">
								<div class="btn am-btn am-btn-warning">确认</div>
								<div class="btn close am-btn am-btn-warning">取消</div>
							</div>

						</div>
						<div class="theme-signin-right">
							<div class="img-info">
								<img src="<%=path%>/fisrtpage/images/kouhong.jpg_80x80.jpg" />
							</div>
							<div class="text-info">
								<span class="J_Price price-now">¥39.00</span>
								<span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
							</div>
						</div>

					</form>
				</div>
			</div>
		<!--引导 -->
		<div class="navCir">
			<li><a href="one/home/home.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="one/home/sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li class="active"><a href="shopcart.jsp"><i class="am-icon-shopping-basket"></i>购物车</a></li>
			<li><a href="one/person/index.html"><i class="am-icon-user"></i>我的</a></li>
		</div>


		<script type="text/javascript">


			/*跳转至个人中心*/
            function tiaogeren() {
                var aa=${sessionScope.user.username};
                if(aa==null&&aa==""){
                    alert("请先登陆")
                }else(
                    location.href="<%=path%>/jpl/queryOrder"
                )
            }


            /*移入收藏夹*/
			function shoucangjia(){
			    alert("已经移入收藏夹，请继续浏览!")
			}

			/*删除单行信息*/
            function delGoodsInfo(id){
                alert(id)
                $.ajax({
                    url:"<%=request.getContextPath()%>/delcart.do",
                    type:"post",
                    data:{'itemId':id},
                    dataType:"text",
                    success:function (result){
                        if(result=1){
                            alert("删除成功！")
                        }
                    },
                    error:function (){
                        alert("删除出错！");
                    }
                })
			}


			/*页面全选*/
            document.getElementById('J_SelectAllCbx2').onclick=function(){
                // 获取所有的复选框
                var checkElements=document.getElementsByName("quanxuan");
                for(var i=0; i<checkElements.length; i++){
                    var checkElement=checkElements[i];
                    // 方法一
                    // checkElement.setAttribute('checked',' checked');
                    // 方法二
                    checkElement.checked="checked";
                }
            }
		</script>

		<%--计算总价--%>
		<script>


            $(function(){

                $("#add").click(function(){
                    var t=$(this).parent().find('input[class*=text_box]');
                    var s = parseInt(t.val());
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
                    var  g = $(".goodsPriceId").val();
                    var  t = $(".text_box").val();
                    $("#tab tr").each(function(){
                        ss+=parseInt(t) * parseFloat(g);
                    });
                    $("#total1").html(ss.toFixed(2));
                    $("#total2").html(ss.toFixed(2));
                }
                setTotal();

               /* $("#add").click(function(){
                    //var t=$(this).parent().find('input[class*=text_box]');
                    var  tval1 = $(".text_box").val();
                    var tval = parseInt(tval1.val());
                    /!* if(tval=1){
                          $("#total1").html($("#goodsPriceId").val());
                      }*!/
                    tval=tval+1;
                    setTotal();

                })
                $("#min").click(function(){
                    var t=$(this).parent().find('input[class*=text_box]');
                    var s = parseInt(t.val());
                    if(parseInt(t.val())>1){
                        s=s-1;
                    }
                    if(s=0){
                        t.val(0);
                    }
                    setTotal();
                })

                function setTotal(){
                     var t=$(this).parent().find('input[class*=text_box]');
                      var s = parseInt(t.val());
                    var ss = 0;
                    var  gval = $(".goodsPriceId").val();
                    var  tval = $(".text_box").val();
                    $("#tab tr").each(function(){
                        ss+=parseInt(tval) * parseFloat(gval);
                    });
                    $("#total1").html(ss.toFixed(2));
                    $("#total2").html(ss.toFixed(2));
                }*/

/*
            var gn = $("#goodnum").val();
            var gid = $("#goodsid").val();

                function add(){
                $.ajax({
                    url:"<%=request.getContextPath()%>/cart/update1.do",
                    type:"post",
                    data:{'itemId':gid,'num':gn},
                    dataType:"text",
                    success:function (result){
                        if(result==jiacount){
                             $("#goodnum").val(jiacount);
                            setTotal();
                        }
                    },
                    error:function (){
                        alert("error！");
                    }
                })
            }
                function min(){
                $.ajax({
                    url:"<%=request.getContextPath()%>/cart/update.do",
                    type:"post",
                    data:{'itemId':gid,'num':gn},
                    dataType:"text",
                    success:function (){
                        alert("success")
                        setTotal();
                    },
                    error:function (){
                        alert("error！");
                    }
                })
            }*/



            })
		</script>





	</body>


<


</html>