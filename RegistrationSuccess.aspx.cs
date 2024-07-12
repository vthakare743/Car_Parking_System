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
using System.Text;
using System.Security.Cryptography;

public partial class RegistrationSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        

        string name = Request.QueryString["txtname"].ToString();
        string email = Request.QueryString["txtemail"].ToString();
        string year = Request.QueryString["ddlYear"].ToString();
        string sem = Request.QueryString["ddlSem"].ToString();
        string category = Request.QueryString["ddlCategory"].ToString();
        string username = Request.QueryString["txtUsername"].ToString();
        string pwd = getPassword();
        

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into StudentMaster (sname,email,year,sem,category,username,pwd) values(@name,@email,@year,@sem,@category,@username,@pwd)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@year", year);
        cmd.Parameters.AddWithValue("@sem", sem);
        cmd.Parameters.AddWithValue("@category", category);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@pwd", pwd);
        int i = cmd.ExecuteNonQuery();
        if (i != null)
        {
            SendHTMLMail(email, username, pwd);
            Response.Write("<script>alert('Registration successful.. Check Your Email for Password');</script>");
            Response.Write("<script>window.location.href='StudentLogin.aspx';</script>");
            // Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Registration not successful..try again!!');</script>");
            Response.Write("<script>window.location.href='Registration.aspx';</script>");
        }
    }


    public void SendHTMLMail(string email,string uname,string pwd)
    {
        StreamReader reader = new StreamReader(Server.MapPath("~/MailBody.htm"));
        string readFile = reader.ReadToEnd();
        string myString = "";
        myString = readFile;
        myString = myString.Replace("$$Username$$", uname);
        myString = myString.Replace("$$Password$$", pwd);


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

    
    public string getPassword()
    {
        StringBuilder builder = new StringBuilder();
        builder.Append(RandomNumber(10, 99));
        builder.Append(RandomString(4, true));
       
        return builder.ToString();
    }
    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    private string RandomString(int size, bool lowerCase)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }
        if (lowerCase)
            return builder.ToString().ToLower();
        return builder.ToString();
    }
    protected string stegnoAES()
    {
        string clearText = "";
        string EncryptionKey = "";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }


}