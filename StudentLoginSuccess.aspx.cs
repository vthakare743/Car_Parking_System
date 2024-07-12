using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class RegistrationSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        
        string username = Request.QueryString["txtUsername"].ToString();
        string pwd = Request.QueryString["txtPassword"].ToString();
        

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from StudentMaster  where username='"+username+"' and pwd='"+pwd+"'";
       
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("sid", dr.GetInt32(0));
            Session.Add("email", dr.GetString(2));
            Session.Add("sname", dr.GetString(1));
            Session.Add("year", dr.GetString(3));
            Session.Add("category", dr.GetString(5));
            
            Response.Redirect("Student/StudentDefault.aspx");
        }
        else
        {
            Response.Write("<script>alert('User Name and Password are not Valid!');</script>");
            Response.Write("<script>window.location.href='StudentLogin.aspx';</script>");
        }
    }
}