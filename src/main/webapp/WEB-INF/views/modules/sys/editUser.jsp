<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<div class="bjui-pageContent">
    <form action="${ctx}/sys/user/save" class="pageForm" data-toggle="validate" data-reload="true" id="userFomr">
        <input type="hidden" name="id" value="${user.id}">
        <input type="hidden" name="password" value="${user.password}">
        <table class="table table-condensed table-hover">
            <tbody>
            <tr>
                <td>
                    <label for="j_dialog_name" class="control-label x90">姓名：</label>
                    <input type="text" name="name" id="j_dialog_name" value="${user.name}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_tel" class="control-label x85">联系电话：</label>
                    <input type="text" name="mobile" id="j_dialog_tel" value="${user.mobile}" data-rule="required;mobile" size="20">
                </td>
            </tr>

            <tr>
                <td>
                    <label for="j_dialog_loginName" class="control-label x90">登录名：</label>
                    <input type="text" name="loginName" id="j_dialog_loginName" value="${user.loginName}" data-rule="required" size="20">
                </td>
                <td>
                    <label for="j_dialog_name" class="control-label x85">电子邮箱：</label>
                    <input type="text" name="email" id="j_dialog_mail" value="${user.email}" data-rule="required;email" size="20">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_business" class="control-label x90">所属加盟商：</label>
                    <select name="business.id" id="j_dialog_business" data-toggle="selectpicker">
                        <c:forEach items="${businessList}" var="business">
                            <option value="${business.id}" <c:if test="${user.business.id eq business.id}">selected="selected"</c:if> >${business.name}</option>
                        </c:forEach>
                    </select>
                </td>
                <td>
                    <label for="j_dialog_role" class="control-label x85">角色：</label>
                    <select name="role.id" id="j_dialog_role" data-toggle="selectpicker">
                        <c:forEach items="${roleList}" var="role">
                            <c:choose>
                                <c:when test="${user.roleList[0].id eq role.id}">
                                    <option value="${role.id}" selected="selected">${role.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${role.id}">${role.name}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_dialog_loginFlag" class="control-label x90">是否禁用：</label>
                    <c:choose>
                        <c:when test="${user.loginFlag eq 1}">
                            <input type="radio" name="loginFlag" id="doc-j_dialog_loginFlag" data-toggle="icheck" data-label="是" value="1" checked="checked">
                            <input type="radio" name="loginFlag" id="doc-j_dialog_loginFlag2" data-toggle="icheck" data-label="否" value="0">
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="loginFlag" id="doc-j_dialog_loginFlag" data-toggle="icheck" data-label="是" value="1">
                            <input type="radio" name="loginFlag" id="doc-j_dialog_loginFlag2" data-toggle="icheck" data-label="否" value="0"checked="checked">
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <label for="j_dialog_newPwd" class="control-label x85">重置密码：</label>
                    <input type="text" name="newPassword" id="j_dialog_newPwd" value="" size="20">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">关闭</button></li>
        <li><button type="button" onclick="submitForm()" class="btn-default">保存</button></li>
    </ul>
</div>
<script>
    function submitForm(){
        $('#userFomr').bjuiajax('ajaxForm')
    }

</script>