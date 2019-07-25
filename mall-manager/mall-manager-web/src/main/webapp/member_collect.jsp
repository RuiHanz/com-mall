<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isErrorPage="false" %>
<html >
<head>
<meta charset="UTF-8">
    <title>我的收藏</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->
    <link href="css/ken-burns.css" rel="stylesheet" type="text/css" media="all" /> <!-- banner slider -->
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->

    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
    <script type="text/javascript">
        $(function () {


        })
    </script>
	<script type="text/javascript" src="js/select.js"></script>
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
    <link href="/css/cart.css" rel="stylesheet" type="text/css">
    <!-- web-fonts -->
    <script src="js/owl.carousel.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".del").click(function(){
                if(confirm("您确定删除吗？")){
                    //如何获取商品的id
                    var id = $(this).parent().parent().find("[type=text]").attr("id");
                    location.href="${app}/CartDeleteServlet?id="+id;
                }
            });
            //为“-”绑定点击事件
            $(".delNum").click(function(){
                //获取购买的数量对应的输入框对象
                var $buyNumInput = $(this).next();
                //获取商品id
                var id = $buyNumInput.attr("id");
                //计算修改后购买数量
                var newBuyNum = $buyNumInput.val()-1;
                //将修改后的结果影响到session
                if(newBuyNum<=0){//删除
                    location.href="${app}/CartDeleteServlet?id="+id;
                }else{//修改
                    location.href="${app}/CartEditServlet?id="+id+
                        "&newBuyNum="+newBuyNum;
                }
            });
            //为+绑定点击事件
            $(".addNum").click(function(){
                //获取对应输入框对象
                var $bni = $(this).prev();
                //获取商品shp_mch
                var shp_mch = $bni.attr("shp_mch");
                //修改后的属性=获取原购买数量+1
                var newBuyNum=parseInt($bni.val())+1;
                //跳转到CartEditServlet
                location.href="${app}/CartEditServlet?shp_mch"
                    +shp_mch+"&newBuyNum="+newBuyNum;
            });
            //为输入框绑定失去焦点的事件
            $(".buyNumInp1").blur(function(){
                //获取商品的id
                var  shp_mch = $(this).attr("shp_mch");
                //获取旧的购买数量
                var oldNum=$("#hid_"+shp_mch).val();
                //获取修改后数量
                var newNum = $(this).val();
                if(oldNum!=newNum){
                    if(newNum==0){
                        location.href="${app}/CartDeleteServlet?shp_mch="+shp_mch;
                    }else if(/^[1-9][0-9]*$/.test(newNum)){//
                        location.href="${app}/CartEditServlet?shp_mch="
                            +shp_mch+"&newBuyNum="+newNum;
                    }else{
                        alert("请输入当于等于0的整数");
                        $(this).val(oldNum);
                    }
                }
            });
        });
    </script>
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
        
    
<title>尤洪</title>
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
                <h1><a href="index.jap"><span>海</span>哥 <i>电脑城</i></a></h1>
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
                                    <li class="see-all"><a href="products.jsp">全部笔记本</a></li>

                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
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
   
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<div class="m_left">
        	<div class="left_n">管理中心</div>
            <div class="left_m">

                <div class="left_m">
                </div>
                    <div class="left_m_t t_bg1">订单中心</div>
                    <ul>
                        <li><a href="/showorder.do">我的订单</a></li>
                        <li><a href="/member_address.do">收货地址</a></li>

                    </ul>
                </div>
                <div class="left_m">
                    <div class="left_m_t t_bg2">会员中心</div>
                    <ul>
                        <li><a href="/member.do">用户信息</a></li>
                        <li><a href="/showCar.do?yh_id=${sessionScope.loginName}">我的购物车</a></li>
                        <li><a href="/comment.do?_method=selectUser">我的评论</a></li>
                    </ul>
                </div>
            <div class="left_m">

            </div>

        </div>

		<div class="m_right">
            <p>我的购物车</p>

            <div class="warp">
                ${msg}
                <!-- 标题信息 -->
                <div id="title">

                    <span id="title_name">商品</span>
                    <span id="title_price">单价（元）</span>
                    <span id="title_buynum">数量</span>
                    <span id="title_money">小计（元）</span>
                    <span id="title_del">操作</span>
                </div>
                <!-- 购物信息 -->

            <c:set var="money" value="0"/>
                <c:forEach  items="${list}" var="carlist">
                    <div id="prods">
                        <form action="/updateNum?gwc_id=${carlist.gwc_id}" method="post">

                            <%--<input name="prodC" type="checkbox" value="" onclick=""/>--%>
                            <img src="/images/${carlist.shp_tp}"  width="90" height="90" style="margin-left: 20px"/>
                            <span id="prods_name" style="margin-left: 60px">${carlist.shp_mch}</span>
                            <span id="prods_price" style="margin-left: 100px">${carlist.shp_jg}</span>
                            <span id="prods_buynum"style="margin-left: 100px;" >${carlist.shp_shl}</span>
                            <input type="text" style="width:50px; height:20px;" id="newNum" name="newNum">
                            <button type="submit" style="width:50px; height:20px;align-content: center" id="xiugai">修改</button>
                            <span id="prods_xiaoji" style="margin-left: 60px">${carlist.shp_jg*carlist.shp_shl}</span>
                            <c:set var="money" value="${money+carlist.shp_jg*carlist.shp_shl}"/>
                            <span id="prods_del" style="margin-left:80px"><a href="/deleteCar.do?gwc_id=${carlist.gwc_id}">删除</a></span>
                            <span id="pro_jiesuan"><a href="/settle.do?gwc_id=${carlist.gwc_id}">结算</a></span>
                        </form>
                  </div>

                </c:forEach>
            </div>
                <!-- 总计条 -->

            </div>

            </table>


            
        </div>
    </div>
</div>
	<!--End 用户中心 End--> 
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


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
