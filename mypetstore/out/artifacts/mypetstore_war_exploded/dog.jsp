<%--
  Created by IntelliJ IDEA.
  User: XZY
  Date: 2019/10/1
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>狗狗狗狗狗</title>
    <link rel="stylesheet" type="text/css" href="css/淘宝.css"/>
</head>
<body bgcolor="#fffacd">
<div id="main" align="center">
    <hr />
    <div class="top_0">
        <div class="top_0_0">
            <a href="#" class="a1">亲，请登录</a>|
            <a href="#"class="a2">免费注册</a>|
            <a href="#" class="a2">下载手机app</a>
        </div>
        <div class="top_0_1">
                <a href="main.jsp" class="a1">宠物商店首页</a>|
                <a href="#"class="a2">我的账户 </a>|
                <a href="#"class="a2">购物车  </a>|
                <a href="#"class="a2">收藏夹  </a>|
                <a href="#"class="a2">商品分类  </a>|
                <a href="#"class="a2">卖家中心  </a>|
                <a href="#"class="a2">联系客服  </a>
<%--                <a href="#"class="a2">网站导航 </a>--%>
        </div>
    </div>
    <div id="top_1">
        <div style="float: left; width: 260px;" >
            <img style="margin-top:25px; background-color: black" src="images/logo-topbar1.gif"/>
        </div>
        <div style="margin: 3ex 0ex 0ex 5ex; float: left; height: 100%; width: 800px;">
            <input id="selBox" type="text" name="selectBox"/>
            <input id="submit" type="submit" value="搜索" />
            <p style="margin-left: -350px; margin-top: 0px; font-size: 14px;">哈巴狗 藏獒 贵宾犬 秋田犬.....</p>
        </div>
    </div>
<%--    <div style="text-align: left; padding-top: 10px;" class="top_0">--%>
<%--        <p style="margin: 0px 20px; font-size: 12px ;">您是不是想找：客厅灯 | 冲锋衣 | 床底 | 沙发垫 | 电脑桌 | 鞋柜</p>--%>

