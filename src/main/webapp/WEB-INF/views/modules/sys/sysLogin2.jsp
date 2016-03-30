<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <title>${fns:getConfig('productName')} 登录</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- CSS -->
    <link rel="stylesheet" href="${ctx}/login/css/reset.css">
    <link rel="stylesheet" href="${ctx}/login/css/style.css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${ctx}/BJUI/other/html5shiv.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function(){
            $('#loginForm').validator({
                rules: {

                },
                message: {
                    username:{required:"请填写用户名"},
                    password:{required:"请填写密码"}
                },
                errorLabelContainer:"#error",
                    }

            )
        })




    </script>
    <![endif]-->
</head>
<body>
<div class="page-head">
    <h1>${fns:getConfig('productName')}</h1>
</div>
<div class="page-container">
    <br><br>
    <h1>登录</h1>
    <form id="loginForm" action="${ctx}/a/login" method="post">
        <input id="username" type="text" name="username" class="username" placeholder="账号">
        <input id="password" type="password" name="password" class="password" placeholder="密码">
        <div id="error" class="error" style="display: ${empty message ? 'none':'block'}">${message}</div>
        <button id="submit" type="submit" class="submit" success="">登录</button>
    </form>
    <div class="connect">
    </div>
</div>
<!-- Javascript -->
<script src="${ctx}/login/js/jquery-1.7.2.min.js"></script>
<%--<script src="${ctx}/login/js/md5.js"></script>--%>
<script src="${ctx}/login/js/scripts.js"></script>
</body>


</html>


