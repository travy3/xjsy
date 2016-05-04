<%@page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<script type="text/javascript">

</script>
<div class="bjui-pageContent">
    <form action="${ctx}/cus//save" class="pageForm" data-toggle="validate">
        <input name="id" value="${plan.id}" type="hidden"/>
        <table class="table table-bordered">
            <tbody>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">度数与裸眼视力不符：</label>
                </td>
                <td>
                    <input type="radio" name="a1" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a1" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q2" class="control-label x200">相同度数下清晰度低：</label>
                </td>
                <td>
                    <input type="radio" name="a2" id="q2_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a2" id="q2_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q3" class="control-label x200">性格较活跃，注意力不太集中，不爱睡觉：</label>
                </td>
                <td>
                    <input type="radio" name="a3" id="q3_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a3" id="q3_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">爱头疼，入睡难，孩子从不睡午觉，晚上睡不安稳，爱做梦 ：</label>
                </td>
                <td>
                    <input type="radio" name="a4" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a4" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">经常头懵、头沉，爱睡觉,但睡眠质量不好，多梦或睡不安稳（睡觉爱翻滚）：</label>
                </td>
                <td>
                    <input type="radio" name="a5" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a5" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">眼睛发干、痒，爱揉眼睛 ：</label>
                </td>
                <td>
                    <input type="radio" name="a6" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a6" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr><tr>
                <td>
                    <label for="q1" class="control-label x200">眼睛酸，想流泪 ：</label>
                </td>
                <td>
                    <input type="radio" name="a7" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a7" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">眼睛里面发胀 ：</label>
                </td>
                <td>
                    <input type="radio" name="a8" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a8" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">眼睛疼 ：</label>
                </td>
                <td>
                    <input type="radio" name="a9" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a9" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">眼睛里面发热 ：</label>
                </td>
                <td>
                    <input type="radio" name="a10" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a10" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">平时孩子看电视或玩电脑时有头晕、头疼、的表现 ：</label>
                </td>
                <td>
                    <input type="radio" name="a11" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a11" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">坐车时有晕车现象 ：</label>
                </td>
                <td>
                    <input type="radio" name="a12" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a12" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">平时有畏光情况吗？ ：</label>
                </td>
                <td>
                    <input type="radio" name="a13" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a13" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200">闪烁时眼睛有酸疼感 ：</label>
                </td>
                <td>
                    <input type="radio" name="a14" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a14" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="q1" class="control-label x200"> 画图时眼睛有酸疼感 ：</label>
                </td>
                <td>
                    <input type="radio" name="a15" id="q1_choose1" data-toggle="icheck" value="1" data-label="是&nbsp;&nbsp;">
                    <input type="radio" name="a15" id="q1_choose2" data-toggle="icheck" value="0" data-label="否">
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