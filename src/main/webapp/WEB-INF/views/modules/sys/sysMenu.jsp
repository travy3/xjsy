<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <script type="text/javascript">
            $('#menuTable').datagrid({
                columns: [{name:'name', width:'150', label:'姓名'}, {name:'firstname', width:'120', label:'拼音姓'}, {name:'lastname', label:'拼音名'}],
                data: [{'name':'孙悟空','firstname':'Sun','lastname':'Wukong'},{'name':'罗宾汉','firstname':'Luo','lastname':'Binhan'},{'name':'美国队长','firstname':'Meiguo','lastname':'Duizhang'}]
            })
        </script>
    </head>
    <body>
        <div id="bjui-navtab" class="tabsPage">
            <!-- 工作区(navtab) -->
            <div class="tabsPageHeader">
                <div class="tabsPageHeaderContent">
                    <ul class="navtab-tab nav nav-tabs">
                        <li class="active"><a href="javascript:;"><span><i class="fa fa-home"></i> #maintab#</span></a></li>
                    </ul>
                </div>
                <div class="tabsLeft"><i class="fa fa-angle-double-left"></i></div>
                <div class="tabsRight"><i class="fa fa-angle-double-right"></i></div>
                <div class="tabsMore"><i class="fa fa-angle-double-down"></i></div>
            </div>
            <ul class="tabsMoreList">
                <li><a href="javascript:;">#maintab#</a></li>
            </ul>
            <div class="navtab-panel tabsPageContent">
                <div class="navtabPage unitBox">
                    <div class="bjui-pageContent " style="background:#FFF;">
asd
                        <table id="menuTable" class="table table-bordered table-striped table-hover">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>