using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Parking_Receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string pname = Request.QueryString["pname"];
            string customer = Request.QueryString["customer"];
            string slots = Request.QueryString["slots"];
            string ammount = Request.QueryString["ammount"];
            string carno = Request.QueryString["carno"];
            string bdate = Request.QueryString["bdate"];

            // Determine the booking type (half or full day)
            string bookingType= slots; // Use the actual value from slots in lowercase

            // Get the current booking time
            DateTime bookingDate = DateTime.Now;

            // Calculate the valid till time based on the booking type
            DateTime validTillTime;
            if (bookingType == "Half Day")
            {
                // For half-day, add 6 hours to the current booking time
                validTillTime = bookingDate.AddHours(6);
            }
            else
            {
                // For full-day, add 12 hours to the current booking time
                validTillTime = bookingDate.AddHours(12);
            }

            // Format the booking date and valid till date
            //  string bookingDateFormatted = bookingDate.ToString("dd-MM-yyyy hh:mm tt");
            //  string validTillFormatted = validTillTime.ToString("dd-MM-yyyy hh:mm tt");
            string bookingDateFormatted = bookingDate.ToString();
            string validTillFormatted = validTillTime.ToString();



            // Set the values in the labels
            lblParkingName.Text = pname;
            lblCustomer.Text = customer;
            lblMode.Text = slots;
            lblAmount.Text = ammount;

            // Set the labels without any placeholders
            lblBookingDate.Text =  bookingDateFormatted;
            lblValidTillDate.Text =  validTillFormatted;

            //lblCarNo.Text = carno;
        }
    }
    
}

    // You can also use these values to fetch additional details from the database if needed.
        // For example:
            // ReceiptData receiptData = GetReceiptDataFromDatabase(pid);
            // Then set other labels using receiptData properties.
            //        // Retrieve the latest booking ID from the database
            //        string bookingID = GetLatestBookingIDFromDatabase();

//        if (!string.IsNullOrEmpty(bookingID))
//        {
//            // Retrieve receipt data from the database based on the booking ID
//            ReceiptData receiptData = GetReceiptDataFromDatabase(bookingID);

//            if (receiptData != null)
//            {
//                // Set values to the labels
//                lblBookingID.Text = receiptData.BookingID;
//                lblParkingName.Text = receiptData.ParkingName;
//                lblMode.Text = receiptData.Mode;
//                lblAmount.Text = receiptData.Amount.ToString("C");
//                lblBookingDate.Text = receiptData.BookingDate.ToString("yyyy-MM-dd");
//                //lblCarNo.Text = receiptData.CarNo;
//                lblValidTillDate.Text = receiptData.ValidTillDate.ToString("yyyy-MM-dd");

//                // Generate and set QR code
//                string qrData = GetQRCodeData(receiptData);
//                Page.ClientScript.RegisterStartupScript(GetType(), "generateQRCode", $"generateQRCode('{qrData}')", true);
//            }
//        }
//    }
//}

//    private string GetLatestBookingIDFromDatabase()
//    {
//        try
//        {
//            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LIS"].ConnectionString))
//            {
//                connection.Open();

//                using (SqlCommand command = new SqlCommand("SELECT TOP 1 bid FROM BookMaster ORDER BY bid DESC", connection))
//                {
//                    var latestBookingID = command.ExecuteScalar();

//                    // Check for null or DBNull.Value before calling ToString()
//                    if (latestBookingID != null && latestBookingID != DBNull.Value)
//                    {
//                        return latestBookingID.ToString();
//                    }
//                }
//            }
//        }
//        catch (Exception ex)
//        {
//            // Log or handle the exception
//            Console.WriteLine($"Error retrieving latest booking ID: {ex.Message}");
//        }

//        return null;
//    }

//    private ReceiptData GetReceiptDataFromDatabase(string bookingID)
//    {
//        try
//        {
//            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["LIS"].ConnectionString))
//            {
//                connection.Open();

//                using (SqlCommand command = new SqlCommand("SELECT * FROM BookMaster WHERE bid = @BookingID", connection))
//                {
//                    command.Parameters.AddWithValue("@BookingID", bookingID);

//                    using (SqlDataReader reader = command.ExecuteReader())
//                    {
//                        if (reader.Read())
//                        {
//                            // Create a ReceiptData object and populate it with data from the database
//                            ReceiptData receiptData = new ReceiptData
//                            {
//                                BookingID = reader["bid"].ToString(),
//                                ParkingName = reader["pname"].ToString(),
//                                Mode = reader["mode"].ToString(),
//                                Amount = Convert.ToDecimal(reader["ammount"]),
//                                BookingDate = Convert.ToDateTime(reader["bdate"]),
//                                CarNo = reader["carno"].ToString(),
//                                ValidTillDate = DateTime.Now.AddDays(7) // Example: Valid for 7 days from booking date
//                            };

//                            return receiptData;
//                        }
//                    }
//                }
//            }
//        }
//        catch (Exception ex)
//        {
//            // Log or handle the exception
//            Console.WriteLine($"Error retrieving latest booking ID: {ex.Message}");
//        }

//        return null;
//    }

//    private string GetQRCodeData(ReceiptData receiptData)
//    {
//        return $"{receiptData.BookingID},{receiptData.ParkingName},{receiptData.Mode},{receiptData.Amount},{receiptData.BookingDate},{receiptData.ValidTillDate}";
//    }
//}
//public class ReceiptData
//{
//    public string BookingID { get; set; }
//    public string ParkingName { get; set; }
//    public string Mode { get; set; }
//    public decimal Amount { get; set; }
//    public DateTime BookingDate { get; set; }
//    public string CarNo { get; set; }
//    public DateTime ValidTillDate { get; set; }
