<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>常见问题</title>
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
	<!-- help-page -->
	<div class="faq-w3agile">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">常见问题(FAQ)</h3>
			<ul class="faq">
				<li class="item1"><a href="#" title="click here">将军向宠，性行淑均，晓畅军事，试用于昔日，先帝称之曰能，是以众议举宠为督。愚以为营中之事，悉以咨之，必能使行阵和睦，优劣得所。</a>
					<ul>
						<li class="subitem1"><p> 亲贤臣，远小人，此先汉所以兴隆也；亲小人，远贤臣，此后汉所以倾颓也。先帝在时，每与臣论此事，未尝不叹息痛恨于桓、灵也。侍中、尚书、长史、参军，此悉贞良死节之臣，愿陛下亲之信之，则汉室之隆，可计日而待也</p></li>
					</ul>
				</li>
				<li class="item2"><a href="#" title="click here">臣本布衣，躬耕于南阳，苟全性命于乱世，不求闻达于诸侯。先帝不以臣卑鄙，猥自枉屈，三顾臣于草庐之中，咨臣以当世之事，由是感激，遂许先帝以驱驰。后值倾覆，受任于败军之际，奉命于危难之间，尔来二十有一年矣</a>
					<ul>
						<li class="subitem1"><p> 先帝知臣谨慎，故临崩寄臣以大事也。受命以来，夙夜忧叹，恐托付不效，以伤先帝之明，故五月渡泸，深入不毛。今南方已定，兵甲已足，当奖率三军，北定中原，庶竭驽钝，攘除奸凶，兴复汉室，还于旧都。此臣所以报先帝而忠陛下之职分也。至于斟酌损益，进尽忠言，则攸之、祎、允之任也。</p></li>
					</ul>
				</li>
				<li class="item3"><a href="#" title="click here">愿陛下托臣以讨贼兴复之效，不效，则治臣之罪，以告先帝之灵。若无兴德之言，则责攸之、祎、允等之慢，以彰其咎；陛下亦宜自谋，以咨诹善道，察纳雅言，深追先帝遗诏，臣不胜受恩感激。</a>
					<ul>
						<li class="subitem1"><p>今当远离，临表涕零，不知所言。</p></li>
					</ul>
				</li>
				<li class="item4"><a href="#" title="click here">先帝开创的大业未完成一半却中途去世了。现在天下分为三国，指蜀汉国力薄弱，处境艰难。这确实是国家危急存亡的时期啊。</a>
					<ul>
						<li class="subitem1"><p>不过宫廷里侍从护卫的官员不懈怠，战场上忠诚有志的将士们奋不顾身，大概是他们追念先帝对他们的特别的知遇之恩（作战的原因），想要报答在陛下您身上。.</p></li>
					</ul>
				</li> 
				<li class="item5"><a href="#" title="click here">亲近贤臣，疏远小人，这是前汉所以兴盛的原因；亲近小人，疏远贤臣，这是后汉之所以衰败的原因。</a>
					<ul>
						<li class="subitem1"><p>（陛下）你实在应该扩大圣明的听闻，来发扬光大先帝遗留下来的美德，振奋有远大志向的人的志气，不应当随便看轻自己，说不恰当的话，以致于堵塞人们忠心地进行规劝的言路。皇宫中和朝廷里的大臣，本都是一个整体，奖惩功过，不应有所不同。如有作恶违法的人，或行为忠善的人，都应该交给主管官吏评定对他们的惩奖，以显示陛下处理国事的公正严明,而不应当有偏袒和私心，使宫内和朝廷奖罚方法不同。</p></li>
					</ul>
				</li>
				<li class="item6"><a href="#" title="click here">侍中、侍郎郭攸之、费祎、董允等人，都是善良诚实、心志忠贞纯洁的人，他们的志向和心思忠诚无二。因此先帝选拔他们留给陛下。我认为宫中之事，无论事情大小，都拿来跟他商讨，这样以后再去实施，一定能够弥补缺点和疏漏之处。得到更多的好处</a>
					<ul>
						<li class="subitem1"><p>将军向宠，性格和品行善良公正，精通军事，从前任用。</p></li>
					</ul>
				</li>
				<li class="item7"><a href="#" title="click here"></a>
					<ul>
						<li class="subitem1"><p>希望陛下能够把讨伐曹魏，兴复汉室的任务托付给我，若不能完成，就治我的罪，（从而）用来告慰先帝的在天之灵。</p></li>
					</ul>
				</li>
				<li class="item8"><a href="#" title="click here">如果没有振兴圣德的建议，那就责备郭攸之、费祎、董允等人的怠慢。来揭示他们的过失；陛下也应自行谋划，毫无保留地进献忠诚的建议，采纳正确的言论，深切追念先帝临终留下的教诲。我感激不尽。今天(我)将要告别陛下远行了，面对这份奏表禁不住热泪纵横，也不知说了些什么。</a>
					<ul>
						<li class="subitem1"><p>《出师表》以恳切的言辞，针对当时的局势，反复劝勉刘禅要继承先主刘备的遗志，开张圣听，赏罚严明，亲贤远佞，以完成“兴复汉室”的大业，表现了诸葛亮“北定中原”的坚强意志和对蜀汉忠贞不二的品格。</p></li>
					</ul>
				</li>
				<li class="item9"><a href="#" title="click here">诸葛亮（181－234），字孔明，号卧龙（也作伏龙），汉族，徐州琅琊阳都（今山东临沂市沂南县）人，三国时期蜀汉丞相，杰出的政治家、军事家、散文家、书法家、发明家。</a>
					<ul>
						<li class="subitem1"><p>三国时期，曹魏国力最强，孙吴次之，而蜀汉最为弱小。当刘备病卒于白帝城（今重庆奉节县东）时，他留给诸葛亮的是内外交困的局面和一个年幼无知、扶不起来的接班人。</p></li>
					</ul>
				</li>
				<li class="item10"><a href="#" title="click here">在世时被封为武乡侯，死后追谥忠武侯，东晋政权因其军事才能特追封他为武兴王。诸葛亮为匡扶蜀汉政权，呕心沥血，鞠躬尽瘁，死而后已。</a>
					<ul>
						<li class="subitem1"><p>在这种危难关头，诸葛亮以丞相府的名义承担了蜀汉的全部实际责任，对内严明法纪，奖励耕战；对外安抚戎羌，东联孙吴，积极准备北伐曹魏。经过几年的努力。蜀国力量有所加强，呈现“国以富饶”“</p></li>
					</ul>
				</li> 
			</ul> 
			<!-- script for tabs -->
			<script type="text/javascript">
				$(function() {
				
					var menu_ul = $('.faq > li > ul'),
						   menu_a  = $('.faq > li > a');
					
					menu_ul.hide();
				
					menu_a.click(function(e) {
						e.preventDefault();
						if(!$(this).hasClass('active')) {
							menu_a.removeClass('active');
							menu_ul.filter(':visible').slideUp('normal');
							$(this).addClass('active').next().stop(true,true).slideDown('normal');
						} else {
							$(this).removeClass('active');
							$(this).next().stop(true,true).slideUp('normal');
						}
					});
				
				});
			</script>
			<!-- script for tabs -->   
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