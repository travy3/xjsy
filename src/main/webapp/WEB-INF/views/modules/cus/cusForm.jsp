<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<script type="text/javascript">
    function pic_upload_success(file, data) {
        var json = $.parseJSON(data)

        $(this).bjuiajax('ajaxDone', json)
        if (json[BJUI.keys.statusCode] == BJUI.statusCode.ok) {
            $('#j_custom_pic').val(json.filename).trigger('validate')
            $('#j_custom_span_pic').html('<img src="'+ json.filename +'" width="100" />')
        }
    }
    function do_OK(json, $form) {
        console.log(json)
        console.log($form)
    }
//    //护照有效日期  = 签发日期 + 10年
//    $('#j_custom_issuedate').on('afterchange.bjui.datepicker', function(e, data) {
//        var pattern = 'yyyy-MM-dd'
//        var start   = end = data.value
//
//        end.setFullYear(start.getFullYear() + 10)
//        end.setDate(start.getDate() - 1)
//
//        $('#j_custom_indate').val(end.formatDate(pattern))
//    })
</script>
<div class="bjui-pageContent">
    <form action="${ctx}/cus/0/manage" id="j_custom_form" data-toggle="validate" data-alertmsg="false">
        <input type="hidden" name="id" value="${customer.id}">
        <table class="table table-condensed table-hover" width="100%">
            <tbody>
            <tr>
                <td>
                    <label for="j_customer_duration" class="control-label x85">所属阶段：</label>
                    <select name="duration" id="j_customer_duration" data-toggle="selectpicker" data-rule="required">
                        <option value="0" <c:if test="${customer.duration eq 0}">selected="selected"</c:if>>试用期</option>
                        <option value="1" <c:if test="${customer.duration eq 1}">selected="selected"</c:if>>治疗期</option>
                        <option value="2" <c:if test="${customer.duration eq 2}">selected="selected"</c:if>>保健期</option>
                    </select>
                </td>
                <td>
                    <label for="j_customer_name" class="control-label x85">客户姓名：</label>
                    <input type="text" name="name" id="j_customer_name" value="${customer.name}" data-rule="required" size="15">
                </td>
                <td colspan="2">
                    <label for="j_customer_school" class="control-label x85">学校：</label>
                    <input type="text" name="school" id="j_customer_school" value="${customer.school}" size="30">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_customer_sex1" class="control-label x85">性别：</label>
                    <c:choose>
                        <c:when test="${customer.sex eq 1}">
                            <input type="radio" name="sex" id="j_customer_sex1" data-toggle="icheck" value="1" checked="checked" data-label="男&nbsp;&nbsp;">
                            <input type="radio" name="sex" id="j_customer_sex2" data-toggle="icheck" value="0" data-label="女">
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="sex" id="j_customer_sex1" data-toggle="icheck" value="1" checked="checked"  data-label="男&nbsp;&nbsp;">
                            <input type="radio" name="sex" id="j_customer_sex2" data-toggle="icheck" value="0"  data-label="女">
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <label for="j_customer_birthday" class="control-label x85">出生日期：</label>
                    <input type="text" name="birthday" id="j_customer_birthday" value="${sdfBirthday}" data-toggle="datepicker" data-rule="required;date" size="15">
                </td>
                <td>
                    <label for="j_customer_eyeglassesSightR" class="control-label x85">戴镜度数R：</label>
                    <input type="text" name="eyeglassesSightR" id="j_customer_eyeglassesSightR" value="${customer.eyeglassesSightR}" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_eyeglassesSightL" class="control-label x85">戴镜度数L：</label>
                    <input type="text" name="eyeglassesSightL" id="j_customer_eyeglassesSightL" value="${customer.eyeglassesSightL}" data-rule="required" size="15">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label for="j_customer_telephone" class="control-label x85">手机：</label>
                    <input type="text" name="telephone" id="j_customer_telephone" value="${customer.telephone}" data-rule="required;mobile" size="30">
                </td>
                <td>
                    <label for="j_customer_nakedEyeSightR" class="control-label x85">裸眼视力R：</label>
                    <input type="text" name="nakedEyeSightR" id="j_customer_nakedEyeSightR" value="${customer.nakedEyeSightR}" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_nakedEyeSightL" class="control-label x85">裸眼视力L：</label>
                    <input type="text" name="nakedEyeSightL" id="j_customer_nakedEyeSightL" value="${customer.nakedEyeSightL}" data-rule="required" size="15">
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <label for="j_customer_glassesTime" class="control-label x85">带镜史：</label>
                    <input type="text" name="glassesTime" id="j_customer_glassesTime" value="${customer.glassesTime}" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_address" class="control-label x85">家庭住址：</label>
                    <input type="text" name="address" id="j_customer_address" value="${customer.address}" size="15">
                </td>
                <td>
                    <label for="j_customer_recoverEyeSightR" class="control-label x85">恢复视力R：</label>
                    <input type="text" name="recoverEyeSightR" id="j_customer_recoverEyeSightR" value="${customer.recoverEyeSightR}"  data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_recoverEyeSightL" class="control-label x85">恢复视力L：</label>
                    <input type="text" name="recoverEyeSightL" id="j_customer_recoverEyeSightL" value="${customer.recoverEyeSightL}" data-rule="required" size="15">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_customer_definR" class="control-label x85">清晰度R：</label>
                    <input type="text" name="definR" id="j_customer_definR" value="${customer.definR}" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_definL" class="control-label x85">清晰度L：</label>
                    <input type="text" name="definL" id="j_customer_definL" value="${customer.definL}" size="15">
                </td>
                <td>
                    <label for="j_customer_eyeControl" class="control-label x85">调节力：</label>
                    <input type="text" name="eyeControl" id="j_customer_eyeControl" value="${customer.eyeControl}"  size="15">
                </td>
                <td>
                    <label for="j_customer_eyeStrength" class="control-label x85">眼肌耐受力：</label>
                    <input type="text" name="eyeStrength" id="j_customer_eyeStrength" value="${customer.eyeStrength}" size="15">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label for="j_customer_hasDisease" class="control-label x85">有无眼疾或其他过敏史：</label>
                    <textarea name="hasDisease" id="j_customer_hasDisease" data-toggle="autoheight" cols="60" rows="1">${customer.hasDisease}</textarea>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
        <li><button type="submit" class="btn-default" data-icon="save">保存</button></li>
    </ul>
</div>