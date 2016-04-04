<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
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
                    <select name="area.id" id="j_dialog_area" data-toggle="selectpicker">
                        <c:forEach items="${areaList}" var="area">
                            <option value="${area.id}">${area.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_address" class="control-label x90">详细地址：</label>
                    <input type="text" name="address" id="j_dialog_address" value="" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_name" class="control-label x85">电子邮箱：</label>
                    <input type="text" name="email" id="j_dialog_mail" value="" data-rule="required;email" size="20">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_master" class="control-label x90">负责人：</label>
                    <input type="text" name="master" id="j_dialog_master" value="" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_phone" class="control-label x85">联系电话：</label>
                    <input type="text" name="phone" id="j_dialog_phone" value="" data-rule="required;mobile" size="20">
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