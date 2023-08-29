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
public partial class DeadpersonRemove : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
    }
 
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("delete from deadperson where pfno=@pfno", con);
            cmd.Parameters.AddWithValue("@pfno", TextBox1.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Deleted Successfully')</script>");
        }
        catch (SqlException ex)
        {

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Deadperson.aspx");
    }
}
