<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<html>
<head>
	<title>Login</title>
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
	<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script><!-- fixed nav js -->
	<script>
		$(document).ready(function() {

			// Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

			$('.header-two').scrollToFixed();
			// previous summary up the page.

			var summaries = $('.summary');
			summaries.each(function(i) {
				var summary = $(summaries[i]);
				var next = summaries[i + 1];

				summary.scrollToFixed({
					marginTop: $('.header-two').outerHeight(true) + 10,
					zIndex: 999
				});
			});
		});
	</script>
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
<!--Begin Header Begin-->
<!-- header -->
<div class="header">
	<div class="w3ls-header"><!--header-one-->
		<div class="w3ls-header-left">
			<p><a href="#">海哥给您请安了！！！！</a></p>
		</div>
		<div class="w3ls-header-right">
			<ul>
				<li class="dropdown head-dpdn" style="color:#FFFFFF ">
					<c:if test="${sessionScope.userName!=null}">
						<a href="member.jsp"> 欢迎您，${sessionScope.userName}!</a>
					</c:if>
					<c:if test="${sessionScope.userName==null}">
						请<a href="login.jsp">登录</a>！
						<a href="signup.jsp" class="dropdown-toggle" > 注册 </a>
					</c:if>

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
						<!--目录部分-->
						<li><a href="offers.jsp">今日优惠</a></li>
						<c:forEach items="${mList}" var="m" varStatus="status">
							<li class="has-children">
								<a href="#">${m.ppmch}</a>
								<ul class="cd-secondary-dropdown is-hidden" >
									<c:forEach items="${cList}" var="c" varStatus="vs">
										<li onclick="product()">
												${c.flmch2}
										</li>
									</c:forEach>

								</ul>
							</li>
						</c:forEach>
						<li><a href="offers.jsp">所有品牌</a></li>
						<!--//目录部分-->
					</ul>
				</nav>
			</div>
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
<!-- login-page -->
<div class="login-page">
	<div class="container">
		<h3 class="w3ls-title w3ls-title1">登录 </h3>
		<div class="login-body">
			<form action="/userLogin.do" method="post">
				<input type="text" class="user" name="userName" placeholder="输入手机号" required="">
				<input type="password" name="passWord" class="lock" placeholder="密码" required="">
				<div>

				</div>
				<input type="submit" value="登录">
				<div class="forgot-grid">
					<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>记住密码</label>
					<div class="forgot">
						<a href="#">忘记密码?</a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</form>
		</div>
		<h6> 不是会员? <a href="signup.html">现在就注册 »</a> </h6>
		<div class="login-page-bottom social-icons">
			<h5>关联账号</h5>
			<ul>
				<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
				<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
				<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
				<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
				<li><a href="#" class="fa fa-rss icon rss"> </a></li>
			</ul>
		</div>
	</div>
</div>
<!-- //login-page -->
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
								<h2><a href="index.jsp"><span>海</span>哥 <i>电脑城</i></a></h2>
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