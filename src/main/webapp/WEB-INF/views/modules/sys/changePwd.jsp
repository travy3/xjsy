<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<div class="bjui-pageContent">
    <form action="${ctx}/saveNewPwd" class="pageForm" data-toggle="validate">
        <table class="table table-condensed table-hover">
            <tbody>
            <tr>
                <td>
                    <label for="password" class="control-label x90">旧密码：</label>
                    <input type="password" name="password" id="password" value="" data-rule="required" size="20">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="newPassword" class="control-label x90">新密码：</label>
                    <input type="password" name="newPassword" id="newPassword" value="" data-rule="新密码: required;password" size="20">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="againNewPassword" class="control-label x90">确认密码：</label>
                    <input type="password" name="againNewPassword" id="againNewPassword" value="" data-rule="确认密码: required;match(newPassword)" size="20">
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

<script type="text/javascript">

</script>