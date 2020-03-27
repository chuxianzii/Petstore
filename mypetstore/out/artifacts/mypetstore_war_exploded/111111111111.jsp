<%--
  Created by IntelliJ IDEA.
  User: XZY
  Date: 2019/10/1
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<style>--%>
<%--.num_box{width:100%;float:left;}--%>
<%--.num_box a{width:20px;text-align:center;cursor:pointer;}--%>
<%--.num_box a:hover{background:#f0f0f0;}--%>
<%--.num_box a:active{background:#E3E3E3;}--%>
<%--.num,.num_box a{height:20px;line-height:20px;border-color:#ccc;border-style:solid;color:#333;float:left;}--%>
<%--.num{border-width:1px;text-align:left;text-indent:5px;line-height:15px9;padding:0;margin:0;width:100px;}--%>
<%--.J_jia{border-width:1px 0 1px 1px;border-radius:3px 0 0 3px;}--%>
<%--.J_jian{border-width:1px 1px 1px 0;border-radius:0 3px 3px 0;}--%>
<%--</style>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>我的购物车</title>

    <link rel="stylesheet" href="css/reset.css" />

    <link rel="stylesheet" href="css/jd.css" />
    <link rel="stylesheet" href="icon/iconfont.css" />
</head>
<body>
<!--描述：导航栏开始-->
<div class="nav">
    <div class="warp">
        <ul class="nav_ul1">
            <li><a href="http://www.jd.com" target="_blank"><i class="iconfont">&#xe6d3</i>宠物商店首页</a></li>
            <li><a href="">配送至：北京</a></li>
        </ul>

        <ul class="nav_ul2">
            <li><a href="">洋洋宝贝</a><span>|</span></li>
            <li><a href="">我的订单</a><span>|</span></li>
            <li><a href="">我的商店</a><span>|</span></li>
            <li><a href="">商店会员</a><span>|</span></li>
            <li><a href="">企业采购</a><span>|</span></li>
            <li><a href="">京东手机</a><span>|</span></li>
            <li><a href="">关注我们</a><span>|</span></li>
            <li><a href="">客户服务</a><span>|</span></li>
            <li><a href="">网站导航</a></li>
        </ul>
    </div>
</div>
<!--描述：导航栏开始-->

<!--描述：搜索框开始-->
<div class="search">
    <div class="warp">
        <img src="images/logo-topbar1.gif" />

        <div class="search_div">

            <input type="text" class="search_text"/>
            <input type="button" value="搜索" class="search_button"/>

        </div>
    </div>
</div>
<!--描述：搜索框结束-->

<c:if test="${sessionScope.cart.numberOfItems == 0}">
    <tr>
        <td colspan="8"><b>Your cart is empty.</b></td>
    </tr>
</c:if>

<div class="title warp">
    <h3>全部商品</h3>
    <div class="">
        <span>配送至：</span>
        <select>
            <option value="" class="active">昌平区</option>
            <option value="">大兴区</option>
            <option value="">朝阳区</option>
        </select>
    </div>
</div>
<!--描述：标题结束-->

<!--描述：显示菜单开始-->
<div class="tips warp">
    <ul>
        <li>
            <input type="checkbox" name="" id="" value="" />
            全选
        </li>
        <li>商品</li>
        <li>单价</li>
        <li>数量</li>
        <li>小计</li>
        <li>操作</li>
    </ul>
</div>
<c:forEach var="cartItem" items="${sessionScope.cart.cartItems}">
    <div class="info warp">
        <ul>
            <li class="info_1"><input type="checkbox"value="" /></li>
                <%--            <li class="info_2">${cartItem.item.product.description}</li>--%>
            <li class="info_2"><img src="img/img1.jpg" width="80px"/></li>
            <li class="info_3" ><a href="viewItem?itemId=${cartItem.item.itemId}">【商品ID】${cartItem.item.itemId}</a></li>
            <li class="info_4">【大类ID】${cartItem.item.product.productId}</li>
            <li class="info_5"><input class="Price" value="${cartItem.item.listPrice}" size="8" readonly/></li>
            <li class="info_6">
                    <%--                <p class="num_box"><a class="J_jia">+</a><label><input type="text" class="num" value="50"/></label><a class="J_jian">-</a></p>--%>
                <button class="J_jian">-</button>
                <input  type="text" class="num" name="${cartItem.item.itemId}" value="${cartItem.quantity}"/>
                <button class="J_jia">+</button>
                    <%--                <button >-</button>--%>
                    <%--                <input type="number" class="Quantity" name="${cartItem.item.itemId}" value="${cartItem.quantity}"/>--%>
                    <%--                <button class="but">+</button>--%>
            </li>
            <li class="info_7"> <input class="Amount" value="${cartItem.total}" size="8" readonly/></li>
            <li class="info_8">
                <a href="removeItemFormCart?cartItem=${cartItem.item.itemId}">删除</a>
                <a href="">移到我的关注</a>
            </li>
        </ul>
    </div>
</c:forEach>
<!--描述：显示菜单结束-->

<!--描述：商品详情展示开始-->
<%--<div class="info warp">--%>
<%--    <ul>--%>
<%--        <li class="info_1"><input type="checkbox"value="" /></li>--%>
<%--        <li class="info_2"><img src="img/img1.jpg" width="80px"/></li>--%>
<%--        <li class="info_3" ><a href="">【京东超市】desha春秋季儿童休闲服</a></li>--%>
<%--        <li class="info_4"><a>颜色：灰色+粉红</a></li>--%>
<%--        <li class="info_5">￥182.5</li>--%>
<%--        <li class="info_6">--%>
<%--            <button>-</button>--%>
<%--            <input value="1" />--%>
<%--            <button class="but">+</button>--%>
<%--        </li>--%>
<%--        <li class="info_7">￥182.5</li>--%>
<%--        <li class="info_8">--%>
<%--            <a href="">删除</a>--%>
<%--            <a href="">移到我的关注</a>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</div>--%>

<!--描述：商品详情展示结束-->

<!--描述：商品结算开始-->
<div class="balance warp">
    <ul class="balance_ul1">
        <li><input type="checkbox"/>
            全选
        </li>
        <li><a href="">删除选中商品</a></li>
        <li><a href="">移到我的关注</a></li>
        <li><a href="">清除下柜商品</a></li>
    </ul>

    <ul class="balance_ul2">
        <li>已经选择<span>1</span>件商品</li>
        <li>总价<span id="total">￥${cartItem.total}</span></li>
        <li>
            <button class="butt">去结算</button>
        </li>
    </ul>
</div>
<!--描述：商品结算结束-->
</body>
</html>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
    $("#Order").on('input', '.Quantity', function () {
        var self = $(this);
        var tr = self.closest("tr");

        var quantity = self.val();
        var Price = tr.find(".Price").val();

        var amount = 0;
        if ($.isNumeric(quantity) && $.isNumeric(Price)) {
            amount = quantity * Price;
        }
        tr.find(".Amount").val(amount);

        CalcSum();
    });

    function CalcSum()
    {
        var total_sum = 0;
        $("#Order .Amount").each(function () {
            var val = $(this).val();
            if ($.isNumeric(val)) {
                total_sum += parseFloat(val);
            }
        });

        $("#total").html(total_sum);
    }
</script>
<style>
    .nav{

        height: 30px;

        background-color: #f1f1f1;

    }

    .warp{
        width: 1000px;
        margin: 0px auto;
    }

    .nav_ul1{
        float: left;
    }
    .nav_ul1 li{
        float: left;
        line-height: 30px;
        margin-right: 20px;
    }

    .nav_ul1 a,.nav_ul2 a,.nav_ul2 span{
        color: gray;
        font-size: 13px;
    }


    .nav_ul2{
        float: right;
    }
    .nav_ul2 li{
        float: left;
        margin-left: 10px;
        line-height: 30px;
    }
    .nav_ul2 span{
        margin-left: 10px;
        line-height: 30px;
    }

    a:hover{
        color: red;
    }

    /*搜索框开始*/
    .search{
        margin-top: 20px;
    }

    .search img{
        clear: both;
        float: left;
    }

    .search_div{
        float: right;
        margin-top: 25px;
    }
    .search_text{
        width: 265px;
        height: 21px;
        border: 3px solid #c91623;
        position: relative;
        left: 4px;
        top: -1px;
    }
    .search_button{
        width: 51px;
        height: 29px;
        background-color:#c91623;
        border: 0px;
        color: white;
    }
    /*搜索框结束*/

    /*标题开始*/
    .title{
        margin-top: 130px;
    }
    .title h3{
        float: left;
        font-size: 23px;
        color: #c91623;
    }
    .title div{
        float: right;
        color: gray;
    }
    /*标题结束*/

    /*描述：显示菜单开始*/
    .tips{
        width: 1000px;
        height: 50px;
        background-color: #f1f1f1;
        margin-top: 165px;
        border: 1px  solid  #e9e9e9;
    }

    .tips li{
        float: left;
        line-height: 50px;
        font-size: 13px;
        color: gray;
    }
    .tips li:nth-child(1){
        width: 90px;
        border-top: 3px solid #c91623;
    }
    .tips li:nth-child(2){
        margin-left: 80px;
    }

    .tips li:nth-child(3){
        margin-left: 430px;
    }

    .tips li:nth-child(4){
        margin-left: 70px;
    }

    .tips li:nth-child(5){
        margin-left: 110px;
    }

    .tips li:nth-child(6){
        margin-left: 50px;
    }
    /*描述：显示菜单结束*/

    /*描述：商品详情展示开始*/
    .info{
        width: 1000px;
        height: 125px;
        background-color: #fff4e8;
        border: 1px solid gray;
        margin-top: 25px;
    }
    .info li{

        float: left;
        margin-top: 20px;
    }

    .info_1{
        margin-left:22px;
    }

    .info_2{
        margin-left:15px;
        border: 1px solid gray;
    }
    .info_3{
        width: 260px;
        height: 20px;
    }
    .info_4{
        margin-left:45px;
    }
    .info_5{
        margin-left:70px;
    }
    .info_6{
        margin-left:40px;
    }
    .info_6 input{
        width: 30px;
        height: 12px;
        position: relative;
        text-align: center;
        top: -2px;
        left: -5px;
    }
    .but{
        position: relative;
        left: -10px;
    }
    .info_6 button{
        width: 30px;

        height: 18px;
    }
    .info_7{
        margin-left:15px;
    }
    .info_8{
        margin-left:15px;
    }
    .info a{
        font-size:12px;
        color: #33333;
    }
    /*描述：商品详情展示结束*/

    /*描述：商品结算开始*/
    .balance{
        width: 1000px;
        height: 50px;
        border: 1px solid gray;
        margin-top: 20px;
    }
    .balance li{
        float: left;
        line-height: 50px;
        margin-left: 22px;
    }
    .balance_ul2{
        float: right;

    }
    .balance_ul2 span{
        font-size: 25px;

        color: #C91623 ;

        font-weight: bold;
    }
    .balance_ul2 button{
        width: 100px;
        height: 50px;
        background-color: brown;
        border: 1px solid #c91623;
        font-weight: bold;
        font-size: 20px;
        color: white;
    }
    button:hover{
        background-color:#C91623 ;
    }

    body,div,h1,h2,h3,h4,h5,h6,li,ol,ul{margin: 0px; padding: 0px;}
    body{text-align: center;font-size:14px;}
    a{text-decoration: none;}
    li{list-style: none;}

</style>
<script type="text/javascript">
    $(document).ready(function(){
        var add,reduce,num,num_txt;
        add=$(".J_jia");//添加数量
        reduce=$(".J_jian");//减少数量
        num="";//数量初始值
        num_txt=$(".num");//接受数量的文本框
        //var num_val=num_txt.val();//给文本框附上初始值

        /*添加数量的方法*/
        add.click(function(){
            num = $(".num").val();
            num++;
            num_txt.val(num);
            //ajax代码可以放这里传递到数据库实时改变总价
        });

        /*减少数量的方法*/
        reduce.click(function(){
            //如果文本框的值大于0才执行减去方法
            num = $(".num").val();
            if(num >0){
                //并且当文本框的值为1的时候，减去后文本框直接清空值，不显示0
                if(num==1)
                { num--;
                    num_txt.val("");
                }
                //否则就执行减减方法
                else
                {
                    num--;
                    num_txt.val(num);
                }

            }
        });
    })
</script>