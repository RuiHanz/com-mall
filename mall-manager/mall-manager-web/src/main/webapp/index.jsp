<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-7-16
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>海哥电脑城</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->
    <link href="css/ken-burns.css" rel="stylesheet" type="text/css" media="all" /> <!-- banner slider -->
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->
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
    <link href='https://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
    <!-- web-fonts -->
    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function() {
            $("#owl-demo").owlCarousel({
                autoPlay: 3000, //Set AutoPlay to 3 seconds
                items :4,
                itemsDesktop : [640,5],
                itemsDesktopSmall : [480,2],
                navigation : true

            });
        });
    </script>
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
    <script src="js/bootstrap.js"></script>
    <style type="text/css">
        #cxy{
            padding: 0px 0px 0px 2px;
            top: 40px;
            box-shadow: 0 2px 14px rgba(0,0,0,0);
        }
    </style>
	<script type="text/javascript">
        function product() {
            location.href="http://localhost:9099/ProductFindAllServlet";
        }
	</script>
</head>
<body>
<!--Begin Header Begin-->
<!-- header -->
<div class="header">
    <div class="w3ls-header"><!--header-one-->
        <div class="w3ls-header-left">
            <p><a href="#">海哥给您请安了！！！！</a></p>
        </div>
        <div class="w3ls-header-right">
            <ul>
                <li class="dropdown head-dpdn">
                    <a href="login.jsp" class="dropdown-toggle" > 登录 </a>
                    <a href="signup.jsp" class="dropdown-toggle" > 注册 </a>
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
                <form action="/searchByMch.do" method="post">
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
                                <ul class="cd-secondary-dropdown " style="width: 280px " id="cxy">
                                    <c:forEach items="${cList}" var="c">
                                        <li onclick="product()" style="width: 52%" >
                                            <cc style="cursor: grab">${c.flmch2}</cc>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </li>
                        </c:forEach>
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
<!-- banner -->
<div class="banner">
    <div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">
        <!-- Wrapper-for-Slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active"><!-- First-Slide -->
                <img src="images/5.jpg" alt="" class="img-responsive" />
                <div class="carousel-caption kb_caption kb_caption_right">
                    <h3 data-animation="animated flipInX">商品 <span>50%</span> 折扣</h3>
                    <h4 data-animation="animated flipInX">仅限今日热卖</h4>
                </div>
            </div>
            <div class="item"> <!-- Second-Slide -->
                <img src="images/8.jpg" alt="" class="img-responsive" />
                <div class="carousel-caption kb_caption kb_caption_right">
                    <h3 data-animation="animated fadeInDown">我们有最新最热的科技产品</h3>
                    <h4 data-animation="animated fadeInUp">暑假大放送 物美又价廉</h4>
                </div>
            </div>

            <div class="item"><!-- Third-Slide -->
                <img src="images/3.jpg" alt="" class="img-responsive"/>
                <div class="carousel-caption kb_caption kb_caption_center">
                    <h3 data-animation="animated fadeInLeft">季末销售</h3>
                    <h4 data-animation="animated flipInX">海哥电脑城 年中优惠</h4>
                </div>
            </div>

        </div>
        <!-- Left-Button -->
        <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
            <span class="fa fa-angle-left kb_icons" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <!-- Right-Button -->
        <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
            <span class="fa fa-angle-right kb_icons" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <script src="js/custom.js"></script>
