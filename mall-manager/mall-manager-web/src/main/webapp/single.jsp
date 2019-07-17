<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%@ page import="com.mall.product.Product" %>
<html>
<head>
<title>商品页面</title>
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
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->  
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script> 
<script src="js/owl.carousel.js"></script>
<script src="js/bootstrap.js"></script>
<!--flex slider-->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav: "thumbnails"
	  });
	});
</script>
<!--flex slider-->
<script src="js/imagezoom.js"></script>
<!-- //js --> 
<!-- web-fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<!-- web-fonts --> 
<!-- scroll to fixed--> 
<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
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
<!-- //scroll to fixed--> 
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
							<li><a href="signup.html">注册</a></li>
							<li><a href="login.html">我的订单</a></li>
							<li><a href="login.html">我的钱包</a></li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-percent" aria-hidden="true"></i> 今日交易<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">现金返还优惠</a></li>
							<li><a href="offers.html">折扣商品</a></li>
							<li><a href="offers.html">特价商品</a></li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gift" aria-hidden="true"></i> 折扣券<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">限时卡券</a></li>
							<li><a href="offers.html">卡券册</a></li>
							<li><a href="offers.html">查看余额</a></li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="contact.html" class="dropdown-toggle"><i class="fa fa-map-marker" aria-hidden="true"></i> 公司所属地</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="card.html" class="dropdown-toggle"><i class="fa fa-credit-card-alt" aria-hidden="true"></i> 支付</a>
					</li>
					<li class="dropdown head-dpdn">
						<a href="help.html" class="dropdown-toggle"><i class="fa fa-question-circle" aria-hidden="true"></i> 帮助</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="header-two"><!-- header-two -->
			<div class="container">
				<div class="header-logo">
					<h1><a href="index.html"><span>海</span>哥 <i>电脑城</i></a></h1>
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
						<a href="contact.html"><i class="fa fa-map-marker" aria-hidden="true"></i> 联系我们</a>
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
								<li><a href="offers.html">今日优惠</a></li>
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
								<li><a href="sitemap.html">商品大全 </a></li>
							</ul> <!-- .cd-dropdown-content -->
						</nav> <!-- .cd-dropdown -->
					</div> <!-- .cd-dropdown-wrapper -->
				</div>
				<div class="move-text">
					<div class="marquee"><a href="offers.html"> 海哥希望你们多买点 <span>加我微信给你降价 </span> <span> 海哥永远给你们最好的，但是有点贵！</span></a></div>
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
	<!-- breadcrumbs -->
	<%
		List<Product> pList = (List<Product>)request.getAttribute("pList");
	%>
	<div class="container"> 
		<ol class="breadcrumb breadcrumb1">
			<li><a href="index.html">首页</a></li>
			<li class="active">商品页面</li>
		</ol> 
		<div class="clearfix"> </div>
	</div>
	<!-- //breadcrumbs -->
	<!-- products -->
	<div class="products">	 
		<div class="container">  
			<div class="single-page">
				<div class="single-page-row" id="detail-21">
					<div class="col-md-6 single-top-left">	
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="images/s1.jpg">
									<div class="thumb-image detail_images"> <img src="images/s1.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
								</li>
								<li data-thumb="images/s2.jpg">
									 <div class="thumb-image"> <img src="images/s2.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
								</li>
								<li data-thumb="images/s3.jpg">
								   <div class="thumb-image"> <img src="images/s3.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
								</li> 
							</ul>
						</div>
					</div>
					<%
						for(Product product: pList){
					%>
					<div class="col-md-6 single-top-right">
						<h3 class="item_name"><%=product.getShp_id()%></h3>
						<p>处理时间：物品将在2-3个工作日内发货。 </p>
						<div class="single-rating">
							<ul>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li class="rating">20条点评</li>
								<li><a href="#">添加您的评论</a></li>
							</ul> 
						</div>
						<div class="single-price">
							<ul>
								<li>￥6540</li>
								<li><del>￥7600</del></li>
								<li><span class="w3off">10% 折扣</span></li>
								<li>结束时间：7月31日</li>
								<li><a href="#"><i class="fa fa-gift" aria-hidden="true"></i> 优惠券</a></li>
							</ul>	
						</div> 
						<p class="single-price-text"><%=product.getShp_msh()%> </p>
						<form action="#" method="post">
							<input type="hidden" name="cmd" value="_cart" />
							<input type="hidden" name="add" value="1" /> 
							<input type="hidden" name="w3ls_item" value="Snow Blower" /> 
							<input type="hidden" name="amount" value="540.00" /> 
							<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加到购物车</button>
						</form>
						<button class="w3ls-cart w3ls-cart-like"><i class="fa fa-heart-o" aria-hidden="true"></i> 添加到愿望单</button>
					</div>
				   <div class="clearfix"> </div>  
				</div>
				<div class="single-page-icons social-icons"> 
					<ul>
						<li><h4>分享</h4></li>
						<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
						<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
						<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
						<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
						<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
					</ul>
				</div>
			</div> 
			<!-- recommendations -->
			<div class="recommend">
				<h3 class="w3ls-title">推荐 </h3>
				<script>
					$(document).ready(function() { 
						$("#owl-demo5").owlCarousel({
					 
						  autoPlay: 3000, //Set AutoPlay to 3 seconds
					 
						  items :4,
						  itemsDesktop : [640,5],
						  itemsDesktopSmall : [414,4],
						  navigation : true
					 
						});
						
					}); 
				</script>
				<div id="owl-demo5" class="owl-carousel">
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag"><h6>20% <br> Off</h6></div>
							<a href="products1.html"><img src="images/f2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products1.html">Women Sandal</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$20</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Women Sandal" /> 
									<input type="hidden" name="amount" value="20.00" /> 
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>        
						</div> 
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits"> 
							<a href="products.html"><img src="images/e4.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products.html">Digital Camera</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$80</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Digital Camera"/> 
									<input type="hidden" name="amount" value="100.00" /> 
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>         
						</div>  
					</div>  
					<div class="item">
						<div class="glry-w3agile-grids agileits"> 
							<div class="new-tag"><h6>New</h6></div>
							<a href="products4.html"><img src="images/s1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products4.html">Roller Skates</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$180</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Roller Skates"/> 
									<input type="hidden" name="amount" value="180.00" /> 
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>         
						</div>  
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits"> 
							<a href="products1.html"><img src="images/f1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products1.html">T Shirt</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$10</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="T Shirt" /> 
									<input type="hidden" name="amount" value="10.00" /> 
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>        
						</div>    
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits"> 
							<div class="new-tag"><h6>New</h6></div>
							<a href="products6.html"><img src="images/p1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products6.html">Coffee Mug</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$14</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Coffee Mug" /> 
									<input type="hidden" name="amount" value="14.00" /> 
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>         
						</div>  
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits"> 
							<div class="new-tag"><h6>20% <br> Off</h6></div>
							<a href="products6.html"><img src="images/p2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products6.html">Teddy bear</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$20</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Teddy bear" /> 
									<input type="hidden" name="amount" value="20.00" /> 
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>        
						</div> 
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits"> 
							<a href="products4.html"><img src="images/s2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products4.html">Football</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$70</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Football"/> 
									<input type="hidden" name="amount" value="70.00"/>
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>        
						</div> 
					</div> 
					<div class="item">
						<div class="glry-w3agile-grids agileits"> 
							<div class="new-tag"><h6>Sale</h6></div>
							<a href="products3.html"><img src="images/h1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products3.html">Wall Clock</a></h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$80</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Wall Clock" /> 
									<input type="hidden" name="amount" value="80.00" /> 
									<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>         
						</div>  
					</div> 
				</div>    
			</div>
			<!-- //recommendations --> 
			<!-- collapse-tabs -->
			<div class="collpse tabs">
				<h3 class="w3ls-title">相关信息</h3>
				<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									<i class="fa fa-file-text-o fa-icon" aria-hidden="true"></i> Description <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									<i class="fa fa-info-circle fa-icon" aria-hidden="true"></i> additional information <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a> 
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									<i class="fa fa-check-square-o fa-icon" aria-hidden="true"></i> reviews (5) <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
									<i class="fa fa-question-circle fa-icon" aria-hidden="true"></i> help <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //collapse --> 
			<!-- offers-cards --> 
			<div class="w3single-offers offer-bottom"> 
				<div class="col-md-6 offer-bottom-grids">
					<div class="offer-bottom-grids-info2">
						<h4>Special Gift Cards</h4> 
						<h6>More brands, more ways to shop. <br> Check out these ideal gifts!</h6>
					</div>
				</div>
				<div class="col-md-6 offer-bottom-grids">
					<div class="offer-bottom-grids-info">
						<h4>Flat $10 Discount</h4> 
						<h6>The best Shopping Offer <br> On Fashion Store</h6>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- //offers-cards -->
		</div>
	</div>
	<!--//products-->  
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
							<li><a href="about.html">我们</a></li>
							<li><a href="marketplace.html">市值</a></li>
							<li><a href="values.html">核心观念</a></li>
							<li><a href="privacy.html">隐私政策</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>为您服务</h3>
						<ul>
							<li><a href="contact.html">联系我们</a></li>
							<li><a href="login.html">回到首页</a></li>
							<li><a href="faq.html">常见问题</a></li>
							<li><a href="sitemap.html">详细地址</a></li>
							<li><a href="login.html">订单状态</a></li>
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
</body>
</html>