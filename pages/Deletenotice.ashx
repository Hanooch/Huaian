<%@ WebHandler Language="C#" Class="Deltenotice" %>

using System;
using System.Web;

public class Deltenotice : IHttpHandler {
    private DataLayer sqlOperation = new DataLayer("sqlhuaian");
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write(delete(context));
        sqlOperation.Close();
        sqlOperation.Dispose();
        sqlOperation = null;
    }

    public bool IsReusable {
        get {
            return false;
        }
    }
    public string delete(HttpContext context) {
        string id = context.Request["ID"];
        string sqlCommand = "DELETE FROM notice WHERE ID=@id";
        sqlOperation.AddParameterWithValue("@id", id);
        sqlOperation.ExecuteNonQuery(sqlCommand);
        return "success";
    }
}