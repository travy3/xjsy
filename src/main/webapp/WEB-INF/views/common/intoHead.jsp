<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!-- bootstrap - css -->
<link href="${bjui}/themes/css/bootstrap.min.css" rel="stylesheet">
<!-- core - css -->
<link href="${bjui}/themes/css/style.css" rel="stylesheet">
<link href="${bjui}/themes/blue/core.css" id="bjui-link-theme" rel="stylesheet">
<!-- plug - css -->
<link href="${bjui}/plugins/kindeditor_4.1.10/themes/default/default.css" rel="stylesheet">
<link href="${bjui}/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="${bjui}/plugins/niceValidator/jquery.validator.css" rel="stylesheet">
<link href="${bjui}/plugins/bootstrapSelect/bootstrap-select.css" rel="stylesheet">
<link href="${bjui}/themes/css/FA/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
    tr{height: 32px; line-height: 32px} /* 优化表格行高 */
    .resize-head{height:0;} /* 修正表格行距增加后表头显示问题 */
    .panel-body td{line-height:1.5;font-size: 14px;} /* kindEditor文字行距 */
    .panel-body p{line-height:1.5;font-size: 14px;} /* kindEditor文字行距 */
</style>
<!--[if lte IE 7]>
<link href="${bjui}/themes/css/ie7.css" rel="stylesheet">
<![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lte IE 9]>
<script src="${bjui}/other/html5shiv.min.js"></script>
<script src="${bjui}/other/respond.min.js"></script>
<![endif]-->
<!-- jquery -->
<script src="${bjui}/js/jquery-1.11.3.min.js"></script>
<script src="${bjui}/js/jquery.cookie.js"></script>
<!--[if lte IE 9]>
<script src="${bjui}/other/jquery.iframe-transport.js"></script>
<![endif]-->
<!-- BJUI.all 分模块压缩版 -->
<script src="${bjui}/js/bjui-all.js"></script>


<!-- plugins -->
<!-- swfupload for uploadify && kindeditor -->
<script src="${bjui}/plugins/swfupload/swfupload.js"></script>
<!-- kindeditor -->
<script src="${bjui}/plugins/kindeditor_4.1.10/kindeditor-all.min.js"></script>
<script src="${bjui}/plugins/kindeditor_4.1.10/lang/zh_CN.js"></script>
<!-- colorpicker -->
<script src="${bjui}/plugins/colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- ztree -->
<script src="${bjui}/plugins/ztree/jquery.ztree.all-3.5.js"></script>
<!-- nice validate -->
<script src="${bjui}/plugins/niceValidator/jquery.validator.js"></script>
<script src="${bjui}/plugins/niceValidator/jquery.validator.themes.js"></script>
<!-- bootstrap plugins -->
<script src="${bjui}/plugins/bootstrap.min.js"></script>
<script src="${bjui}/plugins/bootstrapSelect/bootstrap-select.min.js"></script>
<!-- icheck -->
<script src="${bjui}/plugins/icheck/icheck.min.js"></script>
<!-- dragsort -->
<script src="${bjui}/plugins/dragsort/jquery.dragsort-0.5.1.min.js"></script>
<!-- highcharts -->
<%--<script src="${bjui}/plugins/highcharts/highcharts.js"></script>--%>
<%--<script src="${bjui}/plugins/highcharts/highcharts-3d.js"></script>--%>
<!-- ECharts -->
<script src="${bjui}/plugins/echarts/echarts.js"></script>

