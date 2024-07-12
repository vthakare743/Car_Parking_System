using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;
/// <summary>
/// Summary description for BasicCode
/// </summary>
public class BasicCode
{
   
	public BasicCode()
	{
		//
		// TODO: Add constructor logic here
		//
	}

   

    public string generateID(string col, string tbl)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);

        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select " + col + " from  " + tbl + " order by " + col + " desc";
        cmd.Connection = con;
        object obj = cmd.ExecuteScalar();
        con.Close();
        if (obj == null)
        {
            return "1";
        }
        else
        {
            int n = Convert.ToInt32(obj);
            n = n + 1;
            return n.ToString();
        }
    }


    public void SendSmsGVISH(string senderid, string mob, string msg)
    {
        string username = "vmvcollege";
        string pwd = "Vmv@123";
        //string requestid = "494";

        try
        {
            string URL = "http://45.114.143.189/api/mt/SendSMS?username=" + username + "&password=" + pwd + "&senderid=" + senderid + "&type=0&destination=" + mob + "&text=" + msg + "&peid=1301164154337890769";

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(URL);
            HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
            StreamReader sr = new StreamReader(resp.GetResponseStream());
            string results = sr.ReadToEnd();
            Console.Write(results);
            sr.Close();

        }
        catch (SystemException ex)
        {

        }

    }

    
    public void SendSms(string senderid, string mob, string msg)
    {
        string username = "litsbros";
        string pwd = "12345678";
        //string requestid = "494";

        try
        {
            string URL = "http://45.114.143.189/api/mt/SendSMS?username=" + username + "&password=" + pwd + "&senderid=" + senderid + "&type=0&destination=" + mob + "&text=" + msg + "&peid=1701162948284863494";

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(URL);
            HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
            StreamReader sr = new StreamReader(resp.GetResponseStream());
            string results = sr.ReadToEnd();
            sr.Close();

        }
        catch (SystemException ex)
        {

        }
    }

    

}