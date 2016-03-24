<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<script type="text/javascript">
    $('#user-datagrid-json').datagrid({
        gridTitle : '用户列表',
        showToolbar: true,
        toolbarItem: 'add,edit,del',
        addLocation:'first',
        local: 'remote',
        dataUrl: '${ctx}/sys/user/list',
        dataType: 'json',
        filterThead: false,
        columns: [
            {
                name: 'business',
                label: '加盟商',
                type : 'string',
                align: 'center',
                width: 80,
                render: function(value){
                    return value.name;
                }
            },
            {
                name:'loginName',
                label: '登陆名',
                type: 'String',
                align:'center'

            },
            {
                name:'name',
                label: '姓名',
                type: 'String',
                align:'center'
            },
            {
                name:'mobile',
                label: '联系方式',
                type: 'String',
                align:'center'
            },
            {
                name: 'loginFlag',
                label: '禁用',
                type: 'boolean',
                align: 'center',
                width: 40,
                items: [{'1':'否'}, {'0':'是'}]
            },
            {
                name: 'createDate',
                label: '登记日期',
                type: 'date',
                pattern: 'yyyy-MM-dd HH:mm'
            }
        ],
        editUrl: 'ajaxDone1.html',
        delUrl : 'ajaxDone1.html',
        contextMenuB: true,
        paging: {pageSize:1, pageCurrent:1},
        editMode: 'dialog',
        fullGrid: true,
        showLinenumber: true
    })
</script>
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${ctx}/sys/user/list" method="post">
        <input type="hidden" name="pageSize" value="${user.pageInfo.pageSize}">
        <input type="hidden" name="pageCurrent" value="${user.pageInfo.pageCurrent}">
        <input type="hidden" name="orderField" value="${user.pageInfo.orderField}">
        <input type="hidden" name="orderDirection" value="${user.pageInfo.orderDirection}">
        <div class="bjui-searchBar">
            <label>加盟商:</label>
            <select name="business" data-toggle="selectpicker">
                <option value="">全部</option>
                <option value="1">联络</option>
                <option value="2">住宿</option>
                <option value="3">餐饮</option>
                <option value="4">交通</option>
            </select>&nbsp;
            <label>用户名：</label><input type="text" id="customNo" value="" name="code" class="form-control" size="10">&nbsp;
            <label>姓名：</label><input type="text" value="" name="name" class="form-control" size="8">&nbsp;
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>
        </div>
        <div class="bjui-moreSearch">
            <label>职业：</label><input type="text" value="" name="profession" size="15" />
            <label>&nbsp;性别:</label>
            <select name="sex" data-toggle="selectpicker">
                <option value="">全部</option>
                <option value="true">男</option>
                <option value="false">女</option>
            </select>
            <label>&nbsp;手机:</label>
            <input type="text" value="" name="mobile" size="10">
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <div style="height:100%; width:100%;">
        <table id="user-datagrid-json" data-width="100%" class="table table-bordered">
        </table>
        <br>
    </div>
</div>
<div class="bjui-pageFooter ">
    <%--<div class="pagination-box" data-toggle="pagination" data-total="" data-page-size="" data-page-current=""></div>--%>
</div>