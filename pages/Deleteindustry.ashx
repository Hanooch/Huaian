<%@ WebHandler Language="C#" Class="Deleteindustry" %>

using System;
using System.Web;

public class Deleteindustry : IHttpHandler {
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
        string sqlCommand = "DELETE FROM industrynews WHERE ID=@id";
        sqlOperation.AddParameterWithValue("@id", id);
            sqlOperation.ExecuteNonQuery(sqlCommand);
            return "success";
    }
}