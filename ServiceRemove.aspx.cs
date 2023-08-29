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
public partial class ServiceRemove : System.Web.UI.Page
{
    private SqlConnection con;
    private SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("delete from SBook where pfno=@pfno", con);
            cmd.Parameters.AddWithValue("@pfno", TextBox1.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert(' Record Deleted Successfully')</script>");
        }
        catch (SqlException ex)
        {

        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ServiceBook.aspx");
    }
}
