using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
public partial class WorkAreaview : System.Web.UI.Page
{
    private SqlConnection con;
    private SqlCommand cmd;
  
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
   
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        con.Open();
        ashok();
        con.Close();
    }
  
   
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
    public void SendHTMLMail()
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(new MailAddress("saranyaselva34@gmail.com"));

            mail.From = new MailAddress("railwayrcground@gmail.com");
            mail.Subject = "Send Gridivew in EMail";
            mail.Body += "Please check below data <br/><br/>";
            mail.Body += GetGridviewData(GridView1);
            mail.IsBodyHtml = true;


            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("railwayrcground@gmail.com", "mcdjnllswabxrncl");
            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    public string GetGridviewData(GridView gv)
    {
        StringBuilder strBuilder = new StringBuilder();
        StringWriter strWriter = new StringWriter(strBuilder);
        HtmlTextWriter htw = new HtmlTextWriter(strWriter);
        gv.RenderControl(htw);
        return strBuilder.ToString();
    }
    public void ashok()
    {
        cmd = new SqlCommand("SELECT code as Pfno, ename as EmployeeName, des as Designation, sdat as Startdate, edat as EndDate, aWd as Award, pun as Punishment  FROM  workarea", con);
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds.Copy();
        GridView1.DataBind();
   
    }

 
 

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT code as Pfno, ename as EmployeeName, des as Designation, sdat as Startdate, edat as EndDate, aWd as Award, pun as Punishment  FROM  workarea where code=@code", con);
        cmd.Parameters.AddWithValue("@code", TextBox1.Text);
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds.Copy();
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SendHTMLMail();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("workarea.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
