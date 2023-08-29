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
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand sqlcmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();  
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string backupDIR = "F:\\Rcompassion";
        if (!System.IO.Directory.Exists(backupDIR))
        {
            System.IO.Directory.CreateDirectory(backupDIR);
        }
        try
        {
            con.Open();
            sqlcmd = new SqlCommand("backup database PANDA to disk='" + backupDIR + "\\" + DateTime.Now.ToString("ddMMyyyy_HHmmss") + ".Bak'", con);
            sqlcmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Data Backup Successfully')</script>");
        }
        catch (Exception ex)
        {
           
        }  
    }
   
}
