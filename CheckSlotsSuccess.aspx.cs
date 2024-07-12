using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //SqlCommand cmd = new SqlCommand();
        //con.Open();
        //cmd.Connection = con;
        //cmd.CommandText = "select * from SearchArea where area='"+Request.QueryString["aname"]+"'";

        //SqlDataReader dr = cmd.ExecuteReader();
        //if (dr.Read())
        //{
        //    lbltest.Text = dr.GetString(2);
        //}
        //con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       Response.Redirect("LocateParking.aspx");
    }
}