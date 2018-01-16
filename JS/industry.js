/* 二级菜单行业动态js */
window.addEventListener("load", init, false);
function init() {
    $.ajax({
        type: "POST",
        url: "../getindustrylist.ashx",
        async: false,
        dateType: "json",
        success: function (data) {
            var industrygroup = eval("(" + data + ")");
            var industrygroup = industrygroup.Item;
            var $collegeul = $("#industryul");
            var industrycontent = "";
            for (var i = 0; i < industrygroup.length; i++) {
                industrycontent = industrycontent + '<li><a href="../News/industryinformation.aspx?id= ' + industrygroup[i].ID + '"><p>' + industrygroup[i].Title + '</p></a><em>  ' + industrygroup[i].Releasetime + '</em></li>';

            }
            $collegeul.append(industrycontent);

        },
        error: function (e) {
            alert(e);
        }
    });

}