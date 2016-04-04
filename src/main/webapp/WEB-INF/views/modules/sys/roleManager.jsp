<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<script type="text/javascript">
    //选择事件
    function S_NodeCheck(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj(treeId),
                nodes = zTree.getCheckedNodes(true)
        var ids = '', names = ''

        for (var i = 0; i < nodes.length; i++) {
            ids   += ','+ nodes[i].id
            names += ','+ nodes[i].name
        }
        if (ids.length > 0) {
            ids = ids.substr(1), names = names.substr(1)
        }

        var $from = $('#'+ treeId).data('fromObj')

        if ($from && $from.length) $from.val(names)
    }
    //单击事件
    function S_NodeClick(event, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj(treeId)

        zTree.checkNode(treeNode, !treeNode.checked, true, true)

        event.preventDefault()
    }
</script>
<div class="bjui-pageContent">
    <form action="${ctx}/sys/role/save" class="pageForm" data-toggle="validate">
        <input name="id" value="${role.id}" type="hidden"/>
        <table class="table table-condensed table-hover">
            <tbody>
            <tr>
                <td>
                    <label for="j_dialog_name" class="control-label x90">名称：</label>
                    <input type="text" name="name" id="j_dialog_name" value="${role.name}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_enName" class="control-label x85">英文：</label>
                    <%--<select name="area.id" id="j_dialog_area" data-toggle="selectpicker">--%>
                    <%--<c:forEach items="${areaList}" var="area">--%>
                    <%--<option value="${area.id}">${area.name}</option>--%>
                    <%--</c:forEach>--%>
                    <%--</select>--%>
                    <input type="text" name="enName" value="${role.enName}" id="j_dialog_enName" data-rule="required" size="20">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_remarks" class="control-label x90">备注：</label>
                    <input type="text" name="remarks" id="j_dialog_remarks" value="${role.remarks}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_menu" class="control-label x85">菜单：</label>
                    <input type="text" name="menu.name" value="${role.menu.name}" id="j_dialog_menu" data-toggle="selectztree" size="18" data-tree="#j_select_tree1" readonly>
                    <ul id="j_select_tree1" class="ztree hide" data-toggle="ztree" data-expand-all="true" data-check-enable="true" data-on-check="S_NodeCheck" data-on-click="S_NodeClick">
                        <c:forEach items="${menuList}" var="menu">
                            <c:if test="${menu.pid eq 1}">
                                <li data-id="${menu.id}" data-pid="${menu.pid}" value="${menu.id}" >${menu.name}</li>
                                <c:forEach items="${menuList}" var="menuChild">
                                    <c:if test="${menuChild.pid eq menu.id}">
                                        <li data-id="${menuChild.id}" data-pid="${menuChild.pid}" value="${menuChild.id}">${menuChild.name}</li>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </c:forEach>
                    </ul>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">关闭</button></li>
        <li><button type="submit" class="btn-default">保存</button></li>
    </ul>
</div>