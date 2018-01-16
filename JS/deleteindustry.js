// JavaScript source code
/* 行业动态修改界面js */
window.addEventListener("load", init, false);
function init() {
    $.ajax({
        type: "POST",
        url: "getindustrylist.ashx",
        async: false,
        dateType: "json",
        success: function (data) {
            var industrygroup = eval("(" + data + ")");
            var industrygroup = industrygroup.Item;
            var $industryul = $("#deleteindustrysul");
            var industrycontent = "";
            for (var i = 0; i < industrygroup.length; i++) {
                industrycontent = industrycontent + '<li><p>' + industrygroup[i].Title + '</p><em>' + industrygroup[i].Releasetime + '</em><span> </span><a href="" onclick="del(' + industrygroup[i].ID + ')">删除</a></li>';
            }
            $industryul.append(industrycontent);
        },
        error: function (e) {
            alert(e);
        }
    });
}
function del(id) {
    $.ajax({
        type: "POST",
        url: "Deleteindustry.ashx",
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