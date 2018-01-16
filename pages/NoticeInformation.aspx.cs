using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class huaianyanjiuyuan_pages_Information : System.Web.UI.Page
{
    private DataLayer sqlOperation = new DataLayer("sqlhuaian");
    protected void Page_Load(object sender, EventArgs e)
    {
        string ispostback = Request.Form["postNews"];
        if (IsPostBack && ispostback != null && ispostback == "true")
        {
            if (AddNews())
            {
                MessageBox.Message("发布成功！");
            }
        }


    }
    /// <summary>
    /// 消息发布到数据库
    /// </summary>
    /// <returns></returns>
    private Boolean AddNews()
    {
        
        string Title = Request.Form["title"];
        string Content = Request.Form["mainText"];
        string IsTop = rb1.SelectedValue;
        //将信息写入数据库，并返回是否成功
        string strSqlCommand = "INSERT INTO notice(Title,Content,Releasetime,IsTop) " +
                                "VALUES(@Title,@Content,@Releasetime,@IsTop)";
        sqlOperation.AddParameterWithValue("@Title", Title);
        sqlOperation.AddParameterWithValue("@Content", Content);
        sqlOperation.AddParameterWithValue("@Releasetime", DateTime.Now);
        sqlOperation.AddParameterWithValue("@IsTop", IsTop);
        int intSuccess = sqlOperation.ExecuteNonQuery(strSqlCommand);
        return (intSuccess > 0) ? true : false;
    }
}