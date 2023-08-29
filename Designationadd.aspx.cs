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
public partial class Default2 : System.Web.UI.Page
{

    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
       con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select isnull(max(code),0)+1 from designadd", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        TextBox1.Text = i.ToString();

        ashok();
        con.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
         cmd = new SqlCommand("insert into designadd (code,des) values(@code,@des)", con);
         cmd.Parameters.AddWithValue("@code", TextBox1.Text);
         cmd.Parameters.AddWithValue("@des", TextBox3.Text);
         cmd.ExecuteNonQuery();
         ashok();
         Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Inserted Successfully')</script>");
         con.Close();
     }
     public void ashok()
     {
         cmd = new SqlCommand("SELECT code as Sno,des as Designation from designadd", con);
         dr = cmd.ExecuteReader();
         GridView1.DataSource = dr;
         GridView1.DataBind();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("Master.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("DesignationRemove.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
