<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<script type="text/javascript">
    $('#planInfoList').datagrid({
        columns: [
            {
                name: 'num',
                label: '序号',
                type : 'String',
                align: 'center',
                rule: 'required'
//                width: 80

            },
            {
                name: 'code',
                label: '编号',
                type : 'String',
                align: 'center',
//                width: 80
                rule: 'required'
            },
            {
                name:'times',
                label: '次数',
                type: 'String',
                align:'center',
                rule: 'required'
            },
            {
                name:'paper',
                label: '图纸',
                type: 'String',
                align:'center',
                rule: 'required'
            }
            <%--,--%>
            <%--{--%>
                <%--name: 'id',--%>
                <%--label: '操作',--%>
                <%--align: 'center',--%>
                <%--width: 150,--%>
                <%--render: function(value) {--%>
                    <%--return '<a href="${ctx}/info/planInfo/edit/'+value+'" data-toggle="inline"  data-type="POST"  class="btn btn-blue">修改</a>'--%>
                <%--},--%>
                <%--edit:false,--%>
                <%--add:false--%>
            <%--}--%>
        ],
        dataUrl: '${ctx}/info/planInfo/list?planId=${plan.id}',
        loadType 		: 	'POST' 	,//[可选] Ajax请求方式。
        dataType 		: 	'json' 	,//[可选] 数据类型，可选参数['json' | 'array' | 'xml']。
//        hiddenFields 	: 	[{name:'id'}] 	,//[可选] 仅用于dataType='array'时隐藏字段，可以将不能加载到页面上的值设置到给定的字段，array数据除去表头的列后依次赋值。
        local 			: 	'remote' ,//[可选] 处理数据方式，可选参数['local' | 'remote']，(影响（分页、排序、筛选）)。
        fieldSortable 	: 	true 	,//[可选] 点击页头字段快速排序。普通表格转为datagrid的，需设置dataUrl参数，local = 'remote'
        filterThead 	: 	false 	,//[可选] 允许表格头部快速筛选。普通表格转为datagrid的，需设置dataUrl参数，local = 'remote'
        sortAll 		: 	true 	,//[可选] 排序范围，true = 所有数据排序， false = 当前页数据排序。普通表格转为datagrid的，默认为true
        filterAll 		: 	true 	,//[可选] 筛选范围，true = 从所有数据中筛选，false = 从当前页数据中筛选。普通表格转为datagrid的，默认为true
        filterMult 		: 	true 	,//[可选] 支持多字段筛选。
        linenumberAll 	: 	true 	,//[可选] 行号范围，true = 为所有数据编号，false = 为当前页数据编号。
        showLinenumber 	: 	true 	,//[可选] 是否显示行号，参数[true | false | 'lock']，lock参数 = 锁定行号列（适用于多列字段，出现横向滚动条的情况）。
        showCheckboxcol : 	false 	,//[可选] 是否显示行复选框，参数同上。
        showEditbtnscol : 	true 	,//[可选] 是否显示编辑按钮列。
        showTfoot 		: 	false 	,//[可选] 是否显示页脚，适用于显示统计信息，需要字段相关参数支持。
        showToolbar 	: 	true 	,//[可选] 是否显示工具条，需要设置参数toolbarItem或toolbarCustom。
        toolbarItem 	: 	'add,|,refresh' 	,//[可选] 显示工具条按钮，可选参数['all, add, edit, cancel, save, del, import, export, |']，“all” = 显示所有按钮，“|” = 按钮组分隔符。
        <%--toolbarCustom 	: 	'<a href="${ctx}/info/plan/manage" data-toggle="dialog" data-id="" data-width="830" data-height="230" data-mask="true" data-type="POST" data-title="新增" class="btn btn-blue">新增</a>  ',//[可选] 自定义的html内容或jQuery DOM对象，支持带返回值函数。--%>
        //toolbarCustom 	: 	null 	,//[可选] 自定义的html内容或jQuery DOM对象，支持带返回值函数。
        columnResize 	: 	true 	,//[可选] 允许调整列宽。
        columnMenu 		: 	true 	,//[可选] 表头字段列上显示菜单按钮。
        columnShowhide 	: 	false 	,//[可选] 表头字段列菜单上出现 “显示/隐藏 列” 选项。
        columnFilter 	: 	true 	,//[可选] 表头字段列菜单上出现 “过滤” 选项。
        columnLock 		: 	true 	,//[可选] 表头字段列菜单上出现 “锁定列、解除锁定” 选项。
        paging 			: 	{pageSize:10, selectPageSize:'30,60,100', pageCurrent:1, showPagenum:5, total:0} 	,//[可选] 是否显示分页组件，可设置分页参数。分页参数模板：{pageSize:30, selectPageSize:'30,60,90', pageCurrent:1, showPagenum:5}
        pagingAlign 	: 	'left',//[可选] 分页组件对齐方式，参数['left' | 'center' | 'right']
        editUrl 		: 	'${ctx}/info/planInfo/manage?planId=${plan.id}' 	,//[可选] 保存编辑、添加数据的url，Ajax请求方式为POST，服务器端接收的参数名称为"json"，数据类型是JSON Array。
        //editCallback 	: 	null 	,//[可选] 保存成功后的回调，返回的json内容可以是B-JUI默认的回调json或保存后的json数据，datagrid默认回调：如果返回保存后的json数据，将会更新对应的数据行。
        editMode 		: 	'inline',//[可选] 编辑、添加数据的方式，参数[false | 'inline' | 'dialog']。false = 不能编辑，inline = 行内编辑，dialog = 弹窗编辑。
        //editDialogOp 	: 	null 	,//[可选] 弹窗编辑方式时，设置弹出窗口的参数，如{width:500, height:300, mask:false}
        inlineEditMult 	: 	true 	,//[可选] 允许行内编辑模式下同时添加/编辑多行。
        saveAll 		: 	true 	,//[可选] 适用于多行行内编辑时，一次性保存全部数据，发送到服务器端数据格式见参数editUrl。
        addLocation 	: 	'last'	,//[可选] 添加新行数据于当前页的位置，参数['first' | 'last' | 'prev' | 'next']，参数prev和next参考当前选中行位置。
        delUrl 			: 	'${ctx}/info/planInfo/del' 	,//[可选] 删除数据的url，服务器端接收的数据见参数delPK
        delType 		: 	'POST' 	,//[可选] Ajax删除数据的请求方式。
        delPK 			: 	'id' 	,//[可选] 设置删除主键名，如果设置了主键，则只发送该字段的值(删除多条则主键值以逗号分隔)到服务器端，否则发送JSON数据（参数名"json"，数据类型为JSON Array）。
        delConfirm 		: 	'删除操作无需保存，直接生效，是否继续删除？' 	,//[可选] 删除前的确认提示，参数[true | false | '自定义提示信息']，参数为false时不弹出提示信息。
        //delCallback 	: 	null 	,//[可选] 删除成功后的回调函数，返回的json内容为B-JUI默认的回调json。
        contextMenuH 	: 	true 	,//[可选] 在表头上右键点击时出现 ”显示/隐藏列“ 的快捷菜单。
        contextMenuB 	: 	false 	,//[可选] 在数据行右键点击时出现快捷菜单，菜单选项有(刷新、添加、编辑、取消、删除)。
        hScrollbar 		: 	false 	,//[可选] 允许出现横向滚动条。
        fullGrid 		: 	true 	,//[可选] 使表格铺满网格容器(如果值为true，则需要设置有列宽，并且总宽度小于datagrid容器宽度时有效)。
//        jsonPrefix      :   "planInfo",
        //width 			: 	null 	,//[可选] datagrid容器宽度，默认为父容器的宽，相当于'100%'。
        height 			: 	'460' 	//,//[可选] datagrid容器高度。
        //importOption 	: 	null 	,//[可选] 工具栏的导入按钮参数，dialog或navtab方式打开导入页面，参数模板{type:"dialog", options:{url:'', width:400, height:200}}
        //exportOption 	: 	null 	,//[可选] 工具栏的导出按钮参数，执行ajax url或以dialog or navtab方式打开导出页面，参数模板{type:"ajax", options:{url:""}}
        //beforeEdit 		: 	null 	,//[可选] 带返回值方法，编辑数据前调用，返回true继续编辑，返回false取消编辑。
        //beforeDelete 	: 	null 	,//[可选] 带返回值方法，删除数据前调用，返回true继续删除，返回false取消删除。
        //afterSave 		: 	null 	,//[可选] 保存成功后执行方法，参数$trs为保存行(jQuery 对象)，datas为保存行对应数据(JSON Array)。
        //afterDelete 	: 	null 	 //[可选] 删除成功后执行方法。

    })


