using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
public partial class fotg : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlConnection con;
    private SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("Select eid,ename,email,pword from Register where eid=@eid and ename=@ename and email=@email", con);
        cmd.Parameters.AddWithValue("@eid", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ename", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read()==true)
        {
            TextBox4.Text = dr["pword"].ToString();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert(' You Entered is NOT CORRECT Please Try again!!!')</script>");
        }
        dr.Close();
        con.Close();
        SendHTMLMail();
    }
    public void SendHTMLMail()
    {
        try
        {
           

            MailMessage mail = new MailMessage();

            mail.Subject = "RAILWAY COMPASSIONATE GROUND APPOINTMENT-Southern Railway-Madurai Division ";
            mail.From = new MailAddress("raniamma2821@gmail.com");
            mail.To.Add(TextBox3.Text);
            mail.Body += "Dear User, Thank you for Forgot here. Your Forgot Password is  '" + TextBox4.Text + "' Please Note it. <br/><br/>";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            NetworkCredential netCre = new NetworkCredential("raniamma2821@gmail.com", "9965109712");
            smtp.Credentials = netCre;

            try
            {
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}
