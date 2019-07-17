<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>公司所属地</title>
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
	<!-- contact-page -->
	<div class="contact">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">联系我们</h3>
			<div class="map-info">
				<div class="col-md-6 map-grids">
					<h4>我们的智慧集市店1</h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.9503398796587!2d-73.9940307!3d40.719109700000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a27e2f24131%3A0x64ffc98d24069f02!2sCANADA!5e0!3m2!1sen!2sin!4v1441710758555"></iframe>
				</div>
				<div class="col-md-6 map-grids">
					<h4>我们的智慧集市店2</h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23778.253788067046!2d-87.77626504212625!3d41.84376259112007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e33967c81db8f%3A0xbc5872c77c003120!2sCicero%2C+IL!5e0!3m2!1sen!2sin!4v1470650895897"></iframe>
				</div>   
				<div class="col-md-6 map-grids">
					<h4>我们的智慧集市店3</h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4851.135123262741!2d105.86847248902144!3d58.25136049196456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5cf6e6f5eed7e5eb%3A0xfec064728556bbad!2sTokma%2C+Irkutsk+Oblast%2C+Russia%2C+666639!5e0!3m2!1sen!2sin!4v1470650971228"></iframe>
				</div>   
				<div class="col-md-6 map-grids">
					<h4>我们的智慧集市店4</h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.9503398796587!2d-73.9940307!3d40.719109700000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a27e2f24131%3A0x64ffc98d24069f02!2sCANADA!5e0!3m2!1sen!2sin!4v1441710758555" allowfullscreen=""></iframe>
				</div> 
				<div class="clearfix"> </div>
			</div>  
			<div class="contact-form-row">
				<h3 class="w3ls-title w3ls-title1">给我们打电话</h3>
				<div class="col-md-7 contact-left">
					<form action="#" method="post">
						<input type="text" name="Name" placeholder="姓名" required="">
						<input class="email" type="text" name="Email" placeholder="Email" required="">
						<textarea placeholder="信息" name="Message" required=""></textarea>
						<input type="submit" value="提交">
					</form>
				</div> 
				<div class="col-md-4 contact-right">
					<div class="cnt-w3agile-row">
						<div class="col-md-3 contact-w3icon">
							<i class="fa fa-truck" aria-hidden="true"></i>
						</div>
						<div class="col-md-9 contact-w3text">
							<p>管理您的订单 <br>轻松跟踪订单和退货 </p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="cnt-w3agile-row cnt-w3agile-row-mdl">
						<div class="col-md-3 contact-w3icon">
							<i class="fa fa-bell" aria-hidden="true"></i>
						</div>
						<div class="col-md-9 contact-w3text">
							<p>通知 <br>获取相关提醒和建议</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="cnt-w3agile-row">
						<div class="col-md-3 contact-w3icon">
							<i class="fa fa-heart" aria-hidden="true"></i>
						</div>
						<div class="col-md-9 contact-w3text">
							<p>要求<br> 有愿望、评论、评级</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div> 
				<div class="clearfix"> </div>	
			</div>
		</div>
	</div>
	<!-- //contact-page --> 
	<!-- footer-top -->
	<!-- //deals -->
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
	<!-- countdown.js -->
	<script src="js/jquery.knob.js"></script>
	<script src="js/jquery.throttle.js"></script>
	<script src="js/jquery.classycountdown.js"></script>
	<script>
		$(document).ready(function() {
			$('#countdown1').ClassyCountdown({
				end: '1388268325',
				now: '1387999995',
				labels: true,
				style: {
					element: "",
					textResponsive: .5,
					days: {
						gauge: {
							thickness: .10,
							bgColor: "rgba(0,0,0,0)",
							fgColor: "#1abc9c",
							lineCap: 'round'
						},
						textCSS: 'font-weight:300; color:#fff;'
					},
					hours: {
						gauge: {
							thickness: .10,
							bgColor: "rgba(0,0,0,0)",
							fgColor: "#05BEF6",
							lineCap: 'round'
						},
						textCSS: ' font-weight:300; color:#fff;'
					},
					minutes: {
						gauge: {
							thickness: .10,
							bgColor: "rgba(0,0,0,0)",
							fgColor: "#8e44ad",
							lineCap: 'round'
						},
						textCSS: ' font-weight:300; color:#fff;'
					},
					seconds: {
						gauge: {
							thickness: .10,
							bgColor: "rgba(0,0,0,0)",
							fgColor: "#f39c12",
							lineCap: 'round'
						},
						textCSS: ' font-weight:300; color:#fff;'
					}

				},
				onEndCallback: function() {
					console.log("Time out!");
				}
			});
		});
	</script>
	<!-- //countdown.js -->
	<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js"> </script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>