</div>
<!-- //banner -->
<!-- 笔记本 -->
<div class="welcome" style="padding: 0px 0">
    <div class="container">
        <div class="welcome-info">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <div class="clearfix"> </div>
                <h3 class="w3ls-title">笔记本</h3>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                        <div class="tabcontent-grids">
                            <div id="owl-demo" class="owl-carousel">
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products.jsp"><img src="images/e1.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">联想拯救者Y700p</a></h4>
                                            <p>2019英特尔酷睿i7 15.6英寸游戏笔记本电脑</p>
                                            <h5>￥9299</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Audio speaker" />
                                                <input type="hidden" name="amount" value="200.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加到购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>折扣</h6></div>
                                        <a href="products.jsp"><img src="images/e2.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">神舟战神 Z7-CT7GK</a></h4>
                                            <p>9代酷睿i7-9750H GTX1660Ti 15.6英寸轻薄游戏笔记本电脑</p>
                                            <h5>￥7468</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Refrigerator" />
                                                <input type="hidden" name="amount" value="700.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>新品</h6></div>
                                        <a href="products.jsp"><img src="images/e3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">戴尔DELL游匣G3</a></h4>
                                            <p>15.6英寸轻薄游戏笔记本电脑</p>
                                            <h5>￥6489</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Smart Phone" />
                                                <input type="hidden" name="amount" value="300.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products.jsp"><img src="images/e4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">惠普（HP）暗影精灵4代</a></h4>
                                            <p>英特尔酷睿i7 15.6英寸游戏笔记本电脑</p>
                                            <h5>￥6599</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Digital Camera"/>
                                                <input type="hidden" name="amount" value="100.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products.jsp"><img src="images/e1.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">联想拯救者Y700p</a></h4>
                                            <p>英特尔酷睿i7 15.6英寸游戏笔记本电脑</p>
                                            <h5>￥9299</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Audio speaker" />
                                                <input type="hidden" name="amount" value="200.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>折扣</h6></div>
                                        <a href="products.jsp"><img src="images/e2.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">神舟战神 Z7-CT7GK</a></h4>
                                            <p>9代酷睿i7 15.6英寸轻薄游戏笔记本电脑</p>
                                            <h5>￥7468</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Refrigerator" />
                                                <input type="hidden" name="amount" value="700.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>新品</h6></div>
                                        <a href="products.jsp"><img src="images/e3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">戴尔DELL游匣G3</a></h4>
                                            <p>15.6英寸轻薄游戏笔记本电脑</p>
                                            <h5>￥6489</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Smart Phone" />
                                                <input type="hidden" name="amount" value="300.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products.jsp"><img src="images/e4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products.jsp">惠普（HP）暗影精灵4代</a></h4>
                                            <p>英特尔酷睿i7 15.6英寸游戏笔记本电脑</p>
                                            <h5>￥6599</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Digital Camera"/>
                                                <input type="hidden" name="amount" value="100.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 添加购物车</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="carl" aria-labelledby="carl-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function() {
                                    $("#owl-demo1").owlCarousel({

                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items :4,
                                        itemsDesktop : [640,5],
                                        itemsDesktopSmall : [414,4],
                                        navigation : true

                                    });

                                });
                            </script>
                            <div id="owl-demo1" class="owl-carousel">
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
                                        <a href="products1.jsp"><img src="images/f3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products1.jsp">Jewellery</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$60</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Jewellery" />
                                                <input type="hidden" name="amount" value="60.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>New</h6></div>
                                        <a href="products1.jsp"><img src="images/f4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products1.jsp">Party dress</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$15</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Party dress" />
                                                <input type="hidden" name="amount" value="15.00" />
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
                                        <a href="products1.jsp"><img src="images/f3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products1.jsp">Jewellery</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$60</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Jewellery" />
                                                <input type="hidden" name="amount" value="60.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>New</h6></div>
                                        <a href="products1.jsp"><img src="images/f4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products1.jsp">Party dress</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$15</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Party dress" />
                                                <input type="hidden" name="amount" value="15.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="james" aria-labelledby="james-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function() {
                                    $("#owl-demo2").owlCarousel({

                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items :4,
                                        itemsDesktop : [640,5],
                                        itemsDesktopSmall : [414,4],
                                        navigation : true

                                    });

                                });
                            </script>
                            <div id="owl-demo2" class="owl-carousel">
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
                                        <div class="new-tag"><h6>Sale</h6></div>
                                        <a href="products6.jsp"><img src="images/p3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products6.jsp">Chocolates</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$60</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Chocolates" />
                                                <input type="hidden" name="amount" value="60.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products6.jsp"><img src="images/p4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products6.jsp">Gift Card</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$22</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Gift Card" />
                                                <input type="hidden" name="amount" value="22.00" />
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
                                        <div class="new-tag"><h6>Sale</h6></div>
                                        <a href="products6.jsp"><img src="images/p3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products6.jsp">Chocolates</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$60</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Chocolates" />
                                                <input type="hidden" name="amount" value="60.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products6.jsp"><img src="images/p4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products6.jsp">Gift Card</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$22</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Gift Card" />
                                                <input type="hidden" name="amount" value="22.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="decor" aria-labelledby="decor-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function() {
                                    $("#owl-demo3").owlCarousel({

                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items :4,
                                        itemsDesktop : [640,5],
                                        itemsDesktopSmall : [414,4],
                                        navigation : true

                                    });

                                });
                            </script>
                            <div id="owl-demo3" class="owl-carousel">
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
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>10%<br>Off</h6></div>
                                        <a href="products3.jsp"><img src="images/h2.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products3.jsp">Plants & Vases</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$40</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Plants & Vases" />
                                                <input type="hidden" name="amount" value="40.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products3.jsp"><img src="images/h3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products3.jsp">Queen Size Bed</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$250</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Queen Size Bed" />
                                                <input type="hidden" name="amount" value="250.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products3.jsp"><img src="images/h4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products3.jsp">flower pot</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$30</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="flower pot" />
                                                <input type="hidden" name="amount" value="30.00" />
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
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>10%<br>Off</h6></div>
                                        <a href="products3.jsp"><img src="images/h2.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products3.jsp">Plants & Vases</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$40</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Plants & Vases" />
                                                <input type="hidden" name="amount" value="40.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products3.jsp"><img src="images/h3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products3.jsp">Queen Size Bed</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$250</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Queen Size Bed" />
                                                <input type="hidden" name="amount" value="250.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products3.jsp"><img src="images/h4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products3.jsp">flower pot</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$30</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="flower pot" />
                                                <input type="hidden" name="amount" value="30.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="sports" aria-labelledby="sports-tab">
                        <div class="tabcontent-grids">
                            <script>
                                $(document).ready(function() {
                                    $("#owl-demo4").owlCarousel({

                                        autoPlay: 3000, //Set AutoPlay to 3 seconds

                                        items :4,
                                        itemsDesktop : [640,5],
                                        itemsDesktopSmall : [414,4],
                                        navigation : true

                                    });
                                });
                            </script>
                            <div id="owl-demo4" class="owl-carousel">
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
                                                <button type="submit" class="w3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <div class="new-tag"><h6>20% <br>Off</h6></div>
                                        <a href="products4.jsp"><img src="images/s3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products4.jsp">Nylon Shuttle</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$56</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Nylon Shuttle" />
                                                <input type="hidden" name="amount" value="56.00"/>
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products4.jsp"><img src="images/s4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products4.jsp">Cricket Kit</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$80</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Cricket Kit" />
                                                <input type="hidden" name="amount" value="80.00" />
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
                                        <div class="new-tag"><h6>20% <br>Off</h6></div>
                                        <a href="products4.jsp"><img src="images/s3.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products4.jsp">Nylon Shuttle</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$56</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Nylon Shuttle" />
                                                <input type="hidden" name="amount" value="56.00"/>
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="glry-w3agile-grids agileits">
                                        <a href="products4.jsp"><img src="images/s4.png" alt="img"></a>
                                        <div class="view-caption agileits-w3layouts">
                                            <h4><a href="products4.jsp">Cricket Kit</a></h4>
                                            <p>Lorem ipsum dolor sit amet consectetur</p>
                                            <h5>$80</h5>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="Cricket Kit" />
                                                <input type="hidden" name="amount" value="80.00" />
                                                <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //笔记本 -->
