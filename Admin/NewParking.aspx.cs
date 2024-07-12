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

public partial class Registration : System.Web.UI.Page

{
    SqlConnection con;
    SqlCommand cmd;

    BasicCode b = new BasicCode();
    int num = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            ddlArea.Items.Clear();
            ddlArea.Items.Add("Select Area");
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select distinct area from SearchArea";

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlArea.Items.Add(dr.GetString(0));
                chkArea.Items.Add(dr.GetString(0));
            }
            con.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "";

        for (int i = 0; i < chkArea.Items.Count; i++)
        {
            if (chkArea.Items[i].Selected == true)// getting selected value from CheckBox List  
            {
                str += chkArea.Items[i].Text + " ,";
            }


        }  


        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();

        cmd.CommandText = "insert into ParkingMaster(pname,area,narea,halfday,fullday,TotalSlots)values(@pname,@area,@narea,@halfday,@fullday,@slots)";
        cmd.Parameters.AddWithValue("@pname", txtPname.Text);
        cmd.Parameters.AddWithValue("@area", ddlArea.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@narea", str);
        cmd.Parameters.AddWithValue("@halfday", txtHalfDay.Text);
        cmd.Parameters.AddWithValue("@fullday", txtFullDayRate.Text);
        cmd.Parameters.AddWithValue("@slots", txtslot.Text);

        Session.Add("pname", txtPname.Text);

        
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            Response.Write("<script>alert('New Parking Add successfully');</script>");
            Response.Write("<script>window.location.href='AdminDefault.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Check All  Data..try again!!');</script>");
            Response.Write("<script>window.location.href='AddFees.aspx';</script>");
        }


    }
}