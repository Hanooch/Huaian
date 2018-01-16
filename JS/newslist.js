/* 首页研究院要闻js */
window.addEventListener("load", init, false);
function init() {
    $.ajax({
        type: "POST",
        url: "getnewslist.ashx",
        async: false,
        dateType: "json",
        success: function (data) {
            var newsgroup = eval("(" + data + ")");
            var newsgroup = newsgroup.Item;
            var $ul = $("#newsul");
            var content = "";
            for (var i =0; i < newsgroup.length; i++) {
                content = content + '<li><a href="News/newsinformation.aspx?id= ' + newsgroup[i].ID + '"><p>' + newsgroup[i].Title + '</p></a><em>  ' + newsgroup[i].Releasetime + '</em></li>';
               
            }
            $ul.append(content);
        },
        error: function (e) {
            alert(e);
        }
    });

}