<!--一体机-->
<div class="welcome" style="padding: 0px 0">
    <div class="container">
        <div class="welcome-info">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <div class="recommend">
                    <h3 class="w3ls-title">一体机</h3>
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
                    <%--推荐商品滚动	：陈希元--%>
                    <div id="owl-demo5" class="owl-carousel">
                        <c:forEach items="${pList}" var="p" varStatus="vs" begin="0" end="4">
                            <div class="item">
                                <div class="glry-w3agile-grids agileits">
                                    <div class="new-tag"><h6>20% <br> Off</h6></div>
                                    <c:forEach items="${piList}" var="pi" begin="${vs.index}" end="${vs.index}">
                                        <a href="products1.html"><img src="images/${pi.url}" alt="img"></a>
                                    </c:forEach>
                                    <div class="view-caption agileits-w3layouts">
                                        <h4><a href="products1.html">${p.shp_mch}</a></h4>
                                        <p>${p.shp_msh}</p>
                                        <h5>$20</h5>
                                        <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 加入购物车</button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <%--//推荐商品展示：陈希元--%>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//一体机-->
<!-- add-products -->
<div class="add-products">
    <div class="container">
        <div class="add-products-row">
            <div class="w3ls-add-grids">
                <a href="products1.jsp">
                    <!--					<h4>英特尔芯体验 <span>20%</span> 降价</h4>-->
                    <h6><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                </a>
            </div>
            <div class="w3ls-add-grids w3ls-add-grids-mdl">
                <a href="products1.jsp">
                    <!--					<h4>SUNDAY SPECIAL DISCOUNT FLAT <span>40%</span> OFF</h4>-->
                    <h6><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                </a>
            </div>
            <div class="w3ls-add-grids w3ls-add-grids-mdl1">
                <a href="products.jsp">
                    <!--					<h4>LATEST DESIGNS FOR YOU <span> Hurry !</span></h4>-->
                    <h6><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                </a>
            </div>
            <div class="clerfix"> </div>
        </div>
    </div>