</script>
<div class="bjui-pageContent">
    <form action="${ctx}/info/plan/save" class="pageForm" data-toggle="validate">
        <input name="id" value="${plan.id}" type="hidden"/>
        <table class="table table-condensed table-hover">
            <tbody>
            <tr>
                <td>
                    <label for="j_dialog_name" class="control-label x90">方案名称：</label>
                    <input type="text" name="name" id="j_dialog_name" value="${plan.name}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_eyeType" class="control-label x90">方案类型：</label>
                    <select name="eyeType" id="j_dialog_eyeType" data-toggle="selectpicker" data-rule="required">
                        <option value="1" <c:if test="${plan.eyeType eq 1}">selected="selected"</c:if>>近视/远视/散光</option>
                        <option value="2" <c:if test="${plan.eyeType eq 2}">selected="selected"</c:if>>弱视</option>

                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_levelNo" class="control-label x90">级别：</label>
                    <input type="text" name="levelNo" id="j_dialog_levelNo" value="${plan.levelNo}" data-rule="required;number" size="20">
                </td>
                <td>
                    <label for="j_dialog_orderNo" class="control-label x90">期数：</label>
                    <input type="text" name="orderNo" id="j_dialog_orderNo" value="${plan.orderNo}" data-rule="required;number" size="20">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_remarks" class="control-label x90">备注：</label>
                    <input type="text" name="remarks" id="j_dialog_remarks" value="${plan.remarks}" data-rule="required" size="20">
                </td>
            </tr>
            </tbody>
        </table>
        <table id="planInfoList" data-width="100%" class="table table-bordered">
        </table>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">关闭</button></li>
        <li><button type="submit" class="btn-default">保存</button></li>
    </ul>
</div>