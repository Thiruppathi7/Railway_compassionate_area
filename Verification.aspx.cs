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
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select pfno from verfication ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList9.Items.Add(dr["pfno"].ToString());

            }


            dr.Close();
            con.Close();


        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string m = String.Format("{0}", Request.Form["dat"]);
            con.Open();

            cmd = new SqlCommand("insert into verfication(pfno, name, add1, fpen, dod, fsf, ass, ven, von)values(@pfno, @name, @add1,@fpen,@dod,@fsf,@ass,@ven,@von)", con);

            cmd.Parameters.AddWithValue("@pfno", TextBox11.Text);
            cmd.Parameters.AddWithValue("@name", TextBox12.Text);
            cmd.Parameters.AddWithValue("@add1", TextBox13.Text);


            cmd.Parameters.AddWithValue("@fpen", TextBox14.Text);

            cmd.Parameters.AddWithValue("@dod", TextBox15.Text);
            cmd.Parameters.AddWithValue("@fsf", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ven", TextBox3.Text);
            cmd.Parameters.AddWithValue("@von", TextBox20.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            clear();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Inserted Successfully')</script>");
            clear();
        }
        catch (SqlException ea)
        {
            Response.Write(ea.Message.ToString());
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        try
        {
            string m = String.Format("{0}", Request.Form["dat"]);
            con.Open();
            cmd = new SqlCommand("update verfication set pfno=@pfno, name=@name, add1=@add1,  fpen=@fpen, dod=@dod, fsf=@fsf, ass=@ass, ven=@ven, von=@von where pfno=@pfno", con);


            cmd.Parameters.AddWithValue("@name", TextBox12.Text);
            cmd.Parameters.AddWithValue("@add1", TextBox13.Text);


            cmd.Parameters.AddWithValue("@fpen", TextBox14.Text);

            cmd.Parameters.AddWithValue("@dod", TextBox15.Text);
            cmd.Parameters.AddWithValue("@fsf", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ven", TextBox3.Text);
            cmd.Parameters.AddWithValue("@von", TextBox20.Text);
            cmd.Parameters.AddWithValue("@pfno", TextBox11.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Modify Successfully')</script>");
        }
        catch (SqlException ea)
        {
            Response.Write(ea.Message.ToString());
        }
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("VerficationView.aspx");
    }
    public void clear()
    {
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";


        TextBox14.Text = "";

        TextBox15.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";

        TextBox20.Text = "";
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("verficationremove.aspx");

    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select pfno, name, add1, fpen, dod, fsf, ass, ven, von from verfication  where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno", DropDownList9.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            TextBox11.Text = dr["pfno"].ToString();
            TextBox12.Text = dr["name"].ToString();
            TextBox13.Text = dr["add1"].ToString();
            TextBox14.Text = dr["fpen"].ToString();
            TextBox15.Text = dr["dod"].ToString();
            TextBox1.Text = dr["fsf"].ToString();
            TextBox2.Text = dr["ass"].ToString();
            TextBox3.Text = dr["ven"].ToString();
            TextBox20.Text = dr["von"].ToString();

        }
        else
        {


        }
        dr.Close();
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        DropDownList9.Visible = true;
    }
}