</div>
<!-- //add-products -->
<!--工作站-->
<div class="welcome" style="padding: 0px 0">
    <div class="container">
        <div class="welcome-info">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <div class="recommend">
                    <h3 class="w3ls-title">工作站</h3>
                    <script>
                        $(document).ready(function() {
                            $("#owl-demo51").owlCarousel({

                                autoPlay: 3000, //Set AutoPlay to 3 seconds

                                items :4,
                                itemsDesktop : [640,5],
                                itemsDesktopSmall : [414,4],
                                navigation : true

                            });

                        });
                    </script>
                    <%--推荐商品滚动	：陈希元--%>
                    <div id="owl-demo51" class="owl-carousel">
                        <c:forEach items="${pList}" var="p" varStatus="vs" begin="3" end="7">
                            <div class="item">
                                <div class="glry-w3agile-grids agileits">
                                    <div class="new-tag"><h6>20% <br> Off</h6></div>
                                    <c:forEach items="${piList}" var="pi" begin="${vs.index}" end="${vs.index}">
                                        <a href="products1.html"><img src="images/${pi.url}" alt="img"></a>
                                    </c:forEach>
                                    <div class="view-caption agileits-w3layouts">
                                        <h4><a href="products1.html">${p.shp_mch}</a></h4>
                                        <p>${p.shp_msh}</p>
                                        <h5>$20</h5>
                                        <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 加入购物车</button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <%--//推荐商品展示：陈希元--%>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//工作站-->
<!--一台式机-->
<div class="welcome" style="padding: 0px 0">
    <div class="container">
        <div class="welcome-info">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <div class="recommend">
                    <h3 class="w3ls-title">台式机</h3>
                    <script>
                        $(document).ready(function() {
                            $("#owl-demo52").owlCarousel({

                                autoPlay: 3000, //Set AutoPlay to 3 seconds

                                items :4,
                                itemsDesktop : [640,5],
                                itemsDesktopSmall : [414,4],
                                navigation : true

                            });

                        });
                    </script>
                    <%--推荐商品滚动	：陈希元--%>
                    <div id="owl-demo52" class="owl-carousel">
                        <c:forEach items="${pList}" var="p" varStatus="vs" begin="0" end="7">
                            <div class="item">
                                <div class="glry-w3agile-grids agileits">
                                    <div class="new-tag"><h6>20% <br> Off</h6></div>
                                    <c:forEach items="${piList}" var="pi" begin="${vs.index}" end="${vs.index}">
                                        <a href="products1.html"><img src="images/${pi.url}" alt="img"></a>
                                    </c:forEach>
                                    <div class="view-caption agileits-w3layouts">
                                        <h4><a href="products1.html">${p.shp_mch}</a></h4>
                                        <p>${p.shp_msh}</p>
                                        <h5>$20</h5>
                                        <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> 加入购物车</button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <%--//推荐商品展示：陈希元--%>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//一台式机-->
