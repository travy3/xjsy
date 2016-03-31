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
    <form action="${ctx}/info/business/save" class="pageForm" data-toggle="validate">
        <table class="table table-condensed table-hover">
            <tbody>
            <tr>
                <td>
                    <label for="j_dialog_name" class="control-label x90">名称：</label>
                    <input type="text" name="name" id="j_dialog_name" value="${business.name}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_area" class="control-label x90">区域：</label>
                    <%--<select name="area.id" id="j_dialog_area" data-toggle="selectpicker">--%>
                        <%--<c:forEach items="${areaList}" var="area">--%>
                            <%--<option value="${area.id}">${area.name}</option>--%>
                        <%--</c:forEach>--%>
                    <%--</select>--%>
                    <input type="text" name="area.name" value="${business.area.name}" id="j_dialog_area" data-toggle="selectztree" size="18" data-tree="#j_select_tree2" readonly>
                        <ul id="j_select_tree2" class="ztree hide" data-toggle="ztree" data-expand-all="true" data-check-enable="true" data-chk-style="radio" data-radio-type="all" data-on-check="S_NodeCheck" data-on-click="S_NodeClick">
                            <c:forEach items="${areaList}" var="area">
                                <c:if test="${area.pid eq 0}">
                                    <li data-id="${area.id}" data-pid="${area.pid}" value="${area.id}" >${area.name}</li>
                                    <c:forEach items="${areaList}" var="areaChild">
                                        <c:if test="${areaChild.pid eq area.id}">
                                            <li data-id="${areaChild.id}" data-pid="${areaChild.pid}" value="${areaChild.id}">${areaChild.name}</li>
                                        </c:if>
                                    </c:forEach>
                                </c:if>
                            </c:forEach>
                        </ul>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_address" class="control-label x90">详细地址：</label>
                    <input type="text" name="address" id="j_dialog_address" value="${business.address}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_name" class="control-label x85">电子邮箱：</label>
                    <input type="text" name="email" id="j_dialog_mail" value="${business.email}" data-rule="required;email" size="20">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_master" class="control-label x90">负责人：</label>
                    <input type="text" name="master" id="j_dialog_master" value="${business.master}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_phone" class="control-label x85">联系电话：</label>
                    <input type="text" name="phone" id="j_dialog_phone" value="${business.phone}" data-rule="required;mobile" size="20">
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