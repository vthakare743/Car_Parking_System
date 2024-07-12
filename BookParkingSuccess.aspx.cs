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
        if (!IsPostBack)
        {
            lblParking.Text = Request.QueryString["pname"];

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select halfday,fullday from ParkingMaster where pname='"+lblParking.Text+"'";

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblHalf.Text = "Half Day :" + dr.GetString(0) + " Rs.";
                lblFull.Text = "Full Day :" + dr.GetString(1) + " Rs.";
                hfhalf.Value = dr.GetString(0);
                hffull.Value = dr.GetString(1);
                

            }
            con.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Add("slots", ddlSlots.SelectedItem);
        Session.Add("pname", lblParking.Text);
        Session.Add("customer", txtCustomer.Text);
        Session.Add("carno", txtCarNo.Text);

        if (ddlSlots.SelectedItem.ToString() == "Half Day")
            Session.Add("ammount", hfhalf.Value);
        else
            Session.Add("ammount", hffull.Value);

        Response.Redirect("PaymentGatway.aspx");
    }
}