<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>关于</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" />
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
                <li class="dropdown head-dpdn" style="color:#FFFFFF ">
                    <c:if test="${sessionScope.userName!=null}">
                        欢迎您，${sessionScope.userName}!
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
                                            <li><a href="products9.html">商品</a></li>
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
<!--  about-page -->
<div class="about">
    <div class="container">
        <h3 class="w3ls-title w3ls-title1">关于</h3>
        <div class="about-text">
            <p>手机淘宝个人信息的采集行为都会事先告知您，并获得您的同意，淘宝不会出现未经您允许前提下采集你的个人信息。 您可以在淘宝APP中【我的淘宝】-【设置】-【隐私】进行获得权限的查看及修改。
                亲，如银行卡已扣款，但订单依旧显示「等待买家付款」，是由于网络繁忙导致的，请不要担心，我们会在下一个工作日18点前将订单的付款状态同步至「已付款」；如同步付款状态失败或订单关闭，多扣的钱款将根据您的支付方式原路退回，请您关注银行卡账户明细！</p>
            <div class="col-md-3 ftr-top-left about-text-grids">
                <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                <h4>百万个 <br>用户</h4>
            </div>
            <div class="col-md-3 ftr-top-left about-text-grids">
                <i class="fa fa-users" aria-hidden="true"></i>
                <h4>50,000名 <br> 卖家 </h4>
            </div>
            <div class="col-md-3 ftr-top-left about-text-grids">
                <i class="fa fa-credit-card" aria-hidden="true"></i>
                <h4>5百万件 <br>商品</h4>
            </div>
            <div class="col-md-3 ftr-top-left about-text-grids">
                <i class="fa fa-globe" aria-hidden="true"></i>
                <h4>4000+ <br>城市</h4>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="history">
            <h3 class="w3ls-title">我们的使命</h3>
            <p>为深入贯彻十八届四中全会依法治国的精神，落实国家互联网信息办公室“依法管网、依法办网、依法上网”的要求，本网站为完善跟帖评论自律管理，现公开作出如下承诺：
                一、本网站所称跟帖评论服务，是指通过运营网络互动传播技术平台，供用户对本网站传播的各类信息发表评论意见（包括但不限于语音、文字、图片、音频、视频等信息）的服务。
                二、本网站致力使跟帖评论成为文明、理性、友善、高质量的意见交流。在推动跟帖评论业务发展的同时，不断加强相应的信息安全管理能力，完善跟帖评论自律，切实履行社会责任，遵守国家法律法规，尊重公民合法权益，尊重社会公序良俗。
                三、本网站坚持用户以真实身份信息注册账号、使用跟帖评论服务。
                四、本网站承诺、并诚请所有用户，使用跟帖评论服务将自觉遵守不得逾越法律法规、社会主义制度、国家利益、公民合法权益、社会公共秩序、道德风尚和信息真实性等“七条底线”。</p>
            <h3 class="w3ls-title">我们的历史</h3>
            <p>第一条 【目的】为更好地保障、服务健康合规经营的淘宝网卖家，帮助、鼓励卖家提供更好的消费者服务，优化淘宝营商环境和市场环境，制定本规范。
                第二条 【适用范围】本规范适用于淘宝网所有卖家。
                第三条 【效力级别】淘宝网卖家除应遵守国家法律法规、《淘宝网市场管理与违规处理规范》等相关规则的规定外，还应遵守本规范。本规范中已有规定的从本规范，本规范中未规定的按《淘宝网市场管理与违规处理规范》等相关规定执行。</p>
        </div>
    </div>
</div>
<!-- //about-page -->
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
                <li><h4>下载我们的APP : </h4> </li>
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
                        <li><a href="login.html">回到首页</a></li>
                        <li><a href="faq.jsp">常见问题</a></li>
                        <li><a href="sitemap.jsp">详细地址</a></li>
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
<script src="js/bootstrap.js"></script>
</body>
</html>