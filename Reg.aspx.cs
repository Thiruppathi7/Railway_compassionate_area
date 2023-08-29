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
public partial class Reg : System.Web.UI.Page
{
    private SqlCommand comm;
    private SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select isnull(max(eid),0)+1 from register", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Random RandNum = new System.Random();
        int MyRandomNumber = RandNum.Next(100000, 999999);
        TextBox6.Text = Convert.ToString(MyRandomNumber);
        con.Open();
        comm = new SqlCommand("Insert Into register(  ename, mno, email, uname,pword)values(  @ename, @mno, @email,@uname,@pword)", con);
       
        comm.Parameters.AddWithValue("@ename", TextBox2.Text);
        comm.Parameters.AddWithValue("@mno", TextBox3.Text);
        comm.Parameters.AddWithValue("@email", TextBox4.Text);

  
        comm.Parameters.AddWithValue("@uname", TextBox5.Text);
        comm.Parameters.AddWithValue("@pword", TextBox6.Text);

       
    
        comm.ExecuteNonQuery();
        con.Close();
        SendHTMLMail();
        sms();
        Response.Write("<script>alert('You have been successfully registered OTP Send To Your Mail !')</script>");
        clear();
      

    }
    public void clear()
    {
        
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        
    }

    public void SendHTMLMail()
    {
        try
        {
            //MailMessage mail = new MailMessage();
            //mail.To.Add(new MailAddress(TextBox4.Text));

            //mail.From = new MailAddress("raniamma2821@gmail.com");
            //mail.Subject = "RAILWAY Fuel Consumption Analysis-Southern Railway-Madurai Division ";
            //mail.Body += "Dear User, Thank you for registered here. Your UserKey is  '" + TextBox6.Text + "' Please Note it. <br/><br/>";
            ////mail.Body += GetGridviewData(GridView1);
            //mail.IsBodyHtml = true;


            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            //smtp.Credentials = new System.Net.NetworkCredential
            //       ("raniamma2821@gmail.com", "9965109712");
            ////Or your Smtp Email ID and Password
            //smtp.EnableSsl = true;
            //smtp.Send(mail);

            MailMessage mail = new MailMessage();

            mail.Subject = "RAILWAY COMPASSIONATE GROUND APPOINTMENT-Southern Railway-Madurai Division ";
            mail.From = new MailAddress("railwayrcground@gmail.com");
            mail.To.Add(TextBox4.Text);
            mail.Body += "Dear User, Thank you for registered here. Your UserKey is  '" + TextBox6.Text + "' Please Note it. <br/><br/>";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            NetworkCredential netCre = new NetworkCredential("railwayrcground@gmail.com", "mcdjnllswabxrncl");
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
    public void sms()
    {
        try
        {


            string messages;
            messages = "your Otp '" + TextBox6.Text + "'..!";

            string url;

            //url = "http://www.alertsms.in/pushsms.php?username=ashok88&password=snogszfz9c&sender=test&to='" + TextBox1.Text + "'&message='" + TextBox2.Text + "'&priority=1";

            //  url = "http://promo.alertsmsindia.biz/sendsms.jsp?user=ashokp88&password=12345678&mobiles='" + TextBox1.Text + "'&sms='" + TextBox2.Text + "'&unicode=0&senderid=SMS&version=3";
            url = "https://www.fast2sms.com/dev/bulkV2?authorization=HmZGYS9uCov1EXjRgkrb2tBNFzdaDVefA7xMqJWUnIcPTy3KQiIxlhMLAvdGRKEeB1jzkTFHPp3JCw7n&sender_id=TXTIND&message='" + messages + "'&route=v3&numbers='" + TextBox3.Text + "'";
            string v = url.Replace("'", "");
            Response.Redirect(v);
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Message Send Sucessfully')</script>");
        }
        catch (Exception er)
        {
            Response.Write(er.Message.ToString());
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
