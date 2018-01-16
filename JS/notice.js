/* 二级菜单通知公告js */
window.addEventListener("load", init, false);
function init() {
    $.ajax({
        type: "POST",
        url: "../getnoticelist.ashx",
        async: false,
        dateType: "json",
        success: function (data) {
            var noticegroup = eval("(" + data + ")");
            var noticegroup = noticegroup.Item;
            var $collegeul = $("#noticeul");
            var noticegecontent = "";
            for (var i = 0; i < noticegroup.length; i++) {
                noticegecontent = noticegecontent + '<li><a href="../News/noticeinformation.aspx?id= ' + noticegroup[i].ID + '"><p>' + noticegroup[i].Title + '</p></a><em>  ' + noticegroup[i].Releasetime + '</em></li>';

            }
            $collegeul.append(noticegecontent);

        },
        error: function (e) {
            alert(e);
        }
    });

}