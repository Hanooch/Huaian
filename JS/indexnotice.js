/* 首页通知公告js */
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
            var $ul = $("#indexnoticeul");
            var noticecontent = "";
            for (var i = 0; i < noticegroup.length; i++) {
                noticecontent = noticecontent + '<li><a href="News/noticeinformation.aspx?id= ' + noticegroup[i].ID + '"><p>' + noticegroup[i].Title + '</p></a><em>  ' + noticegroup[i].Releasetime + '</em></li>';

            }
            $ul.append(noticecontent);
        },
        error: function (e) {
            alert(e);
        }
    });

}