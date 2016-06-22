<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@include file="/WEB-INF/views/common/intoHead.jsp"%>
</head>
<body>
<header id="bjui-header">
    <!-- logo --><!-- 快捷菜单(消息、用户信息、切换皮肤) -->
    <div class="bjui-navbar-header">
        <button type="button" class="bjui-navbar-toggle btn-default" data-toggle="collapse" data-target="#bjui-navbar-collapse">
            <i class="fa fa-bars"></i>
        </button>
        <a class="bjui-navbar-logo" href="#"><img src="#"></a>
    </div>
    <nav id="bjui-navbar-collapse">
        <ul class="bjui-navbar-right">
            <li class="datetime"><div><span id="bjui-date"></span> <span id="bjui-clock"></span></div></li>
            <%--<li><a href="#">消息 <span class="badge">4</span></a></li>--%>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">我的账户 <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="${ctx}/changePwd" data-toggle="dialog" data-id="changepwd_page" data-mask="true" data-width="550" data-height="260">&nbsp;<span class="glyphicon glyphicon-lock"></span> 修改密码&nbsp;</a></li>
                    <li><a href="">&nbsp;<span class="glyphicon glyphicon-user"></span> 我的资料</a></li>
                    <li class="divider"></li>
                    <li><a href="${ctx}/a/logout" class="red">&nbsp;<span class="glyphicon glyphicon-off"></span> 注销登陆</a></li>
                </ul>
            </li>
            <%--<li><a href="index.html" title="切换为列表导航(窄版)" style="background-color:#ff7b61;">列表导航栏(窄版)</a></li>--%>
            <li class="dropdown"><a href="#" class="dropdown-toggle theme blue" data-toggle="dropdown" title="切换皮肤"><i class="fa fa-tree"></i></a>
                <ul class="dropdown-menu" role="menu" id="bjui-themes">
                    <li><a href="javascript:;" class="theme_default" data-toggle="theme" data-theme="default">&nbsp;<i class="fa fa-tree"></i> 黑白分明&nbsp;&nbsp;</a></li>
                    <li><a href="javascript:;" class="theme_orange" data-toggle="theme" data-theme="orange">&nbsp;<i class="fa fa-tree"></i> 橘子红了</a></li>
                    <li><a href="javascript:;" class="theme_purple" data-toggle="theme" data-theme="purple">&nbsp;<i class="fa fa-tree"></i> 紫罗兰</a></li>
                    <li class="active"><a href="javascript:;" class="theme_blue" data-toggle="theme" data-theme="blue">&nbsp;<i class="fa fa-tree"></i> 天空蓝</a></li>
                    <li><a href="javascript:;" class="theme_green" data-toggle="theme" data-theme="green">&nbsp;<i class="fa fa-tree"></i> 绿草如茵</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</header>
<div id="bjui-container" class="clearfix">
    <div id="bjui-leftside">
        <div id="bjui-sidebar-s">
            <div class="collapse"></div>
        </div>
        <div id="bjui-sidebar">
            <div class="toggleCollapse"><h2><i class="fa fa-bars"></i> 导航栏 <i class="fa fa-bars"></i></h2><a href="javascript:;" class="lock"><i class="fa fa-lock"></i></a></div>
            <div class="panel-group panel-main" data-toggle="accordion" id="bjui-accordionmenu" data-heightbox="#bjui-sidebar" data-offsety="26">
<c:forEach items="${menuList}" var="menu">
    <c:if test="${menu.pid eq 1}">
                <div class="panel panel-default">
                    <div class="panel-heading active">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#bjui-accordionmenu" href="#bjui-collapse-${menu.id}" class=""><i class="fa fa-star-o"></i>&nbsp;${menu.name}<b><i class="fa fa-angle-down"></i></b></a>
                        </h4>
                    </div>
                    <div id="bjui-collapse-${menu.id}" class="panel-collapse collapse ">
                        <div class="panel-body">
                            <ul id="bjui-tree-${menu.id}" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true" data-expand-level="2">
                                <c:forEach items="${menuList}" var="menuChild">
                                <c:if test="${menuChild.pid eq menu.id}">
                                <li data-id="${menuChild.id}" data-pid="${menuChild.pid}" data-toggle="navtab" data-url="${ctx}${menuChild.href}" data-tabid="navId_${menuChild.id}" data-faicon="caret-right">${menuChild.name}</li>
                                    <%--<li data-id="${menuChild.id}"  data-pid="${menuChild.pid}" data-url="${ctx}${menuChild.href}" data-toggle="navtab"  data-tabid="form-button"--%>
                                        <%--data-faicon="bell">${menuChild.name}</li>--%>
                                </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="panelFooter"><div class="panelFooterContent"></div></div>
                </div>
    </c:if>
</c:forEach>
            </div>
        </div>
    </div>
    <div id="bjui-navtab" class="tabsPage">
        <div class="tabsPageHeader">
            <div class="tabsPageHeaderContent">
                <ul class="navtab-tab nav nav-tabs">
                    <li data-url=""><a href="javascript:;"><span><i class="fa fa-home"></i> #maintab#</span></a></li>
                </ul>
            </div>
            <div class="tabsLeft"><i class="fa fa-angle-double-left"></i></div>
            <div class="tabsRight"><i class="fa fa-angle-double-right"></i></div>
            <div class="tabsMore"><i class="fa fa-angle-double-down"></i></div>
        </div>
        <ul class="tabsMoreList">
            <li><a href="javascript:;">#123maintab#123</a></li>
        </ul>
        <div class="navtab-panel tabsPageContent">
            <div class="navtabPage unitBox">
                <div class="bjui-pageContent" style="background:#FFF;">
                    Loading...
                </div>
                <%--<div style="width:600px;"></div><!-- 保证tabhead正常显示 -->--%>
            </div>
        </div>
    </div>
</div>
<%--<%@include file="/WEB-INF/views/common/footer.jsp"%>--%>
<footer id="bjui-footer">
    <!-- 页脚 -->
    Copyright &copy; 2013 - 2015　<a href="" target="_blank">zyu</a>　
</footer>
</body>
</html>