
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">


    *{margin: 0;padding: 0;list-style: none;}

    body{

        background: url('images/untitled.png') ;
        background-repeat: no-repeat;
        background-size: 100%;

    }

    .container{

        width: 1100px;

        height: 870px;

        margin: 0 auto;

    }

    /* 导航 */

    .nav{

        margin-top: 10px;

        height: 50px;

        line-height: 50px;

    }

    .nav ul li{

        float: right;

        font-size: 15px;

    }

    .nav ul li a{

        text-decoration: none;

        color: #152b3c;

        padding:15px 30px;

    }

    .nav ul li a:hover{

        border: 1px solid white;

        border-radius:5%;

        color: white;

    }

    /* 主题内容 */

    .main{

        width:1200px;

        height: 450px;

    }

    .sideleft{

        width:460px;

        height: 250px;

        float: left;

        padding:85px 130px

    }

    .sideleft p{

        padding: 8px 0;

        font-size: 16px;

    }

    .sideright{

        width: 480px;

        height: 450px;

        float: right;

    }

    .sideright .index{

        width: 330px;

        height: 420px;

        background-color:rgba(255,255,255,0.75);

        margin: 50px 90px;

    }

    .headline{

        font-size: 22px;

        text-align: center;

        padding: 20px;

    }

    /*input[type="text"],*/

    input[type="submit"]{

        -web-kit-appearance:none;

        -moz-appearance: none;

        display: block;

        margin: 0 auto;

        font-size:15px;

        width: 240px;

    }

    input[type="text"]{

        /*height:35px;*/

        /*border-radius:3px;*/

        /*border:1px solid #c8cccf;*/

        /*color:#6a6f77;*/

        /*outline:0;*/
        height: 35px;
        border-radius: 3px;
        border: 1px solid #c8cccf;
        color: #6a6f77;
        outline: 0;
        display: block;
        margin: 0 auto;
        font-size: 15px;
        width:240px;

    }

    input[type="submit"]{

        margin-top: 25px;

        height: 35px;

        background: #357eb8;

        color: #bcedff;

        font-weight: bold;

        font-size: 16px;

    }

    input[type="submit"]:hover{

        background: #0e62a3;

        cursor: pointer;

    }

    .astyle{

        margin: 5px 0 5px 42px;

        font-size:17px;

        color: #6a6f77;

    }
    .astylep{

        margin: 5px 0 5px 42px;

        font-size:17px;

        color: #6a6f77;

    }
    .bstyle{

        display: block;

        float: left;

        margin-left: 46px;

        font-size: 15px;

    }

    .cstyle{

        display: block;

        float: right;

        margin-right: 46px;

        font-size: 15px;

    }

    .cstyle a{

        text-decoration: none;

    }

    .footer{

        width: 1000px;

        margin:60px auto;

    }

    .footer ul{

        margin-left: 100px;

    }

    .footer ul li{

        float: left;



    }

    .footer ul li a{

        text-decoration: none;

        color: black;

        border-left: 2px solid black;

        padding:0 10px;

    }


</style>




<!doctype html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>宠物商店</title>

<%--    <link rel="stylesheet" href="index.css">--%>

</head>

<body>

<div class="container">

    <!-- 导航 -->

    <div class="nav">

        <ul>

            <li><a href="#">链接二</a></li>

            <li><a href="#">链接一</a></li>

            <li><a href="main.jsp">首页</a></li>

<%--            <li><a href="#">首页</a></li>--%>

        </ul>

    </div>



    <!-- 主体内容 （登陆界面）-->

    <div class="main">

        <!-- 左侧信息栏 -->

        <div class="sideleft">

            <h1>智能宠物商店平台</h1>

            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;值得你的信赖</h4>

            </br></br></br>

            <p >这是你没有见过的全新版本</p>

            <p>这是你没有过的全新体验</p>

            <p>你还在等什么？？</p>

            <p>快来加入我们开始你的旅程</p>


        </div>

        <!-- 右侧登陆界面 -->

        <div class="sideright">

            <div class="index">

                <form method="post" action="signonForm">

                    <c:if test="${sessionScope.success==1}">
                        <script>
                            window.alert("验证码输入不正确");
                        </script>
                    </c:if>
                    <c:if test="${sessionScope.success==11}">
                        <script>
                            window.alert("用户名或者密码输入不正确");
                        </script>
                    </c:if>
                    <c:if test="${sessionScope.success==111}">
                        <script>
                            window.alert("用户名和密码不能为空");
                        </script>
                    </c:if>

                    <p class="headline">用户登录</p>

                    <p class="astyle">用户名：</p>

                    <c:if test="${sessionScope.success==1}">
                        <input id = "username"  type="text" name="username" value=${sessionScope.username} required="required" >
                    </c:if>
                    <c:if test="${sessionScope.success!=1}">
                        <input id = "username"  type="text" name="username" placeholder="请输入您的用户名" required="required" value="ACID">
                    </c:if>
<%--                    <input id = "username"  type="text" name="username" placeholder="请输入您的用户名" required="required">--%>

                    <p class="astylep">密码：</p>
                    <c:if test="${sessionScope.success==1}">
                        <input id="password" name="password" type="password" value=${sessionScope.password}  required="required">
                    </c:if>
                    <c:if test="${sessionScope.success!=1}">
                        <input id="password" name="password" type="password" placeholder="请输入您的密码" required="required" value="ACID">
                    </c:if>
<%--                    <input id="password" name="password" type="password" placeholder="请输入您的密码" required="required">--%>

                    <p class="astylep">验证码：</p>
                    <input type="code" name="code" placeholder="请输入验证码" required="required" /><br /><br />
                    <img id="imgObj" class="code" alt="validationCode" src="codeImages" onclick="changeImageCode()">
<%--                    <input type="button" value="changeImage" onclick="changeImageCode()" id="btn"/>--%>

<%--                    <input id="password" name="password" type="password" placeholder="请输入您的密码" required="required">--%>

                    <input type="submit" class="btn btn-success" value="登录 Login"/>

                    </br>

                    <p class="bstyle"><input type="checkbox" name="rempas" />  记住密码</p>

                    <p class="cstyle">忘记密码</p>

                    </br></br>
                    <p class="cstyle">没有账号？<a href="thankyou.jsp">立即注册</a></p>

                </form>

            </div>

        </div>

    </div>

</div>

</body>

</html>
<script>
    function login() {
        var accountname = $("#accountname").val();
        var password = $("#password").val();
        $.ajax({
            url: '/meeting/login',
            type: 'post',
            data: {accountname: accountname, password: password},
        })
    }
</script>

<style>
    input[type='password'] {
        height: 35px;
        border-radius: 3px;
        border: 1px solid #c8cccf;
        color: #6a6f77;
        outline: 0;
        display: block;
        margin: 0 auto;
        font-size: 15px;
        width: 240px;
    }

    input[type="code"]{
        height:35px;
        border-radius:3px;
        border:1px solid #c8cccf;
        color:#6a6f77;
        outline:0;
        float: left;
        width: 120px;
        margin: 0px 0px 0px 45px;
    }

    .code{
        height:35px;
        border-radius:3px;
        border:1px solid #c8cccf;
        color:#6a6f77;
        outline:0;
        float: left;
        width: 100px;
        margin: -37px 0px 10px 17px;
    }
</style>
<script>
    function changeImageCode() {
        // document.getElementById('btn').isDisabled=true;
        document.getElementById('imgObj').src='codeImages?ts='+new Date().getTime();
    }
</script>



