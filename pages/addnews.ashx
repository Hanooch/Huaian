<%@ WebHandler Language="C#" Class="addnews" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public class addnews : IHttpHandler {
    private DataLayer sqlOperation = new DataLayer("sqlhuaian");
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write(AddNews(context));
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
    public string AddNews(HttpContext context)
    {

        string Title = context.Request.Form["title"];
        string Content = context.Request.Form["mainText"];
        //将信息写入数据库，并返回是否成功
        string strSqlCommand = "INSERT INTO news(Title,Content,Releasetime) " +
                                "VALUES(@Title,@Content,@Releasetime)";
        sqlOperation.AddParameterWithValue("@Title", Title);
        sqlOperation.AddParameterWithValue("@Content", Content);
        sqlOperation.AddParameterWithValue("@Releasetime", DateTime.Now);
        int intSuccess = sqlOperation.ExecuteNonQuery(strSqlCommand);


        return (intSuccess > 0) ? "true" : "false";
    }

}