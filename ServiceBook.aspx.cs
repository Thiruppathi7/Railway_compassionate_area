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
using System.Net;
using System.IO;
public partial class ServiceBook : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlConnection con;
    private SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        TextBox10.Text = "SR-Madurai Division";
        con.Open();
            
        //if (!IsPostBack)
     //   {
      //      cmd = new SqlCommand("select des from designadd", con);
      //      dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //       TextBox9.Text(dr["des"].ToString();
         //       DropDownList10.Items.Add(dr["des"].ToString());
        //
          //  }


            //dr.Close();
       


       // }
        con.Close();
            con.Open();
        if (!IsPostBack)
        {
           
            cmd = new SqlCommand("select pfno from EmpMaster", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList9.Items.Add(dr["pfno"].ToString());

            }


            dr.Close();
          


        }
        con.Close();
        con.Open();
        if (!IsPostBack)
        {

            cmd = new SqlCommand("select pfno from SBook", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList5.Items.Add(dr["pfno"].ToString());

            }


            dr.Close();



        }
        con.Close();
            TextBox6.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox7.Visible = false;
            FileUpload2.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            DropDownList4.Visible = false;
            TextBox5.Visible = false;
            FileUpload3.Visible = false;
            Label1.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
    {

    }
    protected void RadioButton2_CheckedChanged1(object sender, EventArgs e)
    {

    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {

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
    protected void DropDownList9_SelectedIndexChanged1(object sender, EventArgs e)
    {
      
    }

    protected void DropDownList9_SelectedIndexChanged2(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select ename,dob,gender,fname,doa,designation  from EmpMaster where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno", DropDownList9.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox12.Text = dr["ename"].ToString();
            TextBox13.Text = dr["dob"].ToString();
            DropDownList1.Text = dr["gender"].ToString();
            TextBox2.Text = dr["fname"].ToString();

            TextBox1.Text = dr["doa"].ToString();
            TextBox9.Text = dr["designation"].ToString();
            //DropDownList10.Text = dr["designation"].ToString();



        }
        else
        {


        }
        dr.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Stream img_strm = FileUpload1.PostedFile.InputStream;
        int img_len = FileUpload1.PostedFile.ContentLength;

        byte[] imgdata = new byte[img_len];
        int n = img_strm.Read(imgdata, 0, img_len);

        int result = AshokPravick(imgdata);

        Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Inserted Successfully')</script>");
        clear();
    }
    private int AshokPravick(byte[] imgbin)
    {
        string Str;
        if (CheckBox1.Checked=true)
        {
            Str = "Male";
        }
        else
        {
            Str = "Female";
        }
        string m = String.Format("{0}", Request.Form["dat"]);
        cmd = new SqlCommand("Insert Into SBook( pfno, ename, dob, gen, fname, mname, doj, comm, rel, des, status, wife, cname1, cname2, cname3, gur, gname, edat,divi)values(@pfno,@ename,@dob,@gen,@fname,@mname,@doj, @comm, @rel, @des, @status, @wife, @cname1, @cname2, @cname3, @gur, @gname, @edat,@divi)", con);

        cmd.Parameters.AddWithValue("@pfno", DropDownList9.Text);
        cmd.Parameters.AddWithValue("@ename", TextBox12.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox13.Text);
        cmd.Parameters.AddWithValue("@gen", DropDownList1.Text);
   
        cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@mname", TextBox8.Text);
        cmd.Parameters.AddWithValue("@doj", TextBox1.Text);
        cmd.Parameters.AddWithValue("@comm", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@rel", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@des", TextBox9.Text);
        //cmd.Parameters.AddWithValue("@des", DropDownList10.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@status", Str);
        cmd.Parameters.AddWithValue("@wife", TextBox6.Text);

        cmd.Parameters.AddWithValue("@cname1", TextBox7.Text);
        cmd.Parameters.AddWithValue("@cname2", TextBox3.Text);
        cmd.Parameters.AddWithValue("@cname3", TextBox4.Text);
        cmd.Parameters.AddWithValue("@gur", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@gname", TextBox5.Text);

        cmd.Parameters.AddWithValue("@edat", TextBox11.Text);
        cmd.Parameters.AddWithValue("@divi", TextBox10.Text);
        con.Open();

        int n = cmd.ExecuteNonQuery();

        con.Close();

        return n;




    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ServiceBookView.aspx");
    }
    public void clear()
    {
        TextBox12.Text = "";
        TextBox13.Text = "";

        TextBox2.Text = "";
        TextBox8.Text = "";
        TextBox1.Text = "";

        TextBox6.Text = "";

        TextBox7.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

        TextBox5.Text = "";

        //TextBox9.Text = "";
        TextBox10.Text = "";
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ServiceRemove.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("update SBook set ename=@ename, dob=@dob, gen=@gen,  fname=@fname, mname=@mname, doj=@doj, comm=@comm, rel=@rel, des=@des,  wife=@wife, cname1=@cname1, cname2=@cname2, cname3=@cname3, gur=@gur, gname=@gname, edat=@edat,divi=@divi where pfno=@pfno", con);
            cmd.Parameters.AddWithValue("@ename", TextBox12.Text);
            cmd.Parameters.AddWithValue("@dob", TextBox13.Text);
            cmd.Parameters.AddWithValue("@gen", DropDownList1.Text);

            cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@mname", TextBox8.Text);
            cmd.Parameters.AddWithValue("@doj", TextBox1.Text);
            cmd.Parameters.AddWithValue("@comm", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@rel", DropDownList3.Text);
            cmd.Parameters.AddWithValue("@des", TextBox9.Text);
           //cmd.Parameters.AddWithValue("@des", DropDownList10.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@wife", TextBox6.Text);

            cmd.Parameters.AddWithValue("@cname1", TextBox7.Text);
            cmd.Parameters.AddWithValue("@cname2", TextBox3.Text);
            cmd.Parameters.AddWithValue("@cname3", TextBox4.Text);
            cmd.Parameters.AddWithValue("@gur", DropDownList4.Text);
            cmd.Parameters.AddWithValue("@gname", TextBox5.Text);

            cmd.Parameters.AddWithValue("@edat", TextBox11.Text);
            cmd.Parameters.AddWithValue("@divi", TextBox10.Text);
            cmd.Parameters.AddWithValue("@pfno", DropDownList9.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Modify Successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        DropDownList5.Visible = true;
    }
    protected void DropDownList5_SelectedIndexChanged1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from SBook  where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno", DropDownList5.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox12.Text = dr["ename"].ToString();
            TextBox13.Text = dr["dob"].ToString();
            DropDownList1.Text = dr["gen"].ToString();

            TextBox2.Text = dr["fname"].ToString();
            TextBox8.Text = dr["mname"].ToString();
            TextBox1.Text = dr["doj"].ToString();
            DropDownList2.Text = dr["comm"].ToString();
            DropDownList3.Text = dr["rel"].ToString();
            TextBox9.Text = dr["des"].ToString();
           // DropDownList10.SelectedItem.Text = dr["des"].ToString();
            TextBox6.Text = dr["wife"].ToString();
            TextBox7.Text = dr["cname1"].ToString();
            TextBox3.Text = dr["cname2"].ToString();
            TextBox4.Text = dr["cname3"].ToString();
            DropDownList4.Text = dr["gur"].ToString(); ;
            TextBox5.Text = dr["gname"].ToString();

            TextBox11.Text = dr["edat"].ToString();
            TextBox10.Text = dr["divi"].ToString();
            DropDownList9.Text = dr["pfno"].ToString();

        }
        else
        {


        }
        dr.Close();
        con.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("workarea.aspx");
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
       

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == true)
        {
            CheckBox1.Visible = false;
            CheckBox2.Visible = true;
            TextBox6.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox7.Visible = false;
            FileUpload2.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;          
        }
      
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
  
       if (CheckBox1.Checked == true)
        {
            CheckBox2.Visible = false;
            TextBox6.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox7.Visible = true;
            FileUpload2.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            DropDownList4.Visible = true;
            Label1.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            TextBox5.Visible = true;
            FileUpload3.Visible = true;
           

        }

    }
}
