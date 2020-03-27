<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

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

        /* 	background: #ccc; */

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

        width:900px;

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

        width: 600px;

        height: 450px;

        float: right;

    }

    .sideright .index{

        width: 330px;

        height: 650px;

        background-color:rgba(225,225,225,0.5);
        /*background-color:rgba(255,255,255,0.75);*/

        margin: 50px 90px;

    }

    .headline{

        font-size: 22px;

        text-align: center;

        padding: 20px;

    }

    input[type="text"],

    input[type="submit"]{

        -web-kit-appearance:none;

        -moz-appearance: none;

        display: block;

        margin: 0 auto;

        font-size:15px;

        width: 240px;

    }

    input[type="text"]{

        height:35px;

        border-radius:3px;

        border:1px solid #c8cccf;

        color:#6a6f77;

        outline:0;

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
        float: left;

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

    <title>用户注册</title>

    <link rel="stylesheet" href="index.css">

</head>

<body>

<div class="container">



    <!-- 主体内容 （登陆界面）-->

    <div class="main">
        <!-- 右侧登陆界面 -->

        <div class="sideright">

            <div class="index">

    <form method="post" action="newAccount" name="registerForm" id="registerForm">
                    <p class="headline">用户注册</p>
        <c:if test="${error!=null}">
            <div class="alert alert-danger" role="alert">${error}</div>
        </c:if>
        <p class="astyle">用户名：<div id="usernameInfo" style="margin :0.9ex 0ex 0ex 0ex;" ></div></p>
                    <input id="username" name="username" type="text" required="required"
                           placeholder="请输入您的用户名" maxlength="20" onblur="usernameIsExist();"/>

        <p class="astyle">密码：<div id="PasswordInfo" style="margin :0.9ex 0ex 0ex 0ex;" ></div></p>
                    <input id="password" name="password" type="text" required="required"
                            placeholder="请输入您的密码" maxlength="20" onblur="PassWord();"/>
        <p class="astyle">确认密码：<div id="passwordInfo" style="margin :0.9ex 0ex 0ex 0ex;" ></div></p>
        <input id="repeatedPassword" name="repeatedPassword" type="text" placeholder="请再次输入密码" required="required" maxlength="20" onblur="CheckPassword();"/>
        <p class="astyle">性别：</p>
<%--                    <select class="form-control" name="deptid">--%>
<%--                        <c:forEach items="${list}" var="dep">--%>
<%--                            <option value="${dep.departmentid}">${dep.departmentname}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
        <div class="form-group">
        <select id="deptid" type="text" name="deptid">
            <option>男</option>
            <option>女</option>
            <option>不男不女</option>
        </select>
        </div>
<%--        <div class="form-group">--%>
<%--            <select id="deptid" type="text" name="deptid">--%>
<%--                <c:forEach items="${list}" var="dep">--%>
<%--                    <option value="${dep.departmentid}">${dep.departmentname}</option>--%>
<%--                </c:forEach>--%>
<%--            </select>--%>
<%--        </div>--%>
        <p class="astyle">联系电话：</p>
                    <input id="phone" name="phone" type="text" placeholder="请输入您的手机号" required="required" maxlength="20"/>
        <p class="astyle">电子邮件：</p>
                    <input id="email" name="email" type="text" placeholder="请输入您的电子邮件" required="required" maxlength="20"/>
                    <input type="submit" class="btn btn-success" value="注册"/><br><br>
                 <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有帐号，<a href="login.jsp">返回登录</a></p>
    </form>

            </div>

        </div>

    </div>

</div>

</body>

</html>



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

    #deptid {
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
</style>
<script type="text/javascript">
    var xmlHttpRequest;
    function createXMLHttpRequest()
    {
        if (window.XMLHttpRequest) //非IE浏览器
        {
            xmlHttpRequest = new XMLHttpRequest();
        }
        else if (window.ActiveXObject)//IE6以上浏览器
        {
            xmlHttpRequest = new ActiveXObject("Msxml2.XMLHTTP");
        }
        else //IE6及以下浏览器
        {
            xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
        }
    }

    function PassWord() {
        var password = document.registerForm.password.value;
        if(xmlHttpRequest.readyState == 4){
            if(xmlHttpRequest.status == 200){
                // var responseInfo = xmlHttpRequest.responseXML.getElementsByTagName("msg")[0].firstChild.data;
                var div1 = document.getElementById("PasswordInfo");
                if(password != ""){
                    div1.innerHTML="<font color='green'>密码可用</font>";
                }
                else  {
                    div1.innerHTML="<font color='red'>密码不能为空</font>";
                }
                // else if (checkpassword == "null") {
                //     div1.innerHTML="<font color='red'>密码不能为空</font>";
                // }
            }
        }
    }
    function CheckPassword(){
        var password = document.registerForm.password.value;
        var checkpassword = document.registerForm.repeatedPassword.value;
        if(xmlHttpRequest.readyState == 4){
            if(xmlHttpRequest.status == 200){
                // var responseInfo = xmlHttpRequest.responseXML.getElementsByTagName("msg")[0].firstChild.data;
                var div1 = document.getElementById("passwordInfo");
                if(password == checkpassword &&  password!="") {
                    div1.innerHTML="<font color='green'>两次密码一致</font>";
                }
                else if (password != checkpassword) {
                    div1.innerHTML="<font color='red'>两次密码不一致</font>";
                }
                else if (checkpassword == "") {
                    div1.innerHTML="<font color='red'>密码不能为空</font>";
                }
            }
        }
    }

    function usernameIsExist()
    {
        var username = document.registerForm.username.value;
        sendRequest("usernameValidation?username="+username);
    }

    function sendRequest(url){
        createXMLHttpRequest();
        xmlHttpRequest.open("GET", url, true);
        xmlHttpRequest.onreadystatechange = processResponse;
        xmlHttpRequest.send(null);
    }

    function processResponse(){
        if(xmlHttpRequest.readyState == 4){
            if(xmlHttpRequest.status == 200){
                var responseInfo = xmlHttpRequest.responseXML.getElementsByTagName("msg")[0].firstChild.data;
                var div1 = document.getElementById("usernameInfo");
                if(responseInfo == "Exist"){
                    div1.innerHTML="<font color='red'>用户名已经存在</font>";
                }
                else if (responseInfo == "NotExist") {
                    div1.innerHTML="<font color='green'>用户名可用</font>";
                } else if (responseInfo == "NULL") {
                    div1.innerHTML="<font color='red'>用户名不能为空</font>";
                }
            }
        }
    }


</script>

