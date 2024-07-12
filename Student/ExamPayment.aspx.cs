using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Net;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
           
        }

    }


    public void SendHTMLMail(string sname, string year, string fees,string email)
    {
        StreamReader reader = new StreamReader(Server.MapPath("~/MailBodyPaymentExam.htm"));
        string readFile = reader.ReadToEnd();
        string myString = "";
        myString = readFile;
        myString = myString.Replace("$$sname$$", sname);
        myString = myString.Replace("$$year$$", year);
        myString = myString.Replace("$$fees$$", fees);
        myString = myString.Replace("$$sem$$", ddlSem.SelectedItem.ToString());
       

        myString = myString.Replace("$$Website$$", "http://www.OnlineFees.com");
        MailMessage Msg = new MailMessage();
        //MailAddress fromMail = new MailAddress("administrator@aspdotnet-suresh.com");
        MailAddress fromMail = new MailAddress("paruprashant21@gmail.com");
        // Sender e-mail address.
        Msg.From = fromMail;
        // Recipient e-mail address.
        Msg.To.Add(new MailAddress(email));
        // Subject of e-mail
        Msg.Subject = "Online Fees System";
        Msg.Body = myString.ToString();
        Msg.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
        NetworkCredential NetworkCred = new NetworkCredential("paruprashant21@gmail.com", "7774821962");
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(Msg);

        reader.Dispose();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();

        cmd.CommandText = "insert into PaymentExamMaster(sname,sid,year,sem,category,fees,pdate)values(@sname,@sid,@year,@sem,@category,@fees,@pdate)";
        cmd.Parameters.AddWithValue("@sname", Session["sname"]);
        cmd.Parameters.AddWithValue("@sid", Session["sid"]);
        cmd.Parameters.AddWithValue("@year", ddlYear.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@sem", ddlSem.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@category", Session["category"]);
        cmd.Parameters.AddWithValue("@fees", txtFees.Text);
        cmd.Parameters.AddWithValue("@pdate", DateTime.Now.ToShortDateString());

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
        {
            SendHTMLMail(Session["sname"].ToString(), ddlYear.SelectedItem.ToString(), txtFees.Text, Session["email"].ToString());
            Response.Write("<script>alert('Payment Dome successfully, Check your Receipt on Email');</script>");
            Response.Write("<script>window.location.href='StudentDefault.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Check All  Data..try again!!');</script>");
            Response.Write("<script>window.location.href='StudentDefault.aspx';</script>");
        }


    }
}