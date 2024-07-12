using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;
using System.IO;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BasicCode b = new BasicCode();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Insert into UserMaster (name,mobile,city,user_id,password,reg_date)values(@n,@e,@m,@c,@u,@p)";
        //cmd.Parameters.AddWithValue("@uid", b.generateID("uid", "UserMaster"));
        cmd.Parameters.AddWithValue("@n", txtname.Text);
        cmd.Parameters.AddWithValue("@e", txtemail.Text);
        cmd.Parameters.AddWithValue("@m", txtmob.Text);
        cmd.Parameters.AddWithValue("@c", txtcity.Text);
        cmd.Parameters.AddWithValue("@u", txtUsername.Text);
        cmd.Parameters.AddWithValue("@p", txtpass.Text);
       
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('Record Saved Successfully!!!!!!');</script>");
        }
    }
}

   