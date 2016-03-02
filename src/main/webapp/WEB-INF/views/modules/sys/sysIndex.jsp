<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@include file="/WEB-INF/views/common/intoHead.jsp"%>
</head>
<body>

    <%@include file="/WEB-INF/views/common/header.jsp"%>
<div id="bjui-container" class="clearfix">
    <%@include file="/WEB-INF/views/common/leftMenu.jsp"%>
    <div id="bjui-navtab" class="tabsPage">
        <!-- 工作区(navtab) -->
        <div class="tabsPageHeader">
            <div class="tabsPageHeaderContent">
                <ul class="navtab-tab nav nav-tabs">
                    <li data-url="asd"><a href="javascript:;"><span><i class="fa fa-home"></i> #maintab#</span></a></li>
                </ul>
            </div>
            <div class="tabsLeft"><i class="fa fa-angle-double-left"></i></div>
            <div class="tabsRight"><i class="fa fa-angle-double-right"></i></div>
            <div class="tabsMore"><i class="fa fa-angle-double-down"></i></div>
        </div>
        <ul class="tabsMoreList">
            <li><a href="javascript:;">#maintab#</a></li>
        </ul>
        <div class="navtab-panel tabsPageContent">
            <div class="navtabPage unitBox">
                <div class="bjui-pageContent" style="background:#FFF;">
                    Loading...
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/common/footer.jsp"%>

</body>

</html>
