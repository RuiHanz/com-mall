<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>站点地图</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" /><!-- animation -->
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->   
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>  
<!-- //js --> 
<!-- web-fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'> 
<!-- web-fonts -->  
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->
</head>
<body>
	<!-- header -->

	<div class="header">
		<div class="w3ls-header"><!--header-one-->
			<div class="w3ls-header-left">
				<p><a href="#">海哥给您请安了！！！！</a></p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i> 我的账户<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.html">登录 </a></li>
							<li><a href="signup.jsp">注册</a></li>
							<li><a href="login.html">我的订单</a></li>
							<li><a href="login.html">我的钱包</a></li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-percent" aria-hidden="true"></i> 今日交易<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.jsp">现金返还优惠</a></li>
							<li><a href="offers.jsp">折扣商品</a></li>
							<li><a href="offers.jsp">特价商品</a></li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gift" aria-hidden="true"></i> 折扣券<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.jsp">限时卡券</a></li>
							<li><a href="offers.jsp">卡券册</a></li>
							<li><a href="offers.jsp">查看余额</a></li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="contact.jsp" class="dropdown-toggle"><i class="fa fa-map-marker" aria-hidden="true"></i> 公司所属地</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="card.jsp" class="dropdown-toggle"><i class="fa fa-credit-card-alt" aria-hidden="true"></i> 支付</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="help.jsp" class="dropdown-toggle"><i class="fa fa-question-circle" aria-hidden="true"></i> 帮助</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="header-two"><!-- header-two -->
			<div class="container">
				<div class="header-logo">
					<h1><a href="index.jsp"><span>海</span>哥 <i>电脑城</i></a></h1>
					<h6>你的商店，你做主</h6>
				</div>
				<div class="header-search">
					<form action="#" method="post">
						<input type="search" name="Search" placeholder="海哥帮你找......" required="">
						<button type="submit" class="btn btn-default" aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				</div>
				<div class="header-cart">
					<div class="my-account">
						<a href="contact.jsp"><i class="fa fa-map-marker" aria-hidden="true"></i> 联系我们</a>
					</div>
					<div class="cart">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart" />
							<input type="hidden" name="display" value="1" />
							<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div><!-- //header-two -->
		<div class="header-three"><!-- header-three -->
			<div class="container">
				<div class="menu">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger" href="#0">商品目录</a>
						<nav class="cd-dropdown">
							<a href="#0" class="cd-close">Close</a>
							<ul class="cd-dropdown-content">
								<li><a href="offers.jsp">今日优惠</a></li>
								<li class="has-children">
									<a href="#">笔记本</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products.html">全部笔记本</a></li>
										<li class="has-children">
											<a href="#">笔记本1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products.html">分离屏幕</a></li>
														<li><a href="products.html">没有显示屏</a></li>
														<li><a href="products.html">电源自带</a></li>
													</ul>
												</li>
												<li> <a href="products.html">笔笔</a> </li>
												<li><a href="products.html">记记</a></li>
												<li><a href="products.html">本本</a></li>
												<li><a href="products.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products.html">笔笔</a></li>
												<li><a href="products.html">记记</a></li>
												<li><a href="products.html">本本</a></li>
												<li><a href="products.html">笔记本</a></li>
												<li><a href="products.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products.html">商品 </a></li>
														<li><a href="products.html">商品 PC</a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
														<li><a href="products.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products.html">商品1</a></li>
														<li><a href="products.html">商品2</a></li>
														<li><a href="products.html">商品3</a></li>
														<li><a href="products.html">商品4</a></li>
														<li><a href="products.html">商品5</a></li>
														<li><a href="products.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">cables</a></li>
											</ul>
										</li>
									</ul> <!-- .cd-secondary-dropdown -->
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="#">台式机</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products1.html">全部台式机</a></li>
										<li class="has-children">
											<a href="#">台式机1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products1.html">分离屏幕</a></li>
														<li><a href="products1.html">没有显示屏</a></li>
														<li><a href="products.html">电源自带</a></li>
													</ul>
												</li>
												<li> <a href="products1.html">笔笔</a> </li>
												<li><a href="products1.html">记记</a></li>
												<li><a href="products1.html">本本</a></li>
												<li><a href="products1.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">台式机2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products1.html">笔笔</a></li>
												<li><a href="products1.html">记记</a></li>
												<li><a href="products1.html">本本</a></li>
												<li><a href="products1.html">笔记本</a></li>
												<li><a href="products1.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">台式机3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products1.html">商品 </a></li>
														<li><a href="products1.html">商品 PC</a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">台式机4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
														<li><a href="products1.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">台式机5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products1.html">商品1</a></li>
														<li><a href="products1.html">商品2</a></li>
														<li><a href="products1.html">商品3</a></li>
														<li><a href="products1.html">商品4</a></li>
														<li><a href="products1.html">商品5</a></li>
														<li><a href="products1.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">台式机6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">商品</a></li>
												<li><a href="products1.html">cables</a></li>
											</ul>
										</li>
									</ul> <!-- .cd-secondary-dropdown -->
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="products2.html">服务器/工作站</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products2.html">全部服务器/工作站</a></li>
										<li class="has-children">
											<a href="#">服务器1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products2.html">分离屏幕</a></li>
														<li><a href="products2.html">没有显示屏</a></li>
														<li><a href="products2.html">电源自带</a></li>
													</ul>
												</li>
												<li> <a href="products2.html">笔笔</a> </li>
												<li><a href="products2.html">记记</a></li>
												<li><a href="products2.html">本本</a></li>
												<li><a href="products2.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">服务器2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products2.html">笔笔</a></li>
												<li><a href="products2.html">记记</a></li>
												<li><a href="products2.html">本本</a></li>
												<li><a href="products2.html">笔记本</a></li>
												<li><a href="products2.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">服务器3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products2.html">商品 </a></li>
														<li><a href="products2.html">商品 PC</a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">工作站4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
														<li><a href="products2.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">工作站5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products2.html">商品1</a></li>
														<li><a href="products2.html">商品2</a></li>
														<li><a href="products2.html">商品3</a></li>
														<li><a href="products2.html">商品4</a></li>
														<li><a href="products2.html">商品5</a></li>
														<li><a href="products2.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">工作站6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">商品</a></li>
												<li><a href="products2.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="#">CPU</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products3.html">全部CPU</a></li>
										<li class="has-children">
											<a href="#">CPU1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products3.html">分离屏幕</a></li>
														<li><a href="products3.html">没有显示屏</a></li>
														<li><a href="products3.html">电源自带</a></li>
													</ul>
												</li>
												<li> <a href="products3.html">笔笔</a> </li>
												<li><a href="products3.html">记记</a></li>
												<li><a href="products3.html">本本</a></li>
												<li><a href="products3.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">CPU2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products3.html">笔笔</a></li>
												<li><a href="products3.html">记记</a></li>
												<li><a href="products3.html">本本</a></li>
												<li><a href="products3.html">笔记本</a></li>
												<li><a href="products3.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">CPU3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products3.html">商品 </a></li>
														<li><a href="products3.html">商品 PC</a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">CPU4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
														<li><a href="products3.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">CPU5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products3.html">商品1</a></li>
														<li><a href="products3.html">商品2</a></li>
														<li><a href="products3.html">商品3</a></li>
														<li><a href="products3.html">商品4</a></li>
														<li><a href="products3.html">商品5</a></li>
														<li><a href="products3.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products.html">商品</a></li>
											</ul>
										</li>3
										<li class="has-children">
											<a href="#">CPU6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">商品</a></li>
												<li><a href="products3.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="#">SSD硬盘</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products4.html">全部硬盘</a></li>
										<li class="has-children">
											<a href="#">SSD硬盘1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products4.html">分离屏幕</a></li>
														<li><a href="products4.html">没有显示屏</a></li>
														<li><a href="products4.html">电源自带</a></li>
													</ul>
												</li>
												<li><a href="products4.html">笔笔</a> </li>
												<li><a href="products4.html">记记</a></li>
												<li><a href="products4.html">本本</a></li>
												<li><a href="products4.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">SSD硬盘2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products4.html">笔笔</a></li>
												<li><a href="products4.html">记记</a></li>
												<li><a href="products4.html">本本</a></li>
												<li><a href="products4.html">笔记本</a></li>
												<li><a href="products4.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">SSD硬盘3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products4.html">商品 </a></li>
														<li><a href="products4.html">商品 PC</a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">SSD硬盘4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
														<li><a href="products4.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">SSD硬盘5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products4.html">商品1</a></li>
														<li><a href="products4.html">商品2</a></li>
														<li><a href="products4.html">商品3</a></li>
														<li><a href="products4.html">商品4</a></li>
														<li><a href="products4.html">商品5</a></li>
														<li><a href="products4.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">SSD硬盘6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">商品</a></li>
												<li><a href="products4.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="#">显示器</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products5.html">全部显示器</a></li>
										<li class="has-children">
											<a href="#">显示器1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products5.html">分离屏幕</a></li>
														<li><a href="products5.html">没有显示屏</a></li>
														<li><a href="products5.html">电源自带</a></li>
													</ul>
												</li>
												<li><a href="products5.html">笔笔</a> </li>
												<li><a href="products5.html">记记</a></li>
												<li><a href="products5.html">本本</a></li>
												<li><a href="products5.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显示器2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products5.html">笔笔</a></li>
												<li><a href="products5.html">记记</a></li>
												<li><a href="products5.html">本本</a></li>
												<li><a href="products5.html">笔记本</a></li>
												<li><a href="products5.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显示器3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products5.html">商品 </a></li>
														<li><a href="products5.html">商品 PC</a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显示器4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
														<li><a href="products5.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显示器5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products5.html">商品1</a></li>
														<li><a href="products5.html">商品2</a></li>
														<li><a href="products5.html">商品3</a></li>
														<li><a href="products5.html">商品4</a></li>
														<li><a href="products5.html">商品5</a></li>
														<li><a href="products5.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显示器6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">商品</a></li>
												<li><a href="products5.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li> <!-- .has-children -->
								<li class="has-children">
									<a href="#">显卡</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products6.html">全部显卡</a></li>
										<li class="has-children">
											<a href="#">显卡1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products6.html">分离屏幕</a></li>
														<li><a href="products6.html">没有显示屏</a></li>
														<li><a href="products6.html">电源自带</a></li>
													</ul>
												</li>
												<li> <a href="products6.html">笔笔</a> </li>
												<li><a href="products6.html">记记</a></li>
												<li><a href="products6.html">本本</a></li>
												<li><a href="products6.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显卡2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products6.html">笔笔</a></li>
												<li><a href="products6.html">记记</a></li>
												<li><a href="products6.html">本本</a></li>
												<li><a href="products6.html">笔记本</a></li>
												<li><a href="products6.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显卡3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products6.html">商品 </a></li>
														<li><a href="products6.html">商品 PC</a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显卡4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
														<li><a href="products6.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显卡5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products6.html">商品1</a></li>
														<li><a href="products6.html">商品2</a></li>
														<li><a href="products6.html">商品3</a></li>
														<li><a href="products6.html">商品4</a></li>
														<li><a href="products6.html">商品5</a></li>
														<li><a href="products6.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">显卡6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">商品</a></li>
												<li><a href="products6.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li>
								<li class="has-children">
									<a href="#">机箱</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products7.html">全部机箱</a></li>
										<li class="has-children">
											<a href="#">机箱1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products7.html">分离屏幕</a></li>
														<li><a href="products7.html">没有显示屏</a></li>
														<li><a href="products7.html">电源自带</a></li>
													</ul>
												</li>
												<li><a href="products7.html">笔笔</a> </li>
												<li><a href="products7.html">记记</a></li>
												<li><a href="products7.html">本本</a></li>
												<li><a href="products7.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">机箱2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products7.html">笔笔</a></li>
												<li><a href="products7.html">记记</a></li>
												<li><a href="products7.html">本本</a></li>
												<li><a href="products7.html">笔记本</a></li>
												<li><a href="products7.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">机箱3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products7.html">商品 </a></li>
														<li><a href="products7.html">商品 PC</a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">机箱4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
														<li><a href="products7.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">机箱5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products7.html">商品1</a></li>
														<li><a href="products7.html">商品2</a></li>
														<li><a href="products7.html">商品3</a></li>
														<li><a href="products7.html">商品4</a></li>
														<li><a href="products7.html">商品5</a></li>
														<li><a href="products7.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">机箱6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">商品</a></li>
												<li><a href="products7.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li>
								<li class="has-children">
									<a href="#">鼠标</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products8.html">全部鼠标</a></li>
										<li class="has-children">
											<a href="#">笔记本1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">笔记本款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products8.html">分离屏幕</a></li>
														<li><a href="products8.html">没有显示屏</a></li>
														<li><a href="products8.html">电源自带</a></li>
													</ul>
												</li>
												<li><a href="products8.html">笔笔</a> </li>
												<li><a href="products8.html">记记</a></li>
												<li><a href="products8.html">本本</a></li>
												<li><a href="products8.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products8.html">笔笔</a></li>
												<li><a href="products8.html">记记</a></li>
												<li><a href="products8.html">本本</a></li>
												<li><a href="products8.html">笔记本</a></li>
												<li><a href="products8.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products8.html">商品 </a></li>
														<li><a href="products8.html">商品 PC</a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
														<li><a href="products8.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products8.html">商品1</a></li>
														<li><a href="products8.html">商品2</a></li>
														<li><a href="products8.html">商品3</a></li>
														<li><a href="products8.html">商品4</a></li>
														<li><a href="products8.html">商品5</a></li>
														<li><a href="products8.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">笔记本6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">商品</a></li>
												<li><a href="products8.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li>
								<li class="has-children">
									<a href="#">键盘</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">菜单</a></li>
										<li class="see-all"><a href="products9.html">全部键盘</a></li>
										<li class="has-children">
											<a href="#">键盘1</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li class="has-children">
													<a href="#0">键盘款式</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products9.html">分离屏幕</a></li>
														<li><a href="products9.html">没有显示屏</a></li>
														<li><a href="products9.html">电源自带</a></li>
													</ul>
												</li>
												<li><a href="products9.html">笔笔</a> </li>
												<li><a href="products9.html">记记</a></li>
												<li><a href="products9.html">本本</a></li>
												<li><a href="products9.html">键盘</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">键盘2</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品 </a></li>
												<li><a href="products9.html">笔笔</a></li>
												<li><a href="products9.html">记记</a></li>
												<li><a href="products9.html">本本</a></li>
												<li><a href="products9.html">笔记本</a></li>
												<li><a href="products9.html">笔记本</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">键盘3</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">全部商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li class="has-children">
													<a href="#">电脑</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products9.html">商品 </a></li>
														<li><a href="products9.html">商品 PC</a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
													</ul>
												</li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">键盘4</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
														<li><a href="products9.html">商品</a></li>
													</ul>
												</li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">键盘5</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li class="has-children"><a href="#">商品</a>
													<ul class="is-hidden">
														<li class="go-back"><a href="#0"> </a></li>
														<li><a href="products9.html">商品1</a></li>
														<li><a href="products9.html">商品2</a></li>
														<li><a href="products9.html">商品3</a></li>
														<li><a href="products9.html">商品4</a></li>
														<li><a href="products9.html">商品5</a></li>
														<li><a href="products9.html">商品6</a></li>
													</ul>
												</li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
											</ul>
										</li>
										<li class="has-children">
											<a href="#">键盘6</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">全部商品 </a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">商品</a></li>
												<li><a href="products9.html">cables</a></li>
											</ul>
										</li>
									</ul><!-- .cd-secondary-dropdown -->
								</li>
								<li><a href="sitemap.jsp">商品大全 </a></li>
							</ul> <!-- .cd-dropdown-content -->
						</nav> <!-- .cd-dropdown -->
					</div> <!-- .cd-dropdown-wrapper -->
				</div>
				<div class="move-text">
					<div class="marquee"><a href="offers.jsp"> 海哥希望你们多买点 <span>加我微信给你降价 </span> <span> 海哥永远给你们最好的，但是有点贵！</span></a></div>
					<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
					<script>
						$('.marquee').marquee({ pauseOnHover: true });
						//@ sourceURL=pen.js
					</script>
				</div>
			</div>
		</div>
	</div>
	<!-- //header --> 	 	
	<!-- site map -->
	<div class="sitemap">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">我们的站点</h3>
			<div class="sitemap-row"> 
				<nav class="sitemap-tabs" data-spy="affix" data-offset-top="400"> 
					<div  id="myNavbar">
						<ul> 
							<li><a href="#w3sec1"><i class="fa fa-mobile"></i> 笔记本</a></li>
							<li><a href="#w3sec2"><i class="fa fa-slideshare"></i>台式机</a></li>
							<li><a href="#w3sec3"><i class="fa fa-child"></i> 显卡</a></li>
							<li><a href="#w3sec4"><i class="fa fa-home"></i> CPU</a></li>
							<li><a href="#w3sec5"><i class="fa fa-futbol-o"></i>显示器</a></li>
							<li><a href="#w3sec6"><i class="fa fa-shopping-basket"></i> 耳机</a></li>
							<li><a href="#w3sec7"><i class="fa fa-gift"></i> 键盘</a></li>
							<li><a href="#w3sec8"><i class="fa fa-medkit"></i> 鼠标</a></li>
							<li><a href="#w3sec9"><i class="fa fa-car"></i> 音响</a></li>
							<li><a href="#w3sec10"><i class="fa fa-book"></i> SSD</a></li>
						</ul> 
					</div>
				</nav>	
				<div id="w3sec1" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-mobile"></i> Electronics</h3>  
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products.html">MOBILE PHONES</a></h5> 
						<ul>  
							<li><a href="products.html">Phones</a></li>
							<li><a href="products.html">Android</a></li>
							<li><a href="products.html">Windows</a></li>
							<li><a href="products.html">Black berry</a></li> 
							<li><a href="products.html">IPhones</a> </li>
							<li><a href="products.html">Tablets</a></li>
							<li><a href="products.html">IPad</a></li>
							<li><a href="products.html">Feature Phones</a></li> 
						</ul>  
						<h5 class="sitemap-text-title"><a href="products.html">PERSONAL CARE</a></h5> 
						<ul> 
							<li><a href="products.html">Epilator</a></li> 
							<li><a href="products.html">Hair Styler</a></li>
							<li><a href="products.html">Trimmer &amp; Shaver</a></li>
							<li><a href="products.html">Health Care</a></li> 
							<li><a href="products.html">cables</a></li>
						</ul> 
					</div>	
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products.html">LARGE APPLIANCES</a></h5>
						<ul> 
							<li><a href="products.html">Refrigerators</a></li> 
							<li><a href="products.html">Washing Machine</a></li>
							<li><a href="products.html">Office Technology</a></li>
							<li><a href="products.html">Air conditioner</a></li>
							<li><a href="products.html">Home Automation</a></li>
						</ul>  
						<h5 class="sitemap-text-title"><a href="products.html">SMALL DEVICES</a></h5>
						<ul>  
							<li><a href="products.html">Router &amp; Modem</a></li> 
							<li><a href="products.html">Cloud Storage</a></li>
							<li><a href="products.html">Hard Disk</a></li> 
							<li><a href="products.html">Pen Drive</a></li>
							<li><a href="products.html">Memory card</a></li> 
							<li><a href="products.html">Security Devices</a></li>  
							<li><a href="products.html">Office Supplies</a></li> 
							<li><a href="products.html">Auto Electronics</a></li>  
						</ul> 
					</div>	
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products.html">ENTERTAINMENT</a></h5> 
						<ul>   
							<li><a href="products.html">Tv &amp; Accessories</a></li>
							<li><a href="products.html">Digital Camera</a></li>
							<li><a href="products.html">Gaming</a></li>
							<li><a href="products.html">Home Audio &amp; Theater</a></li>
							<li><a href="products.html">Computer</a></li> 
							<li><a href="products.html">Laptop </a></li>
							<li><a href="products.html">Gaming PC</a></li>
							<li><a href="products.html">Monitors</a></li>
							<li><a href="products.html">Networking</a></li>
							<li><a href="products.html">Printers &amp; Supplies</a></li>
							<li><a href="products.html">Accessories</a></li> 
						</ul>	 
					</div>	
					<div class="col-md-3 sitemap-text-grids">	
						<h5 class="sitemap-text-title"><a href="products.html">HOME APPLIANCES</a></h5> 
						<ul>   
							<li><a href="products.html">Rice Cookers</a></li>
							<li><a href="products.html">Mixer Juicer</a></li>
							<li><a href="products.html">Grinder</a></li>
							<li><a href="products.html">Blenders &amp; Choppers</a></li>
							<li><a href="products.html">Microwave Oven</a></li>
							<li><a href="products.html">Food Processors</a></li> 
							<li><a href="products.html">Purifiers</a></li>
							<li><a href="products.html">Geysers</a></li>
							<li><a href="products.html">Gas Stove</a></li>
							<li><a href="products.html">Vacuum Cleaner</a></li>
							<li><a href="products.html">Sewing Machine</a></li> 
							<li><a href="products.html">Heaters &amp; Fans</a></li>
						</ul> 
					</div>	
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec2" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-slideshare"></i> Fashion Store</h3>  
					<div class="col-md-3 sitemap-text-grids">  
						<h5 class="sitemap-text-title"><a href="products1.html">GIRLS' CLOTHING</a></h5>   
						<ul>  
							<li><a href="products1.html">Ethnic wear </a></li>
							<li><a href="products1.html">Maternity wear</a></li>
							<li><a href="products1.html">inner & nightwear </a></li>
							<li><a href="products1.html">casual wear </a></li>
							<li><a href="products1.html">formal wear</a></li>
							<li><a href="products1.html">Sports wear</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products1.html">BOYS' CLOTHING</a></h5>  
						<ul>  
							<li><a href="products1.html">Jeans</a></li>
							<li><a href="products1.html">Ethnic wear </a></li>
							<li><a href="products1.html">Casual wear</a></li>
							<li><a href="products1.html">Night wear</a></li> 
							<li><a href="products1.html">T-Shirts</a></li> 
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products1.html">JACKETS</a></h5> 
						<ul> 
							<li><a href="products1.html">Blazers</a></li>
							<li><a href="products1.html">Bomber jackets</a></li>
							<li><a href="products1.html">Denim Jackets</a></li>
							<li><a href="products1.html">Duffle Coats</a></li>
							<li><a href="products1.html">Leather Jackets</a></li>
							<li><a href="products1.html">Parkas</a></li>
						</ul> 
						<h5 class="sitemap-text-title"><a href="products1.html">ACCESSORIES</a></h5> 
						<ul> 
							<li><a href="products1.html">Watches </a></li>
							<li><a href="products1.html">Eyewear </a></li>
							<li><a href="products1.html">Jewellery </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products1.html">Footwear </a></h5> 
						<ul> 		 
							<li><a href="products1.html">Ethnic</a></li>  
							<li><a href="products1.html">Casual wear</a></li>
							<li><a href="products1.html">Sports Shoes</a></li>
							<li><a href="products1.html">Boots</a></li>
							<li><a href="products1.html">Running</a></li> 
							<li><a href="products1.html">Personal Grooming</a></li>
							<li><a href="products1.html">Handbags</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products1.html">BEAUTY</a></h5> 
						<ul>  
							<li><a href="products1.html">Perfumes & Deos</a></li>
							<li><a href="products1.html">Lipsticks & Nail Polish</a></li>
							<li><a href="products1.html">Beauty Gift Hampers</a></li> 
							<li><a href="products1.html">Personal Grooming</a></li>
							<li><a href="products1.html">Travel bags</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products1.html">PERSONAL CARE</a></h5>  
						<ul> 
							<li><a href="products1.html">Face Care</a></li>
							<li><a href="products1.html">Skin Care</a></li>
							<li><a href="products1.html">Hair Care</a></li> 
							<li><a href="products1.html">Bath & Spa</a></li>   
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec3" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-child"></i> Kids Fashion & Toys</h3>
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products2.html">KIDS CLOTHING</a></h5> 
						<ul>  
							<li><a href="products2.html">Ethnic wear </a></li> 
							<li><a href="products2.html">inner & Sleepwear </a></li>
							<li><a href="products2.html">Dresses & Frocks </a></li>
							<li><a href="products2.html">Winter wear</a></li>
							<li><a href="products2.html">Diaper & Accessories</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products2.html">KIDS FASHION</a></h5> 
						<ul>  
							<li><a href="products2.html">Footwear</a></li> 
							<li><a href="products2.html">Sunglasses </a></li>
							<li><a href="products2.html">School & Stationery</a></li>
							<li><a href="products2.html">Jewellery</a></li>
							<li><a href="products2.html">Hair bands & Clips</a></li>
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products2.html">Baby Care</a></h5>
						<ul>   
							<li><a href="products2.html">Lotions, Oil & Powder </a></li> 
							<li><a href="products2.html">Soaps, Shampoo </a></li>
							<li><a href="products2.html">Bath Towels</a></li> 
							<li><a href="products2.html">Toddlers' Rooms</a></li>
						</ul> 
						<h5 class="sitemap-text-title"><a href="products2.html">Baby Feeding</a></h5>
						<ul>  
							<li><a href="products2.html">Baby Food </a></li>
							<li><a href="products2.html">Bottle Feeding </a></li>
							<li><a href="products2.html">Breast Feeding</a></li>   
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products2.html">TOYS</a></h5>  
						<ul> 
							<li><a href="products2.html">Art & Crafts</a></li> 
							<li><a href="products2.html">Educational Toys </a></li>
							<li><a href="products2.html">Baby Toys</a></li> 
							<li><a href="products2.html">Outdoor Play </a></li>
							<li><a href="products2.html">Soft Toys </a></li>
							<li><a href="products2.html">Water Toys</a></li> 
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products2.html">KID'S GAMES</a></h5>
						<ul>
							<li><a href="products2.html">Toy Tips & Trends</a></li> 
							<li><a href="products2.html">Preschool Toys</a></li>
							<li><a href="products2.html">Musical Instruments</a></li> 
							<li><a href="products2.html">Bikes & Ride-Ons</a></li>
							<li><a href="products2.html">Video Games</a></li>
							<li><a href="products2.html">PC & Digital Gaming</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div> 	
				</div>
				<div id="w3sec4" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-home"></i> Home & Furniture</h3> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Kitchen Uses</a></h5> 
						<ul>  
							<li><a href="products3.html">Dinner Sets </a></li> 
							<li><a href="products3.html">Cookware & Bakeware </a></li>
							<li><a href="products3.html">Containers & Jars </a></li>
							<li><a href="products3.html">Kitchen Tools </a></li>
							<li><a href="products3.html">Food Storage</a></li>
							<li><a href="products3.html">Casseroles</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products3.html">Garage Storage</a></h5>  
						<ul>  
							<li><a href="products3.html">Baskets & Bins </a></li>  
							<li><a href="products3.html">Free Standing Shelves </a></li>
							<li><a href="products3.html">Floor cleaning</a></li>
							<li><a href="products3.html">Tool Kits</a></li>
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Furniture</a></h5> 
						<ul>  
							<li><a href="products3.html">Bedroom </a></li> 
							<li><a href="products3.html">Dining Room </a></li>
							<li><a href="products3.html">Kids' Furniture </a></li>
							<li><a href="products3.html">Living Room</a></li>
							<li><a href="products3.html">Office</a></li>
							<li><a href="products3.html">Mattresses</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Home Decor </a></h5> 
						<ul>  
							<li><a href="products3.html">Lighting</a></li> 
							<li><a href="products3.html">Painting</a></li>
							<li><a href="products3.html">Curtains & Blinds</a></li>
							<li><a href="products3.html">Patio Furniture</a></li>
							<li><a href="products3.html">Wardrobes & Cabinets</a></li>
							<li><a href="products3.html">Mattresses</a></li>
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products3.html">Gardening & Lawn </a></h5> 
						<ul>    
							<li><a href="products3.html">Gardening </a></li> 
							<li><a href="products3.html">Landscaping </a></li>
							<li><a href="products3.html">Sheds</a></li>
							<li><a href="products3.html">Outdoor Storage  </a></li>
							<li><a href="products3.html">Garden & Ideas </a></li>
							<li><a href="products3.html">Patio Tips</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
				</div>
				<div id="w3sec5" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-shopping-basket"></i> Sports & Fitness</h3>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Single Sports </a></h5> 
						<ul>  
							<li><a href="products4.html">Bikes </a></li> 
							<li><a href="products4.html">Fishing  </a></li>
							<li><a href="products4.html">Cycling </a></li>
							<li><a href="products4.html">Musical Instruments</a></li>
							<li><a href="products4.html">Archery </a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products4.html">Other</a></h5>  
						<ul> 
							<li><a href="products4.html">Riding Gears & More </a></li> 
							<li><a href="products4.html">Body Massagers </a></li>
							<li><a href="products4.html">Health Monitors </a></li>
							<li><a href="products4.html">Health Drinks </a></li> 
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Team Sports</a></h5> 
						<ul>  
							<li><a href="products4.html">Cricket </a></li> 
							<li><a href="products4.html">Badminton </a></li>
							<li><a href="products4.html">Swimming Gear </a></li>
							<li><a href="products4.html">Sports Apparel </a></li>
							<li><a href="products4.html">Indoor games</a></li>
						</ul> 
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Fitness </a></h5> 
						<ul> 
							<li><a href="products4.html">Fitness Accessories </a></li> 
							<li><a href="products4.html">Exercise Machines </a></li>
							<li><a href="products4.html">Ellipticals </a></li>
							<li><a href="products4.html">Home Gyms</a></li> 
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products4.html">Camping </a></h5> 
						<ul> 
							<li><a href="products4.html">Air Beds</a></li> 
							<li><a href="products4.html">Tents </a></li>
							<li><a href="products4.html">Gazebo's & Shelters</a></li>
							<li><a href="products4.html">Coolers </a></li>
							<li><a href="products4.html">Canopies</a></li>
							<li><a href="products4.html">Sleeping Bags</a></li> 
							<li><a href="products4.html">Shooting </a></li> 
							<li><a href="products4.html">Knives & Tools </a></li>
							<li><a href="products4.html">Optics & Binoculars </a></li>
							<li><a href="products4.html">Lights & Lanterns </a></li>
							<li><a href="products4.html">Hunting Clothing </a></li> 
						</ul>
					</div>
					<div class="clearfix"> </div>  
				</div>
				<div id="w3sec6" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-shopping-basket"></i> Grocery Store</h3>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products5.html">Veggies & Fruits </a></h5> 
						<ul>  
							<li><a href="products5.html">Vegetables </a></li> 
							<li><a href="products5.html">Fruits </a></li>
							<li><a href="products5.html">Dry Fruits</a></li> 
							<li><a href="products5.html">Snacks & Cookies </a></li>
							<li><a href="products5.html">Breakfast & Cereal</a></li> 
						</ul>
						<h5 class="sitemap-text-title"><a href="products5.html">Food Shops </a></h5> 
						<ul>  	
							<li><a href="products5.html">Fresh Food</a></li> 
							<li><a href="products5.html">Food Gifts </a></li>
							<li><a href="products5.html">Frozen Food </a></li>
							<li><a href="products5.html">Organic </a></li>
							<li><a href="products5.html">Gluten Free </a></li> 
						</ul>  	
					</div>	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products5.html">Packet Food</a></h5> 
						<ul> 
							<li><a href="products5.html">Beverages </a></li> 
							<li><a href="products5.html">Baking </a></li>
							<li><a href="products5.html">Emergency Food </a></li>
							<li><a href="products5.html">Candy & Gum </a></li>
							<li><a href="products5.html">Meals & Pasta </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products5.html">Shop All Pets </a></h5> 
						<ul class="is-hidden">  
							<li><a href="products5.html">Dogs </a></li>  
							<li><a href="products5.html">Fish </a></li>												
							<li><a href="products5.html">Cats</a></li>
							<li><a href="products5.html">Birds </a></li>
							<li><a href="products5.html">Pet Food </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids"> 
						<h5 class="sitemap-text-title"><a href="products5.html">Household Essentials </a></h5> 
						<ul>  
							<li><a href="products5.html">Laundry Room </a></li> 
							<li><a href="products5.html">Paper & Plastic</a></li>
							<li><a href="products5.html">Pest Control </a></li>
							<li><a href="products5.html">Batteries </a></li> 
						</ul>
						<h5 class="sitemap-text-title"><a href="products5.html">Tips </a></h5>  
						<ul>  
							<li><a href="products5.html">Pets Growth</a></li> 
							<li><a href="products5.html">Recipes </a></li>
							<li><a href="products5.html">Snacks</a></li>
							<li><a href="products5.html">Nutrition</a></li> 
						</ul>
					</div>
					<div class="clearfix"> </div>  
				</div>
				<div id="w3sec7" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-gift"></i> Photo, Gifts &amp; Office</h3>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Trending Now</a></h5> 
						<ul>  
							<li><a href="products6.html">Best Priced</a></li> 
							<li><a href="products6.html">Chocolates </a></li>
							<li><a href="products6.html">Gift Cards </a></li>
							<li><a href="products6.html">Fashion & Accessories </a></li>
							<li><a href="products6.html">Decorative Plants </a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products6.html">Office</a></h5> 
						<ul>  
							<li><a href="products6.html">Calendars</a></li> 
							<li><a href="products6.html">Mousepads</a></li>
							<li><a href="products6.html">Phone Cases</a></li>
							<li><a href="products6.html">Tablet & Laptop Cases</a></li>
							<li><a href="products6.html">Mounted Photos</a></li>
						</ul>
					</div>
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Photos </a></h5> 
						<ul>  
							<li><a href="products6.html">Shelf animation </a></li> 
							<li><a href="products6.html">3D-rendered </a></li>
							<li><a href="products6.html">gift builder </a></li>
							<li><a href="products6.html">Frames</a></li>
							<li><a href="products6.html">Wall Decor</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products6.html">Combos</a></h5> 
						<ul>   
							<li><a href="products6.html">Chocolates </a></li> 
							<li><a href="products6.html">Dry Fruits</a></li>
							<li><a href="products6.html">Sweets</a></li>
							<li><a href="products6.html">Snacks</a></li>
							<li><a href="products6.html">Cakes</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Gifts</a></h5>
						<ul> 
							<li><a href="products6.html">Personalized Gifts </a></li> 
							<li><a href="products6.html">Flowers </a></li>
							<li><a href="products6.html">Cards & Toys</a></li>
							<li><a href="products6.html">Show pieces </a></li>
							<li><a href="products6.html">Photo Books</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products6.html">Favourite Brands </a></h5> 
						<ul>  
							<li><a href="products6.html">Archies </a></li> 
							<li><a href="products6.html">Jewel Fuel </a></li>
							<li><a href="products6.html">Ferns N Petals </a></li>
							<li><a href="products6.html">Happily Unmarried</a></li>
							<li><a href="products6.html">Chumbak</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
				</div>
				<div id="w3sec8" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-medkit"></i> Health & Beauty</h3>  
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Health</a></h5> 
						<ul>  
							<li><a href="products7.html">Home Health Care </a></li> 
							<li><a href="products7.html">Sports Nutrition </a></li>
							<li><a href="products7.html">Vision </a></li> 
							<li><a href="products7.html">Diet & Nutrition </a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products7.html">Pharmacy Center </a></h5> 
						<ul>  
							<li><a href="products7.html">Diabetes Shop </a></li> 
							<li><a href="products7.html">Medicine Cabinet </a></li>
							<li><a href="products7.html">Vitamin Selector</a></li>
							<li><a href="products7.html">Pharmacy Help</a></li> 
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Health Tips</a></h5>
						<ul>   
							<li><a href="products7.html">Diet</a></li> 
							<li><a href="products7.html">Exercise Tips  </a></li>
							<li><a href="products7.html">Vitamin Balance</a></li>
							<li><a href="products7.html">Health Insurance</a></li>
							<li><a href="products7.html">Funeral</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Beauty </a></h5> 
						<ul> 
							<li><a href="products7.html">Massage & Spa </a></li> 
							<li><a href="products7.html">Skin Care </a></li>
							<li><a href="products7.html">Fragrances </a></li>
							<li><a href="products7.html">Makeup </a></li>
							<li><a href="products7.html">Beauty Tips</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products7.html">Pharmacy </a></h5> 
						<ul> 
							<li><a href="products7.html">Home Delivery </a></li> 
							<li><a href="products7.html">History & Reports </a></li>
							<li><a href="products7.html">Transfer Prescriptions </a></li>
							<li><a href="products7.html">Health CheckUp</a></li>
							<li><a href="products7.html">Mobile App</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec9" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-car"></i> Automotive</h3>   
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">All Motors</a></h5> 
						<ul>   
							<li><a href="products8.html">Bikes </a></li> 
							<li><a href="products8.html">Yachts </a></li>
							<li><a href="products8.html">Scooters </a></li>
							<li><a href="products8.html">Autos</a></li>
							<li><a href="products8.html">Bus</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products8.html">Exterior Accessories </a></h5>  
						<ul> 
							<li><a href="products8.html">Wheel covers </a></li> 
							<li><a href="products8.html">Car Lighting </a></li>
							<li><a href="products8.html">Polish & Waxes</a></li>
							<li><a href="products8.html">Cargo Management</a></li>
							<li><a href="products8.html">Car Decoration </a></li>
						</ul>
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">Accessories </a></h5> 
						<ul>   
							<li><a href="products8.html">Vehicle Electronics</a></li> 
							<li><a href="products8.html">Stereos & Monitors</a></li>
							<li><a href="products8.html">Bluetooth Devices</a></li>
							<li><a href="products8.html">GPS Navigation</a></li>
							<li><a href="products8.html">Speakers & Tweeters</a></li>
						</ul>
						<h5 class="sitemap-text-title"><a href="products8.html">Car Care</a></h5>  
						<ul>  
							<li><a href="products8.html">Auto Tips & Advice </a></li> 
							<li><a href="products8.html">Car Washes & Cleaners </a></li>
							<li><a href="products8.html">Car Wax & Polish</a></li>
							<li><a href="products8.html">Cleaning Tools</a></li>
							<li><a href="products8.html">Detailing Kits </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">Safety & Security</a></h5> 
						<ul>  
							<li><a href="products8.html">Anti-Theft Devices </a></li> 
							<li><a href="products8.html">Helmets</a></li>
							<li><a href="products8.html">Sensors</a></li>
							<li><a href="products8.html">Auto Repair Tools </a></li>
							<li><a href="products8.html">Antifreeze & Coolants </a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products8.html">Car Interiors</a></h5> 
						<ul>   
							<li><a href="products8.html">Stereos </a></li> 
							<li><a href="products8.html">Floor Mats </a></li>
							<li><a href="products8.html">Seat Covers</a></li>
							<li><a href="products8.html">Chargers </a></li>
							<li><a href="products8.html">Audio Finder </a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div id="w3sec10" class="container-fluid sitemap-text">
					<h3 class="w3sitemap-title"><i class="fa fa-book"></i> Books, Music & Movies</h3>  
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">Books</a></h5> 
						<ul>    
							<li><a href="products9.html">Academic Text </a></li>
							<li><a href="products9.html">Romance Books </a></li>
							<li><a href="products9.html">Journals </a></li>
							<li><a href="products9.html">Children's & Teen Books </a></li> 
						</ul>
						<h5 class="sitemap-text-title"><a href="products9.html">Exam books </a></h5>
						<ul> 
							<li><a href="products9.html">CAT/MAT/XAT</a></li>
							<li><a href="products9.html">Civil Services</a></li>
							<li><a href="products9.html">AFCAT</a></li>
							<li><a href="products9.html">New Releases</a></li>
						</ul> 
					</div> 	
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">Music</a></h5> 
						<ul> 
							<li><a href="products9.html">New Releases </a></li> 
							<li><a href="products9.html">Country Music </a></li>
							<li><a href="products9.html">Musical Instruments </a></li>
							<li><a href="products9.html">Collections</a></li>
							<li><a href="products9.html">Boxed Sets </a></li> 
							<li><a href="products9.html">Pop </a></li>  
							<li><a href="products9.html">Album Songs</a></li> 
							<li><a href="products9.html">Music DVDs </a></li> 
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">Movies</a></h5> 
						<ul>  
							<li><a href="products9.html">New Releases </a></li> 
							<li><a href="products9.html">Children & Family </a></li>
							<li><a href="products9.html">Action</a></li>
							<li><a href="products9.html">Classic Movies </a></li>
							<li><a href="products9.html">Bollywood Movies </a></li>
							<li><a href="products9.html">Hollywood Movies </a></li>   
							<li><a href="products9.html">Animated</a></li>
							<li><a href="products9.html">Adventure</a></li>
						</ul>
					</div> 
					<div class="col-md-3 sitemap-text-grids">
						<h5 class="sitemap-text-title"><a href="products9.html">TV Shows</a></h5>  
						<ul>   
							<li><a href="products9.html">Serials</a></li> 
							<li><a href="products9.html">Best Programs</a></li>
							<li><a href="products9.html">Celebrations</a></li>
							<li><a href="products9.html">Top Shows</a></li> 
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>  
			</div>
			<script>
			$(document).ready(function(){
			  // Add scrollspy to <body>
			  $('body').scrollspy({target: ".sitemap-tabs", offset: 50});

			  // Add smooth scrolling on all links inside the navbar
			  $("#myNavbar a").on('click', function(event) {
				// Make sure this.hash has a value before overriding default behaviour
				if (this.hash !== "") {
				  // Prevent default anchor click behaviour
				  event.preventDefault();

				  // Store hash
				  var hash = this.hash;

				  // Using jQuery's animate() method to add smooth page scroll
				  // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
				  $('html, body').animate({
					scrollTop: $(hash).offset().top
				  }, 800, function(){
			   
					// Add hash (#) to URL when done scrolling (default click behaviour)
					window.location.hash = hash;
				  });
				}  // End if
			  });
			});
			</script> 
			<div class="sitemap-row2  sitemap-text"> 
				<h3 class="w3sitemap-title"><i class="fa fa-gears"></i>Smart Bazaar Services</h3>  
				<div class="col-md-4 sitemap-text-grids">
					<ul>  
						<li><a href="marketplace.jsp">Marketplace</a></li>
						<li><a href="values.jsp">Core Values</a></li>
						<li><a href="privacy.jsp">Privacy Policy</a></li>
					</ul>
				</div>
				<div class="col-md-4 sitemap-text-grids">
					<ul>  
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
						<li><a href="login.jsp">Login</a></li>
					</ul>
				</div>
				<div class="col-md-4 sitemap-text-grids">
					<ul>  
						<li><a href="signup.jsp">Sign Up</a></li>
						<li><a href="login.jsp">Order Status</a></li>
						<li><a href="faq.jsp">FAQ</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //site map --> 
	<!-- footer-top -->
	<div class="w3agile-ftr-top">
		<div class="container">
			<div class="ftr-toprow">
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>邮费送你</h4>
						<p>太远的地不送 </p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>客户权益</h4>
						<p>只要你加我微信，你就能投诉 </p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>终极品质</h4>
						<p>担心你买不起 </p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //footer-top -->
	<!-- subscribe -->
	<div class="subscribe">
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
				<h4>保持联系哦</h4>
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li>
				</ul>
				<ul class="apps">
					<li><h4>下载我们的APP: </h4> </li>
					<li><a href="#" class="fa fa-apple"></a></li>
					<li><a href="#" class="fa fa-windows"></a></li>
					<li><a href="#" class="fa fa-android"></a></li>
				</ul>
			</div>
			<div class="col-md-6 subscribe-right">
				<h4>告诉我电话号码送钱</h4>
				<form action="#" method="post">
					<input type="text" name="email" placeholder="你的电话号码...." required="">
					<input type="submit" value="提交">
				</form>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //subscribe -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h2><a href="index.html"><span>海</span>哥 <i>电脑城</i></a></h2>
						<h6>你的商店，你做主</h6>
					</div>
					<ul>
						<li><i class="fa fa-map-marker"></i> 尖草坪, 太原 山西 ,中国.</li>
						<li><i class="fa fa-mobile"></i> 182 3410 9542 </li>
						<li><i class="fa fa-phone"></i> +10086 </li>
						<li><i class="fa fa-envelope-o"></i> <a href="mailto:example@mail.com"> mail@example.com</a></li>
					</ul>
				</div>
				<div class="col-md-8 address-right">
					<div class="col-md-4 footer-grids">
						<h3>公司</h3>
						<ul>
							<li><a href="about.jsp">我们</a></li>
							<li><a href="marketplace.jsp">市值</a></li>
							<li><a href="values.jsp">核心观念</a></li>
							<li><a href="privacy.jsp">隐私政策</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>为您服务</h3>
						<ul>
							<li><a href="contact.jsp">联系我们</a></li>
							<li><a href="login.jsp">回到首页</a></li>
							<li><a href="faq.jsp">常见问题</a></li>
							<li><a href="sitemap.jsp">详细地址</a></li>
							<li><a href="login.jsp">订单状态</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>支付方式</h3>
						<ul>
							<li><i class="fa fa-laptop" aria-hidden="true"></i> 网上银行</li>
							<li><i class="fa fa-money" aria-hidden="true"></i> 货到付款</li>
							<li><i class="fa fa-pie-chart" aria-hidden="true"></i> 支付宝</li>
							<li><i class="fa fa-gift" aria-hidden="true"></i> 礼品券抵扣</li>
							<li><i class="fa fa-credit-card" aria-hidden="true"></i> 信用卡/贷款</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<div class="copy-right">
		<div class="container">
			<p>Copyright &copy; 2019.Company name All rights reserved. <a href="http://www.baidu.com/" target="_blank" title="baidu">海哥全知道</a> </p>
		</div>
	</div>
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) {
        			items[i].set('shipping', 0);
        			items[i].set('shipping2', 0);
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->  
	<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js"> </script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>