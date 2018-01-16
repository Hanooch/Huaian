// JavaScript source code
/* 研究院要闻修改界面js */
window.addEventListener("load", init, false);
function init() {
    $.ajax({
        type: "POST",
        url: "getnewslist.ashx",
        async: false,
        dateType: "json",
        success: function (data) {
            var collegenewsgroup = eval("(" + data + ")");
            var collegenewsgroup = collegenewsgroup.Item;
            var $collegeul = $("#deletecollegenewsul");
            var collegecontent = "";
            for (var i = 0; i < collegenewsgroup.length; i++) {
                collegecontent = collegecontent + '<li><p>' + collegenewsgroup[i].Title + '</p><em>  ' + collegenewsgroup[i].Releasetime + '</em><span>  </span><a href=" " onclick="del(' + collegenewsgroup[i].ID + ')">删除</a></li>';

            }
            $collegeul.append(collegecontent);

        },
        error: function (e) {
            alert(e);
        }
    });
}
    function del(id) {
        $.ajax({
            type: "POST",
            url: "Deletecollegenews.ashx",
            async: false,
            data:{ID: id},
            dateType: "json",
            success: function(data) {
                if (data=="success") {
                    alert('删除成功');
                    window.location.reload();
                } else {
                    alert('删除失败，请稍后重试');
                    return false;
                }
            }
        })
    }
