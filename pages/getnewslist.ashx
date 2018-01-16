<%@ WebHandler Language="C#" Class="getnewslist" %>

using System;
using System.Web;
using System.Text;

public class getnewslist : IHttpHandler {
    DataLayer sqlOperation = new DataLayer("sqlhuaian");
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string backString = getprinItem();
        sqlOperation.Close();
        sqlOperation.Dispose();
        context.Response.Write(backString);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    private string getprinItem()
    {

        string countcommand = "select count(*) from news";
        int count = int.Parse(sqlOperation.ExecuteScalar(countcommand));
        string newscommand = "select ID,Title,Content,Releasetime from news order by isTop desc,Releasetime desc";
        MySql.Data.MySqlClient.MySqlDataReader reader = sqlOperation.ExecuteReader(newscommand);
        StringBuilder backText = new StringBuilder("{\"Item\":[");
        int temp = 0;
        while(reader.Read())
        {
            backText.Append("{\"ID\":\"" + reader["ID"].ToString() + "\",\"Title\":\"" + reader["Title"].ToString() + "\",\"Releasetime\":\"" +Convert.ToDateTime ( reader["Releasetime"].ToString()).ToString ("yyyy-MM-dd") + "\"}");

            if (temp < count-1)
            {
                backText.Append(",");
            }
            temp = temp + 1;
            
        }
       
        backText.Append("]}");
        return backText.ToString();
    }

    
    
    
}