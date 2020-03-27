<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="jquery.js"></script>
<script src="jquery.fly.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
    /*.m-sidebar{position: fixed;top: 0;right: 0;background: #000;z-index: 2000;width: 35px;height: 100%;font-size: 12px;color: #fff;}*/
    /*.cart{color: #fff;text-align:center;line-height: 20px;padding: 200px 0 0 0px;}*/
    /*.cart span{display:block;width:20px;margin:0 auto;}*/
    /*.cart i{width:35px;height:35px;display:block; background:url(images/cart.gif) no-repeat;}*/
    /*#msg{position:fixed; top:300px; right:35px; z-index:10000; width:1px; height:52px; line-height:52px; font-size:20px; text-align:center; color:#fff; background:#360; display:none}*/
    /*设置顶部导航栏的样式*/
    *{padding: 0;margin: 0;}  /* 先重置一下html，消除HTML标签默认的内外边距 */
    .wrap{
        width: 800px;
        /*margin: 0 auto;*/
        left: 28%;
        margin:9ex -2.5ex 0ex 0ex ;
        position: absolute;
    }    /* 对导航的内容设置一个主体为800px的宽并使其居中 */
    .clear{clear: both;}  /* 清除浮动 */
    a{text-decoration-line: none;}   /* 去掉默认a标签的下划线 */
    ul,li{list-style: none;}
    nav .level>li{float: left;width: 16.66%;text-align: center;background: bisque;padding: 10px 0;font-size: 16px;transition: .4s;}
    nav .level>li a{color: black;}
    nav .level>li:hover{background: red;}   /* 设置鼠标滑过后的样式 */

    nav .two{display: none;margin-top: 10px;}  /* 先使二级菜单的内容隐藏 */
    nav .level>li:hover .two{display: block;}   /* 鼠标滑过一级菜单后的显示二级菜单 */
    nav .two li{padding: 5px 0;transition: .4s;cursor: pointer;}
    nav .two li:hover{background: pink;}
    body{
        background:#eff3f5;
    }


</style>

<head>
    <link rel="StyleSheet" href="css/jpetstore.css" type="text/css"
          media="screen" />

    <meta name="generator"
          content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
    <title>宠物商店</title>
    <meta content="text/html; charset=windows-1252"
          http-equiv="Content-Type" />
    <meta http-equiv="Cache-Control" content="max-age=0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="Pragma" content="no-cache" />

</head>
<body   style=" margin: 0ex -2.5ex 0ex 0ex;
        padding: 0ex;
        font-family: helvetica,tahoma,arial,verdana,sans-serif;
        font-size: 2ex;
        color: #333;
        background-color: #444;">
<div id="Header">

    <div id="Logo">
        <div id="LogoContent">
            <a href="main"><img src="images/logo-topbar.gif" /></a>
        </div>
    </div>
    <div class="m-sidebar">
        <div class="cart">
            <i id="end1"></i>
<%--            <span>购物车</span>--%>
        </div>
    </div>
    <div id="Menu">
        <div id="MenuContent">
            <c:if test="${sessionScope.account == null}">
                <a href="login.jsp">登录</a>
            </c:if>
            &nbsp;
            <c:if test="${sessionScope.account != null}">
                <a href="cart.jsp"><img align="middle" name="img_cart" id="end" src="images/cart.gif" /></a>
                <img align="middle" src="images/separator.gif" />
                &nbsp;
                欢迎您 ${sessionScope.account.username}
                &nbsp;
                <img align="middle" src="images/separator.gif" />
                &nbsp;
                <a href="signOut">退出</a>
                &nbsp;
                <img align="middle" src="images/separator.gif" />
                &nbsp;
                <a href="#">我的订单</a>
            </c:if>
            &nbsp;
            <img align="middle" src="images/separator.gif" />
            &nbsp;
            <a href="try.jsp">帮助</a>
        </div>
    </div>

<%--    <div id="Search">--%>
<%--        <div id="SearchContent">--%>
<%--            <form action="searchProducts" method="post">--%>
<%--                <input type="text" name="keyword" size="14" />--%>
<%--                <input type="submit" name="searchProducts" value="Search" />--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div id="Search">
        <form action="searchProducts"  method="post">
            <input type="text" id="keyword" class="text" name="keyword" size="14" />
            <input type="submit" id="submit" class="text" value="Search" />
        </form>
    </div>

<%--    <nav>--%>
<%--        <div class="wrap">--%>
<%--            <ul class="level">--%>
<%--                <li><a href="main.jsp">首页</a></li>--%>
<%--                <li>--%>
<%--                    <a href="ViewProduct?categoryId=DOGS">狗狗狗狗狗</a>--%>
<%--                    <ul class="two">--%>
<%--                        <li>二级菜单1</li>--%>
<%--                        <li>二级菜单2</li>--%>
<%--                        <li>二级菜单3</li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="">鸟鸟鸟鸟</a>--%>
<%--                    <ul class="two">--%>
<%--                        <li>二级菜单4</li>--%>
<%--                        <li>二级菜单5</li>--%>
<%--                        <li>二级菜单6</li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="">蜥蜴蜥蜴</a>--%>
<%--                    <ul class="two">--%>
<%--                        <li>二级菜单7</li>--%>
<%--                        <li>二级菜单8</li>--%>
<%--                        <li>二级菜单9</li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="">猫猫猫猫</a>--%>
<%--                    <ul class="two">--%>
<%--                        <li>二级菜单10</li>--%>
<%--                        <li>二级菜单11</li>--%>
<%--                        <li>二级菜单12</li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="">鱼鱼鱼鱼</a>--%>
<%--                    <ul class="two">--%>
<%--                        <li>二级菜单13</li>--%>
<%--                        <li>二级菜单14</li>--%>
<%--                        <li>二级菜单15</li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </nav>--%>

