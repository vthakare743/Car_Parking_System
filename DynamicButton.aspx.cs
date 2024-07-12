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




public partial class DynamicButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (!IsPostBack)
        //{
        //    // Call a method to create buttons
        //    CreateButtons();
        //}

        CreateButtons();
    }
    private void CreateButtons()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "SELECT TotalSlots FROM ParkingMaster where  pname = @pname ";
        cmd.Parameters.AddWithValue("@pname", Request.QueryString["pname"]);
        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        var p = Convert.ToInt32(obj);
        con.Close();
        //var p = Convert.ToInt32(Session["TotalSlots"]);
        //cmd.Parameters.AddWithValue("@TotalSlots", Request.QueryString["TotalSlots"]);

        //var p = Convert.ToInt32(Request.QueryString["TotalSlots"]);
        for (int i = 1; i <= p; i++)
        {
            // Create a new Button control
            Button dynamicButton = new Button();
            dynamicButton.ID = "btnDynamic" + i;
            dynamicButton.Text = "P " + i;
            dynamicButton.Click += new EventHandler(btnDynamic_Click);

            // Set the background color
            dynamicButton.BackColor = System.Drawing.Color.LightBlue;

            // Attach the click event handler
            dynamicButton.Click += new EventHandler(DynamicButton_Click);

            
            // Add the button to the Placeholder control

            ButtonPlace.Controls.Add(dynamicButton);



            // Set style to add space between buttons
            dynamicButton.Style.Add("margin", "5px"); // You can use margin or padding

        }


    }


    protected void btnDynamic_Click(object sender, EventArgs e)
    {
        //Button clickedButton = (Button)sender;

    }

    protected void DynamicButton_Click(object sender, EventArgs e)
    {
        Button clickedButton = (Button)sender;
        string buttonID = clickedButton.ID;
        //clickedButton.Click += new EventHandler(DynamicButton_Click);
        clickedButton.BackColor = System.Drawing.Color.Yellow;

        Response.Write(" " + buttonID);


        // Your custom logic for button click
        // You can use buttonID to identify which button was clicked

        // Redirect to another page based on the button click
        //Response.Redirect("BookParking.aspx");

    }
}
