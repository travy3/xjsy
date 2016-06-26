<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<script src="${bjui}/plugins/echarts/chart/bar.js"></script>
<script src="${bjui}/plugins/echarts/chart/line.js"></script>
<div class="bjui-pageContent">
    <div style="margin:15px auto 0; width:96%;">
        <div class="row" style="padding: 0 8px;">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i>新增客户</h3></div>
                    <div class="panel-body">
                        <div style="mini-width:400px;height:350px" data-toggle="echarts" data-type="bar,line" data-url="${ctx}/statistics/increaseCus"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>