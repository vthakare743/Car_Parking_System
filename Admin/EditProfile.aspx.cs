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

public partial class Admin_EditProfile : System.Web.UI.Page
{
   

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


            SqlConnection con1;
            SqlCommand cmd1;
            //for database connection
            con1 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            cmd1 = new SqlCommand();
            con1.Open();
            // for select data
            cmd1.CommandText = "SELECT [pname],[area],[halfday],[fullday],[TotalSlots] from ParkingMaster where pid = @pid ";
            cmd1.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
            cmd1.Connection = con1;
            SqlDataReader dr1 = cmd1.ExecuteReader();

            if (dr1.Read())
            {
                txtPname.Text = dr1.GetValue(0).ToString();
                ddlArea.Text = dr1.GetString(1).ToString();
                //chkArea.Text = dr.GetString(2).ToString();
                txtHalfDay.Text = dr1.GetString(2).ToString();
                txtFullDayRate.Text = dr1.GetString(3).ToString();
                txtslot.Text = dr1.GetString(4).ToString();

            }
            con1.Close();






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

        try
        {
            con.Open();

            // Check if Request.QueryString["pid"] is not null or empty
            if (!string.IsNullOrEmpty(Request.QueryString["pid"]))
            {
                cmd.CommandText = "UPDATE ParkingMaster Set pname = @pname, area = @area, narea = @narea, halfday = @halfday, fullday = @fullday, TotalSlots = @slots where pid = @pid";
                cmd.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
                cmd.Parameters.AddWithValue("@pname", txtPname.Text);
                cmd.Parameters.AddWithValue("@area", ddlArea.SelectedItem.ToString()); // Check for null
                cmd.Parameters.AddWithValue("@narea", str);
                cmd.Parameters.AddWithValue("@halfday", txtHalfDay.Text);
                cmd.Parameters.AddWithValue("@fullday", txtFullDayRate.Text);
                cmd.Parameters.AddWithValue("@slots", txtslot.Text);
                cmd.Connection = con;

                int n = cmd.ExecuteNonQuery();

                if (n > 0)
                {
                    Response.Write("<script>alert('Parking details updated successfully');</script>");
                    Response.Write("<script>window.location.href='AdminDefault.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('No records updated');</script>");
                }
            }
            else
            {
                // Handle the case where pid is null or empty
                Response.Write("<script>alert('Invalid or missing parking ID');</script>");
            }
        }
        catch (SqlException sqlEx)
        {
            // Log or display the SQL exception message
            Response.Write("<script>alert('SQL Error updating parking details: " + sqlEx.Message + "');</script>");
        }
        catch (Exception ex)
        {
            // Log or display the general exception message
            Response.Write("<script>alert('Error updating parking details: " + ex.Message + "');</script>");
        }
        finally
        {
            con.Close();
        }

    }
    }
