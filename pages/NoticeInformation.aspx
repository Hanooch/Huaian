<!--通知公告发布界面-->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NoticeInformation.aspx.cs" Inherits="huaianyanjiuyuan_pages_Information" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="editor/themes/default/default.css" />
	<script charset="utf-8" src="editor/examples/jquery.js"></script>
	<script charset="utf-8" src="editor/kindeditor-min.js"></script>
	<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
    <script>
        $(function () {
            var editor = KindEditor.create('textarea[name="mainText"]', {
                uploadJson: 'editor/asp.net/upload_json.ashx',
                fileManagerJson: 'editor/asp.net/file_manager_json.ashx',
                allowFileManager: true
            })
        });
	</script>
    <title>通知公告发布</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
            <div>
                <h1>通知公告发布</h1>
            </div>
        <div>
            <div>
                <form id="newsForm" action="NoticeInformation.aspx" method="post" runat="server">
                    <input id="postName" name="postNews" type="hidden" value="false" />
                    <div class="form-group" style="text-align:center;">
                        <p>标题</p>
                        <input id="title" type="text" class="form-control isEmpty title text" name="title"/>
                        <p id="titleError" style="margin-top:3px;margin-bottom:0px;"></p>
                        <asp:RadioButtonList style="margin:  auto;" ID="rb1" runat="server">
                            <asp:ListItem Text="置顶" Value="1"></asp:ListItem>
                            <asp:ListItem Text="不置顶" Value="0" Selected="True"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group" style="text-align:center;">
                        <p>正文</p>
                        <textarea id="mainText" cols="40" class="form-control isEmpty text" name="mainText" rows="25" style="width:100%"></textarea>
                    </div>
                    <div class="form-group">
                        <input id="selectedRole" type="hidden" value="" name="selectedRole" />
                        <input type="submit" class="btn btn-primary btn-lg btn-block" value="发布" style="margin:auto;" />
                    </div>
                </form>
            </div>
        </div>

<!-- jQuery 2.2.3 -->
<script src="Assets/js/jquery-1.8.3.min.js"></script>
<script src="../JS/noticeinformation.js"></script>
</body>
</html>
