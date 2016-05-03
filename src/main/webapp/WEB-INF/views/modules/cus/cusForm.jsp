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
    <form action="${ctx}/cus/0/add" id="j_custom_form" data-toggle="validate" data-alertmsg="false">
        <input type="hidden" name="id" value="">
        <table class="table table-condensed table-hover" width="100%">
            <tbody>
            <tr>
                <%--<td>--%>
                    <%--<label for="j_custom_issuedate" class="control-label x85">注册日期：</label>--%>
                    <%--<input type="text" name="custom.issuedate" id="j_custom_issuedate" value="2014-10-01" data-toggle="datepicker" data-rule="required;date" size="15">--%>
                <%--</td>--%>
                <td>
                    <label for="j_customer_duration" class="control-label x85">所属阶段：</label>
                    <select name="duration" id="j_customer_duration" data-toggle="selectpicker" data-rule="required">
                        <option value="0">试用期</option>
                        <option value="1">治疗期</option>
                        <option value="2">保健期</option>
                    </select>
                </td>
                <td>
                    <label for="j_customer_name" class="control-label x85">客户姓名：</label>
                    <input type="text" name="name" id="j_customer_name" value="${customer.name}" data-rule="required" size="15">
                </td>
                <%--<td>--%>
                    <%--<label for="j_custom_color" class="control-label x85">表示颜色：</label>--%>
                    <%--<input type="text" name="custom.color" id="j_custom_color" value="" data-toggle="colorpicker" data-bgcolor="true" size="15" readonly>--%>
                    <%--<a href="javascript:;" title="清除颜色" data-toggle="clearcolor" data-target="#j_custom_color">清除颜色</a>--%>
                <%--</td>--%>
                <td colspan="2">
                    <label for="j_customer_school" class="control-label x85">学校：</label>
                    <input type="text" name="school" id="j_customer_school" value="${customer.school}" size="30">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="" class="control-label x85">性别：</label>
                    <c:choose>
                        <c:when test="${1 eq customer.sex}">
                            <input type="radio" name="sex" id="j_customer_sex1" data-toggle="icheck" value="1" data-rule="checked" data-label="男&nbsp;&nbsp;">
                            <input type="radio" name="sex" id="j_customer_sex2" data-toggle="icheck" value="0" data-label="女">
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="sex" id="j_customer_sex1" data-toggle="icheck" value="1"  data-label="男&nbsp;&nbsp;">
                            <input type="radio" name="sex" id="j_customer_sex2" data-toggle="icheck" value="0" data-rule="checked" data-label="女">
                        </c:otherwise>
                    </c:choose>

                    <%--<input type="radio" name="sex" id="j_customer_sex1" data-toggle="icheck" value="1" data-rule="checked" data-label="男&nbsp;&nbsp;">--%>
                    <%--<input type="radio" name="sex" id="j_customer_sex2" data-toggle="icheck" value="0" data-label="女">--%>
                </td>
                <td>
                    <label for="j_customer_birthday" class="control-label x85">出生日期：</label>
                    <input type="text" name="birthday" id="j_customer_birthday" value="1980-08-08" data-toggle="datepicker" data-rule="required;date" size="15">
                </td>
                <td>
                    <label for="j_customer_eyeglassesSightR" class="control-label x85">戴镜度数R：</label>
                    <input type="text" name="eyeglassesSightR" id="j_customer_eyeglassesSightR" value="" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_eyeglassesSightL" class="control-label x85">戴镜度数L：</label>
                    <input type="text" name="eyeglassesSightL" id="j_customer_eyeglassesSightL" value="" data-rule="required" size="15">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label for="j_customer_telephone" class="control-label x85">手机：</label>
                    <input type="text" name="telephone" id="j_customer_telephone" value="" data-rule="required;mobile" size="30">
                </td>
                <td>
                    <label for="j_customer_nakedEyeSightR" class="control-label x85">裸眼视力R：</label>
                    <input type="text" name="nakedEyeSightR" id="j_customer_nakedEyeSightR" value="" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_nakedEyeSightL" class="control-label x85">裸眼视力L：</label>
                    <input type="text" name="nakedEyeSightL" id="j_customer_nakedEyeSightL" value="" data-rule="required" size="15">
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <label for="j_customer_glassesTime" class="control-label x85">带镜史：</label>
                    <input type="text" name="glassesTime" id="j_customer_glassesTime" value="" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_address" class="control-label x85">家庭住址：</label>
                    <input type="text" name="address" id="j_customer_address" value="" size="15">
                </td>
                <td>
                    <label for="j_customer_recoverEyeSightR" class="control-label x85">恢复视力R：</label>
                    <input type="text" name="recoverEyeSightR" id="j_customer_recoverEyeSightR" value=""  data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_recoverEyeSightL" class="control-label x85">恢复视力L：</label>
                    <input type="text" name="recoverEyeSightL" id="j_customer_recoverEyeSightL" value="" data-rule="required" size="15">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="j_customer_definR" class="control-label x85">清晰度R：</label>
                    <input type="text" name="definR" id="j_customer_definR" value="" data-rule="required" size="15">
                </td>
                <td>
                    <label for="j_customer_definL" class="control-label x85">清晰度L：</label>
                    <input type="text" name="definL" id="j_customer_definL" value="" size="15">
                </td>
                <td>
                    <label for="j_customer_eyeControl" class="control-label x85">调节力：</label>
                    <input type="text" name="eyeControl" id="j_customer_eyeControl" value=""  size="15">
                </td>
                <td>
                    <label for="j_customer_eyeStrength" class="control-label x85">眼肌耐受力：</label>
                    <input type="text" name="eyeStrength" id="j_customer_eyeStrength" value="" size="15">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label for="j_customer_hasDisease" class="control-label x85">有无眼疾或其他过敏史：</label>
                    <textarea name="hasDisease" id="j_customer_hasDisease" data-toggle="autoheight" cols="60" rows="1"></textarea>
                </td>
                <%--<td colspan="2">--%>
                    <%--<label for="j_customer_hasDisease" class="control-label x85">有无眼疾或其他过敏史：</label>--%>
                    <%--<textarea name="customer.hasDisease" id="j_customer_hasDisease" data-toggle="autoheight" cols="60" rows="1"></textarea>--%>
                <%--</td>--%>
            </tr>
            <%--<tr>--%>
                <%--<td colspan="4">--%>
                    <%--<label for="j_custom_content" class="control-label x85">内容编辑：</label>--%>
                    <%--<div style="display: inline-block; vertical-align: middle;">--%>
                            <%--<textarea name="content" id="j_form_content" class="j-content" style="width: 700px;" data-toggle="kindeditor" data-minheight="200">--%>
                                <%--<p><strong>HTML编辑器KindEditor：</strong></p>--%>
                                <%--<p><strong>已优化：</strong></p>--%>
                                <%--<ul>--%>
                                    <%--<li>深度清理html标记</li>--%>
                                    <%--<li>上传附件后，自动获取文件名（需要返回JSON属性"origin_name"）</li>--%>
                                    <%--<li>修改一键排版为段落前空两个全角空格，主要考虑到某些行需要顶格时直接删除空格即可。</li>--%>
                                <%--</ul>--%>
                                <%--<p><br>更多参数请参见：<a href="http://kindeditor.net/" target="_blank">http://kindeditor.net/</a></p>--%>
                            <%--</textarea>--%>
                    <%--</div>--%>
                <%--</td>--%>
            <%--</tr>--%>
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