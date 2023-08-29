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
public partial class Login : System.Web.UI.Page
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
        if (DropDownList5.SelectedItem.Text == "User")
        {
            con.Open();
            cmd = new SqlCommand("Select uname,pword from Register where uname=@uname and pword=@pword ", con);
            cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pword", TextBox2.Text);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Master.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('UserName or Password that You Entered is NOT CORRECT!!!')</script>");
            }
            dr.Close();
            con.Close();
        }
        else if (DropDownList5.SelectedItem.Text == "Admin")
        {
            con.Open();
            cmd = new SqlCommand("Select uname,pword from login where uname=@uname and pword=@pword", con);
            cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pword", TextBox2.Text);
                        
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Server.Transfer("Adminmenu.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('UserName or Password that You Entered is NOT CORRECT!!!')</script>");
            }
            dr.Close();
            con.Close();
        }
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        
   
    }
}
