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
            //lblParking.Text = Request.QueryString["pname"];

            lblAmount.Text = Session["ammount"].ToString();
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();

        try
        {
            cmd.CommandText = "insert into BookMaster(pname,customer,mode,ammount,bdate,carno)values(@pname,@customer,@mode,@ammount,@bdate,@carno)";
            cmd.Parameters.AddWithValue("@pname", Session["pname"].ToString());
            cmd.Parameters.AddWithValue("@customer", Session["customer"].ToString());
            cmd.Parameters.AddWithValue("@mode", ((ListItem)Session["slots"]).Value.ToString());
            cmd.Parameters.AddWithValue("@ammount", Session["ammount"].ToString());
            cmd.Parameters.AddWithValue("@bdate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@carno", Session["carno"].ToString());
            Session["bdate"] = DateTime.Now.ToShortDateString();
            cmd.Connection = con;
            int n = cmd.ExecuteNonQuery();

            if (n > 0)
            {
                // Your existing code for successful booking...

                // Calculate the remaining slots after the booking
                int bookedSlots = 1; // Adjust accordingly if each booking reserves more than 1 slot
                int totalSlots = GetTotalSlots(con, Session["pname"].ToString());
                int bookedUserCount = GetBookedUserCount(con, Session["pname"].ToString());
                int remainingSlots = totalSlots - bookedUserCount;

                // Update ParkingMaster table with new remaining slots
                UpdateRemainingSlots(con, Session["pname"].ToString(), remainingSlots);

                // Display a JavaScript alert for successful booking
                ScriptManager.RegisterStartupScript(this, GetType(), "BookingSuccess", "alert('Booking successful');", true);

            }
            else
            {
                // Your existing code for unsuccessful booking...
            }
        }
        catch (Exception ex)
        {
            // Handle exceptions
        }
        finally
        {
            con.Close();
        }
    }

    // Placeholder method for retrieving total slots from the database
    private int GetTotalSlots(SqlConnection connection, string pname)
    {
        using (SqlCommand cmd = new SqlCommand("SELECT TotalSlots FROM ParkingMaster WHERE pname = @pname", connection))
        {
            cmd.Parameters.AddWithValue("@pname", pname);
            object result = cmd.ExecuteScalar();

            return (result != null) ? Convert.ToInt32(result) : 0;
        }
    }

    // Placeholder method for retrieving the number of booked users from the database
    private int GetBookedUserCount(SqlConnection connection, string pname)
    {
        using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM BookMaster WHERE pname = @pname", connection))
        {
            cmd.Parameters.AddWithValue("@pname", pname);
            object result = cmd.ExecuteScalar();

            return (result != null) ? Convert.ToInt32(result) : 0;
        }
    }

    // Method for updating remaining slots in the database
    private void UpdateRemainingSlots(SqlConnection connection, string pname, int remainingSlots)
    {
        using (SqlCommand cmd = new SqlCommand("UPDATE ParkingMaster SET RemainingSlots = @remainingSlots WHERE pname = @pname", connection))
        {
            cmd.Parameters.AddWithValue("@remainingSlots", remainingSlots);
            cmd.Parameters.AddWithValue("@pname", pname);
            cmd.ExecuteNonQuery();
        }
        Response.Redirect(string.Format("Parking_Receipt.aspx?pname={0}&customer={1}&slots={2}&ammount={3}&carno={4}&bdate={5}",
     Session["pname"], Session["customer"], Session["slots"], Session["ammount"], Session["carno"], Session["bdate"]));
    }

    

}



