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
public partial class EmployeeMasterView : System.Web.UI.Page
{
    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataReader dr;
    private SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        
 
        cmd = new SqlCommand("SELECT pfno as PFNO,uno as UniqueNo, ename as EmpName,   address as Address, designation as Designation,  dob as DOB, doa as DOA, dor as DOR,bpay as Basicpay,namt as Netamount  FROM  EmpMaster", con);

        DataSet ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds.Copy();
        GridView1.DataBind();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("SELECT pfno as PFNO,uno as UniqueNo, ename as EmpName,   address as Address, designation as Designation,  dob as DOB, doa as DOA, dor as DOR,bpay as Basicpay,namt as Netamount  FROM  EmpMaster where pfno='"+TextBox1.Text+"'", con);

            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds.Copy();
            GridView1.DataBind();
        }
        catch (SqlException ex)
        {
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

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

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            NetworkCredential netCre = new NetworkCredential("railwayrcground@gmail.com", "mcdjnllswabxrncl");
            smtp.Credentials = netCre;
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
    protected void Button3_Click(object sender, EventArgs e)

    {
        SendHTMLMail();
        Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Mail Send Successfully')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeMaster.aspx");
    }
}
