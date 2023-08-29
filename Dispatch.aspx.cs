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
            cmd = new SqlCommand("select refno from dispatch ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList9.Items.Add(dr["refno"].ToString());

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
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("insert into dispatch( sname , refno , add1 , div , name , add4 , add5  , sir, dpn, add6, add7, papply, cname, edate)values(@sname, @refno, @add1, @div, @name, @add4, @add5, @sir, @dpn, @add6, @add7, @papply, @cname, @edate)", con);

            cmd.Parameters.AddWithValue("@sname", TextBox11.Text);
            cmd.Parameters.AddWithValue("@refno", TextBox12.Text);
            cmd.Parameters.AddWithValue("@add1", TextBox13.Text);
      

            cmd.Parameters.AddWithValue("@div", TextBox14.Text);

            cmd.Parameters.AddWithValue("@name", TextBox15.Text);
            cmd.Parameters.AddWithValue("@add4", TextBox1.Text);
            cmd.Parameters.AddWithValue("@add5", TextBox2.Text);
            cmd.Parameters.AddWithValue("@sir", TextBox17.Text);
            cmd.Parameters.AddWithValue("@dpn", TextBox18.Text);
            cmd.Parameters.AddWithValue("@add6", TextBox19.Text);
            cmd.Parameters.AddWithValue("@add7", TextBox20.Text);
            cmd.Parameters.AddWithValue("@papply", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@cname", TextBox4.Text);
            cmd.Parameters.AddWithValue("@edate", TextBox5.Text);
 
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert(' Record Inserted Successfully')</script>");

            clear();
        }

        catch (SqlException ea)
        {
            Response.Write(ea.Message.ToString());
        }
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("DispatchView.aspx");
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
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

    }
protected void Button2_Click1(object sender, EventArgs e)
{
    Response.Redirect("DipatchRemove.aspx");
}
protected void Button3_Click1(object sender, EventArgs e)
{
    try
    {
        con.Open();
        cmd = new SqlCommand("update  dispatch set sname=@sname ,add1=@add1 ,div=@div ,name=@name ,add4=@add4 ,add5=@add5  ,sir=@sir, dpn=@dpn, add6=@add6, add7=@add7, papply=@papply,cname=@cname, edate=@edate where refno=@refno ", con);

        cmd.Parameters.AddWithValue("@sname", TextBox11.Text);
        cmd.Parameters.AddWithValue("@refno", TextBox12.Text);
        cmd.Parameters.AddWithValue("@add1", TextBox13.Text);


        cmd.Parameters.AddWithValue("@div", TextBox14.Text);

        cmd.Parameters.AddWithValue("@name", TextBox15.Text);
        cmd.Parameters.AddWithValue("@add4", TextBox1.Text);
        cmd.Parameters.AddWithValue("@add5", TextBox2.Text);
        cmd.Parameters.AddWithValue("@sir", TextBox17.Text);
        cmd.Parameters.AddWithValue("@dpn", TextBox18.Text);
        cmd.Parameters.AddWithValue("@add6", TextBox19.Text);
        cmd.Parameters.AddWithValue("@add7", TextBox20.Text);
        cmd.Parameters.AddWithValue("@papply", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@cname", TextBox4.Text);
        cmd.Parameters.AddWithValue("@edate", TextBox5.Text);

        cmd.ExecuteNonQuery();
        con.Close();
        Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert(' Record Modify Successfully')</script>");

        clear();
    }

    catch (SqlException ea)
    {
        Response.Write(ea.Message.ToString());
    }
}
protected void Button5_Click(object sender, EventArgs e)
{
    DropDownList9.Visible = true;
   
}
protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
{
    try
    {
        con.Open();
        cmd = new SqlCommand("select sname ,refno , add1 , div , name , add4 , add5 , sir, dpn, add6, add7, papply,cname from dispatch  where refno=@refno", con);
        cmd.Parameters.AddWithValue("@refno", DropDownList9.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            TextBox11.Text = dr["sname"].ToString();
            TextBox12.Text = dr["refno"].ToString();
            TextBox13.Text = dr["name"].ToString();
            TextBox14.Text = dr["add1"].ToString();
            TextBox15.Text = dr["div"].ToString();
            TextBox1.Text = dr["name"].ToString();
            TextBox2.Text = dr["add4"].ToString();
            TextBox17.Text = dr["add5"].ToString();
            TextBox18.Text = dr["sir"].ToString();
            TextBox19.Text = dr["dpn"].ToString();
            TextBox20.Text = dr["add6"].ToString();
            DropDownList1.Text = dr["add7"].ToString();
            TextBox4.Text = dr["papply"].ToString();
            TextBox5.Text = dr["cname"].ToString();


        }
              dr.Close();
        con.Close();
       
      
    }
    catch (Exception ex)
    {
        Response.Write(ex.Message.ToString());
    }
}
}
