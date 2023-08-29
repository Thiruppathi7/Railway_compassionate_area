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
        SqlCommand cmd = new SqlCommand("select isnull(max(code),0)+1   from workarea ", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        TextBox1.Text = i.ToString();

        con.Close();

       
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
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select ename from workarea", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList5.Items.Add(dr["ename"].ToString());
            }
            dr.Close();
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox3.Text = "";
        //DropDownList1.Text = "--Select--";
        //DropDownList2.Text = "--Select--";
        //DropDownList3.Text = "--Select--";
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string m = String.Format("{0}", Request.Form["date"]);
        string n = String.Format("{0}", Request.Form["date1"]);
        con.Open();
        cmd = new SqlCommand("insert into workarea (code, ename, des, sdat, edat, aWd, pun) values(@code,@ename,@des,@sdat,@edat,@aWd,@pun)", con);
        cmd.Parameters.AddWithValue("@code", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ename", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@des", TextBox3.Text);
        cmd.Parameters.AddWithValue("@sdat", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@edat", TextBox2.Text);
        cmd.Parameters.AddWithValue("@aWd", TextBox4.Text);
        cmd.Parameters.AddWithValue("@pun", TextBox5.Text);
        cmd.ExecuteNonQuery();

        con.Close();

        Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Saved Sucessfully!!!')</script>");
        clear();
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select ename,designation from EmpMaster where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno", DropDownList1.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox3.Text = dr["ename"].ToString();
            TextBox5.Text = dr["designation"].ToString();
            //DropDownList2.Text = dr["designation"].ToString();
        }
        else
        {
            TextBox3.Text = "";
        }
        dr.Close();
        con.Close();
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("WorkAreaview.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        DropDownList5.Visible = true;
    
       }

    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("wRemove.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
         con.Open();
        cmd = new SqlCommand("update workarea set ename=@ename, des=@des, sdat=@sdat, edat=@edat, aWd=@aWd, pun=@pun where code=@code ", con);
        cmd.Parameters.AddWithValue("@code", TextBox1.Text);
        cmd.Parameters.AddWithValue("@ename", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@des", TextBox3.Text);
        cmd.Parameters.AddWithValue("@sdat", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@edat", TextBox2.Text);
        cmd.Parameters.AddWithValue("@aWd", TextBox4.Text);
        cmd.Parameters.AddWithValue("@pun", TextBox5.Text);
        cmd.ExecuteNonQuery();

        con.Close();

        Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Saved Sucessfully!!!')</script>");
        clear();
    }
    protected void DropDownList5_SelectedIndexChanged1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select *from workarea  where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno", DropDownList5.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            TextBox1.Text = dr["code"].ToString();
            DropDownList1.Text = dr["pfno"].ToString();
            TextBox3.Text = dr["ename"].ToString();
            TextBox5.Text = dr["des"].ToString();
            TextBox2.Text = dr["sdat"].ToString();
            TextBox4.Text = dr["edat"].ToString();
            DropDownList3.Text = dr["aWd"].ToString();
            DropDownList4.Text = dr["pun"].ToString();

        }
        else
        {


        }
        dr.Close();
        con.Close();
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}
