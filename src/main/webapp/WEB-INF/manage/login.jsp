<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/3/22
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

    <html>
    <head>
    <meta charset="utf-8">
        <title>M BOOK-后台管理登入页</title>
    <meta name="viewport" content="width=device-width">
        <link href="../../css/base.css" rel="stylesheet" type="text/css">
        <link href="../../css/login.css" rel="stylesheet" type="text/css">
        <script src="../../js/jquery.min.js"></script>
        </head>
        <body>

        <div class="login">
        <form action="backLogin.do" method="post">
        <div class="logo"></div>
        <div class="login_form">
<%--        <div class="user">--%>
<%--        <input class="text_value"  name="phone" type="text" style="width:245px;height:50px;" />--%>
<%--        <input class="text_value"  name="password" type="password" style="width:245px;height:50px;"/>--%>
<%--        </div>--%>
            <div style="width: 400px;height: 200px;margin: auto;">
                <span id="msg" style="color: red;font-size: 12px;margin-left: 20px;"></span>
                <div>
                <input  name="phone" id="phone" type="text" style="width:350px;height:40px;margin: 10px 20px;border: #1a1a1a solid 2px"; placeholder="    请输入手机号" />
                <input  name="password" id="password" type="text" style="width:350px;height:40px;margin: 10px 20px;border: #1a1a1a solid 2px" placeholder="   请输入验证码"/>
                </div>
                <div style="margin-right: 20%;margin-left: 20%">
                    <button style="width: 80px;height: 40px;background-color: darkorange;margin: 0px 10px;" id="code" type="button">获取验证码</button>
                    <button style="width: 80px;height: 40px;background-color: green;margin: 0px 10px;" id="submit" type="submit">登录</button>
                </div>
            </div>
        <br>
<%--        <div>--%>
<%--            <button style="width: 50px;height: 20px;background-color: darkorange;padding-right: 20px" id="code" type="button">获取验证码</button>--%>
<%--            <button style="width: 50px;height: 20px;background-color: green" id="submit" type="submit">登录</button>--%>
<%--        </div>--%>
        </div>

        <div id="tip"></div>

        </form>
        </div>
        <script>var basedir='../ui/';</script>
<script src="../ui/do.js"></script>
<script src="../ui/config.js"></script>
<script >
    //点击获取验证码的方法
    $("#code").click(function() {
        //首先拿到输入的手机号码
        var phone = $("#phone").val();
        //非空校验
        if (phone == null || phone == "") {
            console.log(phone);
            $("#msg").text("手机号码不能为空");
            $("#phone").focus();
            return;
        }
        //正则校验
        if(!(/^1[3456789]\d{9}$/.test(phone))){
            $("#msg").text("手机号码格式不正确");
            $("#phone").focus();
        } else {
            //已注册校验
            $.ajax({
                type: "post",
                url: "checkPhone.do",
                data: {
                    phone:phone
                },
                dataType: "json",
                success: function(isRegist) {
                    /*
                        isRegist为true，读秒并发送验证码
                        isRegist为false，提示还未注册，去注册
                    */
                    if (isRegist) {
                        //remainTime();//读秒
                        createCode(phone);//生成验证码
                    } else {
                        $("#msg").html("您还没注册，请先注册")
                    }
                }
            })
        }
    })
    //生成验证码的方法
    function createCode(phone){
        $.ajax({
            type: "post",
            url: "createCode.do",
            data: {phone: phone},
            dataType: "json",
            success: function(isSuccess) {
                if(isSuccess){
                    $("#msg").text("验证码发送成功，请输入验证码").css("color","green");
                }else{
                    $("#msg").text("验证码发送失败，请重新获取").css("color","red");
                }
            },
            error: function() {
                alert("登陆失败");
            }
        })
    }
    //读秒的方法
    // var iTime = 59;
    // var Account;
    // function remainTime(){
    //     document.getElementById('zphone').disabled = true;
    //     var iSecond,sSecond="",sTime="";
    //     if (iTime >= 0){
    //         iSecond = parseInt(iTime%60);
    //         iMinute = parseInt(iTime/60)
    //         if (iSecond >= 0){
    //             if(iMinute>0){
    //                 sSecond = iMinute + "分" + iSecond + "秒";
    //             }else{
    //                 sSecond = iSecond + "秒";
    //             }
    //         }
    //         sTime=sSecond;
    //         if(iTime==0){
    //             clearTimeout(Account);
    //             sTime='获取手机验证码';
    //             iTime = 59;
    //             document.getElementById('zphone').disabled = false;
    //         }else{
    //             Account = setTimeout("remainTime()",1000);
    //             iTime=iTime-1;
    //         }
    //     }else{
    //         sTime='没有倒计时';
    //     }
    //     document.getElementById('zphone').value = sTime;
    // }
    //登录校验
    // $("#loginDiv").click(function(){
    //     var phone=$("#phone").val();
    //     var code=$("#code").val();
    //     if(code==null||code==""){
    //         $("#msg").text("验证码不能为空");
    //         $("#code").focus();
    //     }else{
    //         $.ajax({
    //             url:"user",
    //             type:"post",
    //             data:{"phone":phone,"code":code,"func":"validateCode"},
    //             dataType:"json",
    //             success:function(isSuccess){
    //                 if(isSuccess){
    //                     window.location="index?func=indexInfo";
    //                 }else{
    //                     $("#msg").text("验证码输入错误").css("color","red");
    //                     $("#code").focus();
    //                 }
    //             }
    //         })
    //     }
    // })
</script>
</body>
</html>