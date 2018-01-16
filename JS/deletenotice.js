// JavaScript source code
/* 通知公告修改界面js */
window.addEventListener("load", init, false);
function init() {
    $.ajax({
        type: "POST",
        url: "getnoticelist.ashx",
        async: false,
        dateType: "json",
        success: function (data) {
            var noticegroup = eval("(" + data + ")");
            var noticegroup = noticegroup.Item;
            var $noticeul = $("#deletenoticeul");
            var noticecontent = "";
            for (var i = 0; i < noticegroup.length; i++) {
                noticecontent = noticecontent + '<li><p>' + noticegroup[i].Title + '</p><em>' + noticegroup[i].Releasetime + '</em><span> </span> <a href="" onclick="del(' + noticegroup[i].ID + ')">删除</a></li>';
            }
            $noticeul.append(noticecontent);
        },
        error: function (e) {
            alert(e);
        }
    });

}
function del(id) {
    $.ajax({
        type: "POST",
        url:" Deletenotice.ashx",
        async: false,
        data: { ID: id },
        dateType: "json",
        success: function (data) {
            if (data == "success") {
                alert('删除成功');
                window.location.reload();
            }
            else {
                alert('删除失败，请稍后重试');
                return false;
            }
        }
    })

}