<!-- other plugins -->
<script src="${bjui}/plugins/other/jquery.autosize.js"></script>
<link href="${bjui}/plugins/uploadify/css/uploadify.css" rel="stylesheet">
<script src="${bjui}/plugins/uploadify/scripts/jquery.uploadify.min.js"></script>
<%--<script src="${bjui}/plugins/download/jquery.fileDownload.js"></script>--%>
<!-- init -->
<script type="text/javascript">
    $(function() {
        BJUI.init({
            JSPATH       : 'BJUI/',         //[可选]框架路径
            PLUGINPATH   : 'BJUI/plugins/', //[可选]插件路径
            loginInfo    : {url:'login_timeout.html', title:'登录', width:400, height:200}, // 会话超时后弹出登录对话框
            statusCode   : {ok:200, error:300, timeout:301}, //[可选]
            ajaxTimeout  : 50000, //[可选]全局Ajax请求超时时间(毫秒)
            pageInfo     : {total:'total', pageCurrent:'pageCurrent', pageSize:'pageSize', orderField:'orderField', orderDirection:'orderDirection'}, //[可选]分页参数
            alertMsg     : {displayPosition:'topcenter', displayMode:'slide', alertTimeout:3000}, //[可选]信息提示的显示位置，显隐方式，及[info/correct]方式时自动关闭延时(毫秒)
            keys         : {statusCode:'statusCode', message:'message'}, //[可选]
            ui           : {
                windowWidth      : 0,    //框架可视宽度，0=100%宽，> 600为则居中显示
                showSlidebar     : true, //[可选]左侧导航栏锁定/隐藏
                clientPaging     : true, //[可选]是否在客户端响应分页及排序参数
                overwriteHomeTab : false //[可选]当打开一个未定义id的navtab时，是否可以覆盖主navtab(我的主页)
            },
            debug        : true,    // [可选]调试模式 [true|false，默认false]
            theme        : 'sky' // 若有Cookie['bjui_theme'],优先选择Cookie['bjui_theme']。皮肤[五种皮肤:default, orange, purple, blue, red, green]
        });

        // main - menu
        $('#bjui-accordionmenu')
                .collapse()
                .on('hidden.bs.collapse', function(e) {
                    $(this).find('> .panel > .panel-heading').each(function() {
                        var $heading = $(this), $a = $heading.find('> h4 > a')

                        if ($a.hasClass('collapsed')) $heading.removeClass('active')
                    })
                })
                .on('shown.bs.collapse', function (e) {
                    $(this).find('> .panel > .panel-heading').each(function() {
                        var $heading = $(this), $a = $heading.find('> h4 > a')

                        if (!$a.hasClass('collapsed')) $heading.addClass('active')
                    })
                });

        $(document).on('click', 'ul.menu-items > li > a', function(e) {
            var $a = $(this), $li = $a.parent(), options = $a.data('options').toObj()
            var onClose = function() {
                $li.removeClass('active')
            }
            var onSwitch = function() {
                $('#bjui-accordionmenu').find('ul.menu-items > li').removeClass('switch')
                $li.addClass('switch')
            }

            $li.addClass('active')
            if (options) {
                options.url      = $a.attr('href')
                options.onClose  = onClose
                options.onSwitch = onSwitch
                if (!options.title) options.title = $a.text()

                if (!options.target)
                    $a.navtab(options)
                else
                    $a.dialog(options)
            }

            e.preventDefault()
        });


        //时钟
        var today = new Date(), time = today.getTime();
        $('#bjui-date').html(today.formatDate('yyyy/MM/dd'))
        setInterval(function() {
            today = new Date(today.setSeconds(today.getSeconds() + 1))
            $('#bjui-clock').html(today.formatDate('HH:mm:ss'))
        }, 1000)
    });


    //console.log('IE:'+ (!$.support.leadingWhitespace))
    //菜单-事件
    function MainMenuClick(event, treeId, treeNode) {
        event.preventDefault()
        if (treeNode.isParent) {
            var zTree = $.fn.zTree.getZTreeObj(treeId)

            zTree.expandNode(treeNode, !treeNode.open, false, true, true)
            return
        }

        if (treeNode.target && treeNode.target == 'dialog')
            $(event.target).dialog({id:treeNode.tabid, url:treeNode.url, title:treeNode.name})
        else
            $(event.target).navtab({id:treeNode.tabid, url:treeNode.url, title:treeNode.name, fresh:treeNode.fresh, external:treeNode.external})
    }
</script>