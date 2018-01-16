using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_Infodescribe : System.Web.UI.Page
{
    private DataLayer sqlOperation = new DataLayer("sqlhuaian");//数据库操作类
    protected void Page_Load(object sender, EventArgs e)
    {
      
        string id = Request.QueryString["ID"];
        string sqlCommand = "SELECT Title,Content,Releasetime from news where ID=@id";
        sqlOperation.AddParameterWithValue("@id", id);
        MySql.Data.MySqlClient.MySqlDataReader reader = sqlOperation.ExecuteReader(sqlCommand);

        if (reader.Read())
        {
            DateTime date = Convert.ToDateTime(reader["Releasetime"].ToString());
            string day = date.Year.ToString() + "-" + date.Month.ToString() + "-" + date.Day.ToString();
            this.Label3.Text = reader["Title"].ToString();
            this.Label2.Text = "发布时间:" + day + "&nbsp;&nbsp;&nbsp;&nbsp";
            this.Label1.Text = reader["Content"].ToString();
        }
    }
   

}