<!-- coming soon -->
<div class="soon">
    <div class="container">
        <h3>周末特卖</h3>
        <h4>走过路过 不要错过</h4>
        <div id="countdown1" class="ClassyCountdownDemo"></div>
    </div>
</div>
<!-- //coming soon -->
<!-- deals -->
<div class="deals">
    <div class="container">
        <h3 class="w3ls-title">今日热卖 </h3>
        <div class="deals-row">
            <div class="col-md-3 focus-grid">
                <a href="products.jsp" class="wthree-btn">
                    <div class="focus-image"><i class="fa fa-mobile"></i></div>
                    <h4 class="clrchg">笔记本</h4>
                </a>
            </div>
            <div class="col-md-3 focus-grid">
                <a href="products.jsp" class="wthree-btn wthree1">
                    <div class="focus-image"><i class="fa fa-laptop"></i></div>
                    <h4 class="clrchg"> 台式机</h4>
                </a>
            </div>
            <div class="col-md-3 focus-grid">
                <a href="products4.jsp" class="wthree-btn wthree2">
                    <div class="focus-image"><i class="fa fa-wheelchair"></i></div>
                    <h4 class="clrchg">显卡</h4>
                </a>
            </div>
            <div class="col-md-3 focus-grid">
                <a href="products3.jsp" class="wthree-btn wthree3">
                    <div class="focus-image"><i class="fa fa-home"></i></div>
                    <h4 class="clrchg">CPU</h4>
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl">
                <a href="products9.jsp" class="wthree-btn wthree3">
                    <div class="focus-image"><i class="fa fa-book"></i></div>
                    <h4 class="clrchg">显示器</h4>
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl">
                <a href="products1.jsp" class="wthree-btn wthree4">
                    <div class="focus-image"><i class="fa fa-asterisk"></i></div>
                    <h4 class="clrchg">SSD</h4>
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl">
                <a href="products2.jsp" class="wthree-btn wthree2">
                    <div class="focus-image"><i class="fa fa-gamepad"></i></div>
                    <h4 class="clrchg">键盘</h4>
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl">
                <a href="products5.jsp" class="wthree-btn wthree">
                    <div class="focus-image"><i class="fa fa-shopping-basket"></i></div>
                    <h4 class="clrchg">鼠标</h4>
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl">
                <a href="products7.jsp" class="wthree-btn wthree5">
                    <div class="focus-image"><i class="fa fa-medkit"></i></div>
                    <h4 class="clrchg">耳机</h4>
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl">
                <a href="products8.jsp" class="wthree-btn wthree1">
                    <div class="focus-image"><i class="fa fa-car"></i></div>
                    <h4 class="clrchg">路由器</h4>
                </a>
            </div>
            <div class="col-md-3 focus-grid">
                <a href="products5.jsp" class="wthree-btn wthree2">
                    <div class="focus-image"><i class="fa fa-cutlery"></i></div>
                    <h4 class="clrchg">Food</h4>
                </a>
            </div>
            <div class="col-md-3 focus-grid">
                <a href="products4.jsp" class="wthree-btn wthree5">
                    <div class="focus-image"><i class="fa fa-futbol-o"></i></div>
                    <h4 class="clrchg">机箱</h4>
                </a>
            </div>
            <div class="col-md-3 focus-grid">
                <a href="products2.jsp" class="wthree-btn wthree3">
                    <div class="focus-image"><i class="fa fa-gamepad"></i></div>
                    <h4 class="clrchg">摄像头</h4>
                </a>
            </div>
            <div class="col-md-3 focus-grid">
                <a href="products6.jsp" class="wthree-btn ">
                    <div class="focus-image"><i class="fa fa-gift"></i></div>
                    <h4 class="clrchg">音响</h4>
                </a>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
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
<!-- Placed at the end of the document so the pages load faster -->
</body>

