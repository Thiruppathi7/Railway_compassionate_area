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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into cpassword(type,uname,pw)values(@type,@uname,@pw)", con);
        cmd.Parameters.AddWithValue("@type",DropDownList2.Text);
        cmd.Parameters.AddWithValue("@uname",TextBox4.Text);
        cmd.Parameters.AddWithValue("@pw",TextBox3.Text);
        cmd.ExecuteNonQuery();
        con.Close();
       
    }
}

