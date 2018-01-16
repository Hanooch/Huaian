/* 二级菜单研究院要闻js */
window.addEventListener("load", init, false);
function init() {
    $.ajax({
        type: "POST",
        url: "../getnewslist.ashx",
        async: false,
        dateType: "json",
        success: function (data) {
            var collegenewsgroup = eval("(" + data + ")");
            var collegenewsgroup = collegenewsgroup.Item;
            var $collegeul = $("#collegenewsul");
            var collegecontent = "";
            for (var i = 0; i < collegenewsgroup.length; i++) {
                collegecontent = collegecontent + '<li><a href="../News/newsinformation.aspx?id= ' + collegenewsgroup[i].ID + '"><p>' + collegenewsgroup[i].Title + '</p></a><em>  ' + collegenewsgroup[i].Releasetime + '</em></li>';

            }
            $collegeul.append(collegecontent);

        },
        error: function (e) {
            alert(e);
        }
    });

}