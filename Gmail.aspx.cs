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
using System.Net.Mail;

public partial class Gmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(TextBox1.Text);
            //mail.To.Add("ashokpravick90@gmail.com");
            mail.From = new MailAddress("railwayrcground@gmail.com");
            mail.Subject = TextBox2.Text;
            mail.Body = TextBox3.Text;
            mail.IsBodyHtml = true;

            //Attach file using FileUpload Control and put the file in memory stream
            if (FileUpload1.HasFile)
            {
                mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
            }
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("railwayrcground@gmail.com", "mcdjnllswabxrncl");
            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Mail Send Successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }

}
