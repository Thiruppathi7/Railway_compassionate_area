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
public partial class SearchImage : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlConnection con;
    private SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select pfno from EmpMaster", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr["pfno"].ToString());

            }


            dr.Close();
            con.Close();
        }
    }
   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("SELECT uno,ename,designation FROM EmpMaster WHERE pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno",DropDownList1.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr["uno"].ToString();
            TextBox3.Text = dr["ename"].ToString();
            TextBox4.Text = dr["designation"].ToString();
            Image1.ImageUrl = "~/ShowImage.ashx?id=" + DropDownList1.Text;
        }
        else
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            Image1.ImageUrl = "";
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('The PF No that you enter is not found!!!')</script>");
        }
        dr.Close();
        con.Close();
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("EmpMasterReport.aspx");
    }
    public void clear()
    {
        DropDownList1.Text = "";
    
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Image1.ImageUrl = "";
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        //clear();
        Response.Redirect("idcard.aspx");
    DropDownList1.Focus();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select uno,ename,designation  from EmpMaster where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno",DropDownList1.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr["uno"].ToString();
            TextBox3.Text = dr["ename"].ToString();
            TextBox4.Text = dr["designation"].ToString();

        }
        else
        {


        }
        dr.Close();
        con.Close();
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}

