
<%@ page contentType="text/html;charset=UTF-8" language="java" buffer="16kb" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <style type="text/css">
        /*.m-sidebar{position: fixed;top: 0;right: 0;background: #000;z-index: 2000;width: 35px;height: 100%;font-size: 12px;color: #fff;}*/
        /*.cart{color: #fff;text-align:center;line-height: 20px;padding: 200px 0 0 0px;}*/
        /*.cart span{display:block;width:20px;margin:0 auto;}*/
        /*.cart i{width:35px;height:35px;display:block; background:url(images/cart.gif) no-repeat;}*/
        /*#msg{position:fixed; top:300px; right:35px; z-index:10000; width:1px; height:52px; line-height:52px; font-size:20px; text-align:center; color:#fff; background:#360; display:none}*/
        /*设置顶部导航栏的样式*/
        *{padding: 0;margin: 0;}  /* 先重置一下html，消除HTML标签默认的内外边距 */
        .wrap{
            width: 600px;
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


    <link rel="StyleSheet" href="css/jpetstore.css" type="text/css" media="screen" />

    <meta name="generator"
          content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
    <title>JPetStore Demo</title>
    <meta content="text/html; charset=windows-1252"
          http-equiv="Content-Type" />
    <meta http-equiv="Cache-Control" content="max-age=0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript">
        $(function(){
//取得div层
            var search = $('#Search');
//取得输入框JQuery对象
            var searchInput = search.find('#keyword');
//关闭浏览器提供给输入框的自动完成
            searchInput.attr('autocomplete','off');
//创建自动完成的下拉列表，用于显示服务器返回的数据,插入在搜索按钮的后面，等显示的时候再调整位置
            var autocomplete = $('<div class="autocomplete"></div>')
                .hide()
                .insertAfter('#submit');
//清空下拉列表的内容并且隐藏下拉列表区
            var clear = function(){
                autocomplete.empty().hide();
            };
//注册点事件，当输入框失去焦的时候清空下拉列表并隐藏
            searchInput.blur(function(){
                setTimeout(clear,500);
            });
//下拉列表中高亮的项目的索引，当显示下拉列表项的时候，移动鼠标或者键盘的上下键就会移动高亮的项目，想百度搜索那样
            var selectedItem = null;
//timeout的ID
            var timeoutid = null;
//设置下拉项的高亮背景
            var setSelectedItem = function(item){
//更新索引变量
                selectedItem = item ;
//按上下键是循环显示的，小于0就置成最大的值，大于最大值就置成0
                if(selectedItem < 0){
                    selectedItem = autocomplete.find('li').length - 1;
                }
                else if(selectedItem > autocomplete.find('li').length-1 ) {
                    selectedItem = 0;
                }
//首先移除其他列表项的高亮背景，然后再高亮当前索引的背景
                autocomplete.find('li').removeClass('highlight')
                    .eq(selectedItem).addClass('highlight');
            };
            var ajax_request = function(){
//ajax服务端通信
                $.ajax({
                    'url':'auto', //服务器的地址
                    'data':{'keyword':searchInput.val()}, //参数
                    'dataType':'json', //返回数据类型
                    'type':'POST', //请求类型
                    'success':function(data) {
                        if(data.length) {
//遍历data，添加到自动完成区
                            $.each(data, function(index,term){
//创建li标签,添加到下拉列表中ex,term) {
                                $('<li></li>').text(term).appendTo(autocomplete)
                                    .addClass('clickable')
                                    .hover(function(){
//下拉列表每一项的事件，鼠标移进去的操作
                                        $(this).siblings().removeClass('highlight');
                                        $(this).addClass('highlight');
                                        selectedItem = index;
                                    },function(){
//下拉列表每一项的事件，鼠标离开的操作
                                        $(this).removeClass('highlight');
//当鼠标离开时索引置-1，当作标记
                                        selectedItem = -1;
                                    })
                                    .click(function(){
//鼠标单击下拉列表的这一项的话，就将这一项的值添加到输入框中
                                        searchInput.val(term);
//清空并隐藏下拉列表
                                        autocomplete.empty().hide();
                                    });
                            });//事件注册完毕
//设置下拉列表的位置，然后显示下拉列表
                            var ypos = searchInput.position().top;
                            var xpos = searchInput.position().left;
                            autocomplete.css('width',searchInput.css('width'));
                            autocomplete.css({'position':'relative','left':xpos + "px",'top':ypos +"px"});
                            setSelectedItem(0);
//显示下拉列表
                            autocomplete.show();
                        }
                    }
                });
            };
//对输入框进行事件注册
            searchInput.keyup(function(event) {
//字母数字，退格，空格
                if(event.keyCode > 40 || event.keyCode == 8 || event.keyCode ==32) {
//首先删除下拉列表中的信息
                    autocomplete.empty().hide();
                    clearTimeout(timeoutid);
                    timeoutid = setTimeout(ajax_request,100);
                }
                else if(event.keyCode == 38){
//上
//selectedItem = -1 代表鼠标离开
                    if(selectedItem == -1){
                        setSelectedItem(autocomplete.find('li').length-1);
                    }
                    else {
//索引减1
                        setSelectedItem(selectedItem - 1);
                    }
                    event.preventDefault();
                }
                else if(event.keyCode == 40) {
//下
//selectedItem = -1 代表鼠标离开
                    if(selectedItem == -1){
                        setSelectedItem(0);
                    }
                    else {
//索引加1
                        setSelectedItem(selectedItem + 1);
                    }
                    event.preventDefault();
                }
            })
                .keypress(function(event){
//enter键
            if(event.keyCode == 13) {
//列表为空或者鼠标离开导致当前没有索引值
                if(autocomplete.find('li').length == 0 || selectedItem == -1) {
                    return;
                }
                searchInput.val(autocomplete.find('li').eq(selectedItem).text());
                autocomplete.empty().hide();
                event.preventDefault();
            }
        })
                .keydown(function(event){
//esc键
                    if(event.keyCode == 27 ) {
                        autocomplete.empty().hide();
                        event.preventDefault();

                    }
                });
//注册窗口大小改变的事件，重新调整下拉列表的位置
            $(window).resize(function() {
                var ypos = searchInput.position().top;
                var xpos = searchInput.position().left;
                autocomplete.css('width',searchInput.css('width'));
                autocomplete.css({'position':'relative','left': xpos + "px",'top': ypos +"px"});
            })
        });
    </script>
</head>

<body>

<div id="Header">

    <div id="Logo">
        <div id="LogoContent">
            <a href="main"><img src="images/logo-topbar.gif" /></a>
        </div>
    </div>

    <div id="Menu">
        <div id="MenuContent">
            <c:if test="${sessionScope.account == null}">
                <a href="login.jsp">登录</a>
            </c:if>
            &nbsp;
            <c:if test="${sessionScope.account != null}">
                <a href="Cart.jsp"><img align="middle" name="img_cart" src="images/cart.gif" /></a>
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
                <a href="viewMylog">我的足迹</a>
                &nbsp;
                <img align="middle" src="images/separator.gif" />
                &nbsp;
                <a href="editAccount">
                    账户信息
                </a>
                &nbsp;
            </c:if>
            &nbsp;
            <img align="middle" src="images/separator.gif" />
            &nbsp;
            <a href="try.jsp">帮助</a>
        </div>
    </div>

    <div id="Search">
        <form action="searchProducts"  method="post">
            <input type="text" id="keyword" class="text" name="keyword" size="14" />
            <input type="submit" id="submit" class="text" value="Search" />
        </form>
    </div>

    <nav style="line-height:1;">
        <div class="wrap">
            <ul class="level">
                <li><a href="main.jsp">首页</a></li>
                <li>
                    <a href="ViewProduct?categoryId=DOGS">狗狗狗狗狗</a>
                    <ul class="two">
                        <li>二级菜单1</li>
                        <li>二级菜单2</li>
                        <li>二级菜单3</li>
                    </ul>
                </li>
                <li>
                    <a href="">鸟鸟鸟鸟</a>
                    <ul class="two">
                        <li>二级菜单4</li>
                        <li>二级菜单5</li>
                        <li>二级菜单6</li>
                    </ul>
                </li>
                <li>
                    <a href="">蜥蜴蜥蜴</a>
                    <ul class="two">
                        <li>二级菜单7</li>
                        <li>二级菜单8</li>
                        <li>二级菜单9</li>
                    </ul>
                </li>
                <li>
                    <a href="">猫猫猫猫</a>
                    <ul class="two">
                        <li>二级菜单10</li>
                        <li>二级菜单11</li>
                        <li>二级菜单12</li>
                    </ul>
                </li>
                <li>
                    <a href="">鱼鱼鱼鱼</a>
                    <ul class="two">
                        <li>二级菜单13</li>
                        <li>二级菜单14</li>
                        <li>二级菜单15</li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>

    <div id="QuickLinks">
        <a href="viewCategory?categoryId=FISH">
            <img src="images/sm_fish.gif" />
        </a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=DOGS">
            <img src="images/sm_dogs.gif" />
        </a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=REPTILES">
            <img src="images/sm_reptiles.gif" />
        </a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=CATS"><img
                src="images/sm_cats.gif" />
        </a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=BIRDS">
            <img src="images/sm_birds.gif" /></a>
    </div>

</div>

<div id="Content">

