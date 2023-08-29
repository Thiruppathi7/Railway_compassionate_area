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
public partial class Alogin : System.Web.UI.Page
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
        cmd = new SqlCommand("Select uname,pword from login where uname='" +email.Text+ "' and pword='" + password.Text + "' ", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Response.Redirect("Adminmenu.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Invlid Username and Password!!!')</script>");
        }
        dr.Close();
        con.Close();
    }
    protected void email_TextChanged(object sender, EventArgs e)
    {

    }
}
