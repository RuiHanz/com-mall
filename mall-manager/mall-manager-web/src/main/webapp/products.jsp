<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->  
<link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" />   
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->  
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script> 
<script src="js/owl.carousel.js"></script>
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
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" id="sourcecode">
	$(function()
	{
		$('.scroll-pane').jScrollPane();
	});
</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin --> 
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
<!-- products -->
	<div class="products">	 
		<div class="container">
			<div class="col-md-9 product-w3ls-right">
				<!-- breadcrumbs --> 
				<ol class="breadcrumb breadcrumb1">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Products</li>
				</ol> 
				<div class="clearfix"> </div>
				<!-- //breadcrumbs -->
				<div class="product-top">
					<h4>Electronics</h4>
					<ul> 
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Filter By<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Low price</a></li> 
								<li><a href="#">High price</a></li>
								<li><a href="#">Latest</a></li> 
								<li><a href="#">Popular</a></li> 
							</ul> 
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Brands<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Samsung</a></li> 
								<li><a href="#">LG</a></li>
								<li><a href="#">Sony</a></li> 
								<li><a href="#">Other</a></li> 
							</ul> 
						</li>
					</ul> 
					<div class="clearfix"> </div>
				</div>
				<div class="products-row">
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>20%<br>Off</h6></div>
							<a href="/product/single.do"><img src="images/e1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="/product/single.do">Audio speaker</a></h5>
								<h6><del>$200</del> $100</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Audio speaker" /> 
									<input type="hidden" name="amount" value="100.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Refrigerator</a></h5>
								<h6><del>$700</del> $300</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Refrigerator" /> 
									<input type="hidden" name="amount" value="300.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>5% <br> Off</h6></div>
							<a href="single.jsp"><img src="images/e3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Smart Phone</a></h5>
								<h6><del>$100</del> $70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Smart Phone"/> 
									<input type="hidden" name="amount" value="70.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>  
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e4.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Digital Camera</a></h5>
								<h6><del>$100</del> $80</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Digital Camera"/> 
									<input type="hidden" name="amount" value="80.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div> 
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e4.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Digital Camera</a></h5>
								<h6><del>$100</del> $80</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Digital Camera"/> 
									<input type="hidden" name="amount" value="80.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>5% <br> Off</h6></div>
							<a href="single.jsp"><img src="images/e3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Smart Phone</a></h5>
								<h6><del>$100</del> $70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Smart Phone"/> 
									<input type="hidden" name="amount" value="70.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>  
					</div> 
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>20%<br>Off</h6></div>
							<a href="single.jsp"><img src="images/e1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Audio speaker</a></h5>
								<h6><del>$200</del> $100</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Audio speaker" /> 
									<input type="hidden" name="amount" value="100.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div> 
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Refrigerator</a></h5>
								<h6><del>$700</del> $300</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Refrigerator" /> 
									<input type="hidden" name="amount" value="300.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div> 
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>20%<br>Off</h6></div>
							<a href="single.jsp"><img src="images/e1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Audio speaker</a></h5>
								<h6><del>$200</del> $100</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Audio speaker" /> 
									<input type="hidden" name="amount" value="100.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Refrigerator</a></h5>
								<h6><del>$700</del> $300</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Refrigerator" /> 
									<input type="hidden" name="amount" value="300.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>5% <br> Off</h6></div>
							<a href="single.jsp"><img src="images/e3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Smart Phone</a></h5>
								<h6><del>$100</del> $70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Smart Phone"/> 
									<input type="hidden" name="amount" value="70.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>  
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e4.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Digital Camera</a></h5>
								<h6><del>$100</del> $80</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Digital Camera"/> 
									<input type="hidden" name="amount" value="80.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div> 
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e4.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Digital Camera</a></h5>
								<h6><del>$100</del> $80</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Digital Camera"/> 
									<input type="hidden" name="amount" value="80.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>5% <br> Off</h6></div>
							<a href="single.jsp"><img src="images/e3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Smart Phone</a></h5>
								<h6><del>$100</del> $70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Smart Phone"/> 
									<input type="hidden" name="amount" value="70.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>  
					</div> 
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>20%<br>Off</h6></div>
							<a href="single.jsp"><img src="images/e1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Audio speaker</a></h5>
								<h6><del>$200</del> $100</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Audio speaker" /> 
									<input type="hidden" name="amount" value="100.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div> 
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.jsp"><img src="images/e2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.jsp">Refrigerator</a></h5>
								<h6><del>$700</del> $300</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Refrigerator" /> 
									<input type="hidden" name="amount" value="300.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div> 
					<div class="clearfix"> </div>
				</div>
				<!-- add-products --> 
				<div class="w3ls-add-grids w3agile-add-products">
					<a href="#"> 
						<h4>TOP 10 TRENDS FOR YOU FLAT <span>20%</span> OFF</h4>
						<h6>Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
					</a>
				</div> 
				<!-- //add-products -->
			</div>
			<div class="col-md-3 rsidebar">
				<div class="rsidebar-top">
					<div class="slider-left">
						<h4>Filter By Price</h4>            
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>0 - $100 </label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$100 - $200 </label> 
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$200 - $250  </label> 
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$250 - $300 </label> 
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$350 - $400 </label> 
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$450 - $500  </label> 
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>More</label> 
						</div> 
					</div>
					<div class="sidebar-row">
						<h4> Electronics</h4>
						<ul class="faq">
							<li class="item1"><a href="#">Mobile phones<span class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Smart phones</a></li>										
									<li class="subitem1"><a href="#">Accessories</a></li>										
									<li class="subitem1"><a href="#">Tabs</a></li>										
								</ul>
							</li>
							<li class="item2"><a href="#">Large appliances<span class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Refrigerators </a></li>										
									<li class="subitem1"><a href="#">Washing Machine </a></li>										
									<li class="subitem1"><a href="#">Kitchen Appliances </a></li>										
									<li class="subitem1"><a href="#">Air Conditioner</a></li>										
								</ul>
							</li>
							<li class="item3"><a href="#">Entertainment<span class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#"> Tv & Accessories</a></li>										
									<li class="subitem1"><a href="#">Digital Camera </a></li>										
									<li class="subitem1"><a href="#">Computer</a></li>										
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
					<div class="sidebar-row">
						<h4>DISCOUNTS</h4>
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Upto - 10% (20)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>70% - 60% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						</div>
					</div>
					<div class="sidebar-row">
						<h4>Color</h4>
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>White</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pink</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gold</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Blue</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Orange</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i> Brown</label> 
						</div>
					</div>			 
				</div>
				<div class="related-row">
					<h4>Related Searches</h4>
					<ul>
						<li><a href="products.jsp">Air conditioner </a></li>
						<li><a href="products.jsp">Gaming</a></li>
						<li><a href="products.jsp">Monitors</a></li>
						<li><a href="products.jsp">Pc </a></li>
						<li><a href="products.jsp">Food Processors</a></li>
						<li><a href="products.jsp">Oven</a></li>
						<li><a href="products.jsp">Purifiers</a></li>
						<li><a href="products.jsp">Oven</a></li>
						<li><a href="products.jsp">Cleaners</a></li>
						<li><a href="products.jsp">Small devices</a></li>
					</ul>
				</div>
				<div class="related-row">
					<h4>YOU MAY ALSO LIKE</h4>
					<div class="galry-like">  
						<a href="single.jsp"><img src="images/e1.png" class="img-responsive" alt="img"></a>
						<h4><a href="products.jsp">Audio speaker</a></h4>
						<h5>$100</h5>       
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
			<!-- recommendations -->
			<div class="recommend">
				<h3 class="w3ls-title">Our Recommendations </h3> 
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
							<a href="products1.jsp"><img src="images/f2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products1.jsp">Women Sandal</a></h4>
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
							<a href="products.jsp"><img src="images/e4.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products.jsp">Digital Camera</a></h4>
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
							<a href="products4.jsp"><img src="images/s1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products4.jsp">Roller Skates</a></h4>
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
							<a href="products1.jsp"><img src="images/f1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products1.jsp">T Shirt</a></h4>
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
							<a href="products6.jsp"><img src="images/p1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products6.jsp">Coffee Mug</a></h4>
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
							<a href="products6.jsp"><img src="images/p2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">              
								<h4><a href="products6.jsp">Teddy bear</a></h4>
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
							<a href="products4.jsp"><img src="images/s2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products4.jsp">Football</a></h4>
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
							<a href="products3.jsp"><img src="images/h1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">           
								<h4><a href="products3.jsp">Wall Clock</a></h4>
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
						<h4>FREE DELIVERY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
					</div> 
					<div class="clearfix"> </div>
				</div> 
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div> 
					<div class="ftr-top-right">
						<h4>CUSTOMER CARE</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
					</div> 
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					</div> 
					<div class="ftr-top-right">
						<h4>GOOD QUALITY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
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
				<h4>Keep in touch</h4>  
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
				</ul>
				<ul class="apps"> 
					<li><h4>Download Our app : </h4> </li>
					<li><a href="#" class="fa fa-apple"></a></li>
					<li><a href="#" class="fa fa-windows"></a></li>
					<li><a href="#" class="fa fa-android"></a></li>
				</ul>
			</div> 
			<div class="col-md-6 subscribe-right">
				<h4>Sign up for email and get 25%off!</h4> 
				<form action="#" method="post"> 
					<input type="text" name="email" placeholder="Enter your Email..." required="">
					<input type="submit" value="Subscribe">
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
						<h2><a href="index.jsp"><span>S</span>mart <i>Bazaar</i></a></h2>
						<h6>Your stores. Your place.</h6>
					</div>
					<ul>
						<li><i class="fa fa-map-marker"></i> 123 San Sebastian, New York City USA.</li>
						<li><i class="fa fa-mobile"></i> 333 222 3333 </li>
						<li><i class="fa fa-phone"></i> +222 11 4444 </li>
						<li><i class="fa fa-envelope-o"></i> <a href="mailto:example@mail.com"> mail@example.com</a></li>
					</ul> 
				</div>
				<div class="col-md-8 address-right">
					<div class="col-md-4 footer-grids">
						<h3>Company</h3>
						<ul>
							<li><a href="about.jsp">About Us</a></li>
							<li><a href="marketplace.jsp">Marketplace</a></li>
							<li><a href="values.jsp">Core Values</a></li>
							<li><a href="privacy.jsp">Privacy Policy</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Services</h3>
						<ul>
							<li><a href="contact.jsp">Contact Us</a></li>
							<li><a href="login.jsp">Returns</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
							<li><a href="sitemap.jsp">Site Map</a></li>
							<li><a href="login.jsp">Order Status</a></li>
						</ul> 
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Payment Methods</h3>
						<ul>
							<li><i class="fa fa-laptop" aria-hidden="true"></i> Net Banking</li>
							<li><i class="fa fa-money" aria-hidden="true"></i> Cash On Delivery</li>
							<li><i class="fa fa-pie-chart" aria-hidden="true"></i>EMI Conversion</li>
							<li><i class="fa fa-gift" aria-hidden="true"></i> E-Gift Voucher</li>
							<li><i class="fa fa-credit-card" aria-hidden="true"></i> Debit/Credit Card</li>
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
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
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