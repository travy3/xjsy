<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>

<div class="bjui-pageContent">
    <form action="${ctx}/cus/saveCusPlanInfo" class="pageForm" data-toggle="validate">
        <input name="planId" id="planId" type="hidden"/>
        <input name="customerId" value="${customerId}" type="hidden" />
        <table class="table table-bordered">
            <tbody>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">1.度数与裸眼视力不符：</label>
                </td>
                <td>
                    <input type="radio" name="a1" id="q1_choose1" data-toggle="icheck" value="5" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a1" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q2" class="control-label x200">2.相同度数下清晰度低：</label>
                </td>
                <td>
                    <input type="radio" name="a2" id="q2_choose1" data-toggle="icheck" value="5" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a2" id="q2_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q3" class="control-label x200">3.性格较活跃，注意力不太集中，不爱睡觉：</label>
                </td>
                <td>
                    <input type="radio" name="a3" id="q3_choose1" data-toggle="icheck" value="3" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a3" id="q3_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">4.爱头疼，入睡难，孩子从不睡午觉，晚上睡不安稳，爱做梦 ：</label>
                </td>
                <td>
                    <input type="radio" name="a4" id="q1_choose1" data-toggle="icheck" value="4" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a4" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">5.经常头懵、头沉，爱睡觉,但睡眠质量不好，多梦或睡不安稳（睡觉爱翻滚）：</label>
                </td>
                <td>
                    <input type="radio" name="a5" id="q1_choose1" data-toggle="icheck" value="5" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a5" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">6.眼睛发干、痒，爱揉眼睛 ：</label>
                </td>
                <td>
                    <input type="radio" name="a6" id="q1_choose1" data-toggle="icheck" value="2" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a6" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr><tr>
                <td>
                    <label for="q1" class="control-label x200">7.眼睛酸，想流泪 ：</label>
                </td>
                <td>
                    <input type="radio" name="a7" id="q1_choose1" data-toggle="icheck" value="3" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a7" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">8.眼睛里面发胀 ：</label>
                </td>
                <td>
                    <input type="radio" name="a8" id="q1_choose1" data-toggle="icheck" value="4" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a8" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">9.眼睛疼 ：</label>
                </td>
                <td>
                    <input type="radio" name="a9" id="q1_choose1" data-toggle="icheck" value="5" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a9" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">10.眼睛里面发热 ：</label>
                </td>
                <td>
                    <input type="radio" name="a10" id="q1_choose1" data-toggle="icheck" value="6" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a10" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">11.平时孩子看电视或玩电脑时有头晕、头疼、的表现 ：</label>
                </td>
                <td>
                    <input type="radio" name="a11" id="q1_choose1" data-toggle="icheck" value="4" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a11" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">12.坐车时有晕车现象 ：</label>
                </td>
                <td>
                    <input type="radio" name="a12" id="q1_choose1" data-toggle="icheck" value="3" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a12" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">13.平时有畏光情况吗？ ：</label>
                </td>
                <td>
                    <input type="radio" name="a13" id="q1_choose1" data-toggle="icheck" value="4" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a13" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">14.闪烁时眼睛有酸疼感 ：</label>
                </td>
                <td>
                    <input type="radio" name="a14" id="q1_choose1" data-toggle="icheck" value="4" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a14" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">15.画图时眼睛有酸疼感 ：</label>
                </td>
                <td>
                    <input type="radio" name="a15" id="q1_choose1" data-toggle="icheck" value="4" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a15" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">初次问诊分值 ：</label>
                </td>
                <td>
                    <input type="text" onfocus="sumPoint()" name="naireResult" id="naireResult" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">第一次评测结果分值 ：</label>
                </td>
                <td>
                    <input type="text" name="firstResult" id="firstResult" value=""  data-rule="required;number" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">第二次评测结果分值 ：</label>
                </td>
                <td>
                    <input type="text" name="seccondResult" id="seccondResult" value=""  data-rule="required;number" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">弱视/近视 ：</label>
                </td>
                <td>
                    <c:choose>
                        <c:when test="${customer.eyeType eq 1}">
                            <input type="radio" name="eyeType" id="q1_choose2" data-toggle="icheck" value="1" checked="checked" data-label="近视/远视/散光" disabled="disabled">
                            <input type="radio" name="eyeType" id="q1_choose1" data-toggle="icheck" value="2"  data-label="弱视&nbsp;&nbsp;" disabled="disabled">
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="eyeType" id="q1_choose2" data-toggle="icheck" value="1"  data-label="近视/远视/散光" disabled="disabled">
                            <input type="radio" name="eyeType" id="q1_choose1" data-toggle="icheck" value="2" checked="checked"  data-label="弱视&nbsp;&nbsp;" disabled="disabled">
                        </c:otherwise>
                    </c:choose>

                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">方案 ：</label>
                </td>
                <td>
                    <input type="text" name="planName" id="planName" value="" onfocus="getPlanResult()" readonly="readonly"/>
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
<script type="text/javascript">

    function sumPoint(){

        var sum = 0;

        for (var i = 1 ; i <=15 ; i++ ){
            if ($("input[name= 'a"+i+"']:checked").val()!=null){
                sum =parseInt(sum)+ parseInt($("input[name= 'a"+i+"']:checked").val());
            }
        }
        $("#naireResult").val(sum);
    }

    function getPlanResult(){

        var naireResult = $("#naireResult").val();
        var firstResult = $("#firstResult").val();
        var seccondResult = $("#seccondResult").val();

        var eyeType = $("input[name='eyeType']:checked").val();

        var planResult = 0;
        if (naireResult !=null && firstResult != null && seccondResult != null){
            planResult = parseInt(naireResult)+parseInt(firstResult)+parseInt(seccondResult);
        }

        $.getJSON("${ctx}/cus/cusPlanResult?planResult="+planResult+"&eyeType="+eyeType,function(data){
            $("#planName").val(data.name);
            $("#planId").val(data.id);
        });

    }
</script>