</div>
<div id="Content">
<script src="jquery.js"></script>
<script src="jquery.fly.min.js"></script>
<div class="box">
    <div>${sessionScope.product.description}</div>
    <h4>￥<span>${sessionScope.item.listPrice}</span></h4>
    <p><b>【ID】 ${sessionScope.item.itemId} </b></p>
    <p>【Name】${sessionScope.product.name}</p>
<%--    <div><fmt:formatNumber value="${sessionScope.item.listPrice}"--%>
<%--                      pattern="$#,##0.00" /></div>--%>
    <a href="#" class="button orange addcar" onclick="countDown(2.5,'addItemToCart?workingItemId=${item.itemId}')">加入购物车</a>
</div>


<%--<div class="box">--%>
<%--    <img src="images/dog1.gif" width="180" height="180">--%>
<%--    <h4>￥<span>3799.00</span></h4>--%>
<%--    <p>Hisense/海信 LED50T1A 海信电视官方旗舰店</p>--%>
<%--    <a href="#" class="button orange addcar"  onclick="countDown(2.5,'addItemToCart?workingItemId=${item.itemId}')">加入购物车</a>--%>
<%--</div>--%>
<%--<div class="box">--%>
<%--    <img src="images/dog1.gif" width="180" height="180">--%>
<%--    <h4>￥<span>￥3999.00</span></h4>--%>
<%--    <p>Skyworth/创维 50E8EUS 8核4Kj极清酷开系统智能液晶电视</p>--%>
<%--    <a href="#" class="button orange addcar"  onclick="countDown(2.5,'addItemToCart?workingItemId=${item.itemId}')">加入购物车</a>--%>
<%--</div>--%>
<%--<div class="box">--%>
<%--    <img src="images/dog6.gif" width="180" height="180">--%>
<%--    <h4>￥<span>6969.00</span></h4>--%>
<%--    <p>乐视TV Letv X60S 4核1080P高清3D安卓智能超级电视</p>--%>
<%--    <a href="#" class="button orange addcar"  onclick="countDown(2.5,'addItemToCart?workingItemId=${item.itemId}')">加入购物车</a>--%>
<%--</div>--%>
<div id="msg">已成功加入购物车！</div>
</div>

<div class="Footer">

    <%--	</div>--%>
    <div id="Banner" align="center">
        Copyright &copy; 2019 XZY & CZY. All rights reserved.
    </div>

</div>

</body>
</html>
<style>

    .box{float:left; width:198px; height:320px; margin-left:5px; border:1px solid #e0e0e0; text-align:center}
    .box p{line-height:20px; padding:4px 4px 10px 4px; text-align:left}
    .box:hover{border:1px solid #f90}
    .box h4{line-height:32px; font-size:14px; color:#f30;font-weight:500}
    .box h4 span{font-size:20px}
    .u-flyer{display: block;width: 50px;height: 50px;border-radius: 50px;position: fixed;z-index: 9999;}

    .m-sidebar{position: fixed;top: 0;right: 0;z-index: 2000;width: 35px;height: 100%;font-size: 12px;color: #fff;}
    .cart{color: #fff;text-align:center;line-height: 20px;padding: 200px 0 0 0px;}
    .cart span{display:block;width:20px;margin:0 auto;}
    .cart i{width:35px;height:35px;display:block; background:url(car.png) no-repeat;}
    #msg{position:fixed; top:300px; right:35px; z-index:10000; width:1px; height:52px; line-height:52px; font-size:20px; text-align:center; color:#fff; background:#360; display:none}
</style>

<script>
    $(function() {
        var offset = $("#end").offset();
        $(".addcar").click(function(event){
            var addcar = $(this);
            var img = addcar.parent().find('img').attr('src');
            var flyer = $('<img class="u-flyer" src="'+img+'">');
            flyer.fly({
                start: {
                    left: event.pageX, //开始位置（必填）#fly元素会被设置成position: fixed
                    top: event.pageY //开始位置（必填）
                },
                end: {
                    left: offset.left+10, //结束位置（必填）
                    top: offset.top+10, //结束位置（必填）
                    width: 0, //结束时宽度
                    height: 0 //结束时高度
                },
                onEnd: function(){ //结束回调
                    $("#msg").show().animate({width: '250px'}, 200).fadeOut(1000); //提示信息
                    addcar.css("cursor","default").removeClass('orange').unbind('click');
                    this.destory(); //移除dom
                }
            });
            <%--window.location.href="addItemToCart?workingItemId=${item.itemId}";--%>

        });
    });

    function countDown(secs,surl){
        //alert(surl);
        var jumpTo = document.getElementById('jumpTo');
        // jumpTo.innerHTML=secs;
        if(--secs>0){
            setTimeout("countDown("+secs+",'"+surl+"')",1000);
        }
        else
        {
            location.href=surl;
        }
    }
</script>