<%--    </div>--%>
    <div id="middle_0">
        <div style="float: left; margin: -2px 20px;">
            价格：<input type="text" name="min" placeholder="请输入最低价格"/>---<input type="text" name="max" placeholder="请输入最高价格"/>
        </div>
        <div style="float: right; margin: -1px 20px;">
            <input type="checkbox" name="baoyou" value="包邮"/>包邮
            <input type="checkbox" name="baoyou" value="包邮"/>自营
            <input type="checkbox" name="baoyou" value="包邮"/>次日达
        </div>
    </div>
    <div id="allCommodity">
        <div class="commodity">
            <a href="https://baike.baidu.com/item/西伯利亚雪橇犬/540855?fromtitle=%E5%93%88%E5%A3%AB%E5%A5%87&fromid=123197" target="_blank"><img src="images/dog/erha.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">哈士奇</span><br />
            <span class="s3">熊熊熊专营店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/秋田犬/504109" target="_blank"> <img src="images/dog/qiutian.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">秋田犬</span><br />
            <span class="s3">卓卓卓专营店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/藏獒/5311" target="_blank"> <img src="images/dog/zangao.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">藏獒</span><br />
            <span class="s3">颖颖颖专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/杜宾犬/1482770?fr=aladdin" target="_blank"> <img src="images/dog/dubin.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">杜宾犬</span><br />
            <span class="s3">崔崔崔专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/贵宾犬/787021?fr=aladdin" target="_blank"> <img src="images/dog/guibin.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">贵宾犬</span><br />
            <span class="s3">周周周专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <img src="images/dog/qiutian.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/zangao.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/guibin.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/dubin.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/erha.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/西伯利亚雪橇犬/540855?fromtitle=%E5%93%88%E5%A3%AB%E5%A5%87&fromid=123197" target="_blank"><img src="images/dog/erha.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">哈士奇</span><br />
            <span class="s3">熊熊熊专营店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/秋田犬/504109" target="_blank"> <img src="images/dog/qiutian.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">秋田犬</span><br />
            <span class="s3">卓卓卓专营店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/藏獒/5311" target="_blank"> <img src="images/dog/zangao.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">藏獒</span><br />
            <span class="s3">颖颖颖专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/杜宾犬/1482770?fr=aladdin" target="_blank"> <img src="images/dog/dubin.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">杜宾犬</span><br />
            <span class="s3">崔崔崔专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/贵宾犬/787021?fr=aladdin" target="_blank"> <img src="images/dog/guibin.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">贵宾犬</span><br />
            <span class="s3">周周周专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <img src="images/dog/qiutian.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/zangao.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/guibin.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/dubin.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/erha.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/西伯利亚雪橇犬/540855?fromtitle=%E5%93%88%E5%A3%AB%E5%A5%87&fromid=123197" target="_blank"><img src="images/dog/erha.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">哈士奇</span><br />
            <span class="s3">熊熊熊专营店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/秋田犬/504109" target="_blank"> <img src="images/dog/qiutian.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">秋田犬</span><br />
            <span class="s3">卓卓卓专营店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/藏獒/5311" target="_blank"> <img src="images/dog/zangao.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">藏獒</span><br />
            <span class="s3">颖颖颖专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/杜宾犬/1482770?fr=aladdin" target="_blank"> <img src="images/dog/dubin.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">杜宾犬</span><br />
            <span class="s3">崔崔崔专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <a href="https://baike.baidu.com/item/贵宾犬/787021?fr=aladdin" target="_blank"> <img src="images/dog/guibin.jpg"/></a>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">贵宾犬</span><br />
            <span class="s3">周周周专卖店</span><br />
            <span class="s3">加入购物车</span>
        </div>
        <div class="commodity">
            <img src="images/dog/qiutian.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/zangao.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/guibin.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/dubin.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
        <div class="commodity">
            <img src="images/dog/erha.jpg"/>
            <span class="s1">￥40.0 包邮</span><br />
            <span class="s2">世界上最好的商品</span><br />
            <span class="s3">浪色服饰专营店</span><br />
            <p class="s4">如实描述4.8</p>
        </div>
</div>

</body>
</html>
<style>
    body{
        margin-top: 0;
        text-align: center;
    }
    #main{
        width: 1350px;
        text-align: center;
        margin: 0 auto;
    }
    .top_0{
        background-color: #DDD;
        height: 30px;
        width: 98%;
        border-radius: 5px;
        margin: 0 auto;
    }
    .top_0_0{
        margin: 2px 30px;
        float: left;
    }
    .top_0_1{
        margin-top: 2px;
        margin-right: 30px;
        float: right;
    }
    .a1{
        text-decoration: none;
        font-size: 12px;
        color: darkorange;
    }
    .a2{
        text-decoration: none;
        font-size: 12px;
        color: black;
    }
    #top_1{
        height: 115px;
        width: 98%;
        margin: 0 auto;
    }
    #selBox{
        margin-top: 30px;
        width: 500px;
        height: 25px;
        border-radius: 10px;
    }
    #submit{
        font-size: 18px;
        height: 30px;
        width: 60px;
        border-radius: 10px;
        margin-left: 30px;
    }
    #middle_0{
        border: 1px solid #DDD;
        height: 30px;
        width: 98%;
        border-radius: 5px;
        margin: 0 auto;
        margin-top: 10px;
    }
    #allCommodity{
        margin-left:10px;
    }
    #allCommodity div{
        float: left;
        margin-left: 10px;
        margin-top: 15px;
    }
    .commodity{
        height: 370px;
        width:250px ;
        border: 1px solid #AAA;
    }
    .commodity img{
        width: 220px;
        height: 280px;
    }
    .commodity span{
        font-weight: 700;
        font-family: '宋体';
    }
    .s1{
        color: darkorange;
    }

    .s3{
        color: blue;
    }
    .commodity p{
        font-weight: 700;
        font-family: '宋体';
        color: #AAA;
        margin-top: 0;
        margin-right: -140px;
    }
</style>