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
public partial class EmployeeMaster : System.Web.UI.Page
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
                DropDownList6.Items.Add(dr["pfno"].ToString());

            }


            dr.Close();
            con.Close();
        }
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select sname from StationAdd", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList3.Items.Add(dr["sname"].ToString());

            }


            dr.Close();
            con.Close();


        }
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select des from designadd", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr["des"].ToString());

            }


            dr.Close();
            con.Close();


        }
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length == 8)
        {
            Stream img_strm = FileUpload1.PostedFile.InputStream;
            int img_len = FileUpload1.PostedFile.ContentLength;

            byte[] imgdata = new byte[img_len];
            int n = img_strm.Read(imgdata, 0, img_len);
            int result = AshokPravick(imgdata);

            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Inserted Successfully')</script>");
            clear();
        }
        else
        {
        }
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('PF No is not valid')</script>");

    }
    private int AshokPravick(byte[] imgbin)
    {
        string m = String.Format("{0}", Request.Form["dat"]);
        string nn = String.Format("{0}", Request.Form["date1"]);


        cmd = new SqlCommand("Insert Into EmpMaster(pfno,uno,ename,gender,photo,fname,address,dat,designation,station,dob,doa,dor,bpay,gpay,namt,idmark,reward,punishment)values( @pfno,@uno,@ename,@gender,@photo,@fname,@address,@dat,@designation,@station,@dob,@doa,@dor,@bpay,@gpay,@namt,@idmark,@reward,@punishment)", con);

        cmd.Parameters.AddWithValue("@pfno", TextBox1.Text);
        cmd.Parameters.AddWithValue("@uno", TextBox12.Text);
        cmd.Parameters.AddWithValue("@ename", TextBox13.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);
        cmd.Parameters.Add(new SqlParameter("@photo", SqlDbType.Image)).Value = imgbin;
        cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@address", TextBox8.Text);
        cmd.Parameters.AddWithValue("@dat", TextBox9.Text);
        cmd.Parameters.AddWithValue("@designation", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@station", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox10.Text);
        cmd.Parameters.AddWithValue("@doa", TextBox11.Text);
        cmd.Parameters.AddWithValue("@dor", TextBox6.Text);
        cmd.Parameters.AddWithValue("@bpay", TextBox5.Text);
        cmd.Parameters.AddWithValue("@gpay", TextBox7.Text);
        cmd.Parameters.AddWithValue("@namt", TextBox3.Text);
        cmd.Parameters.AddWithValue("@idmark", TextBox4.Text);
        cmd.Parameters.AddWithValue("@reward", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@punishment", DropDownList5.Text);
        con.Open();

        int n = cmd.ExecuteNonQuery();

        con.Close();

        return n;
     

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       Response.Redirect("EmpRemove.aspx");
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        con.Open();
        cmd = new SqlCommand("select pfno, uno,ename,gender,fname,address,dat,designation,station,dob,doa,dor,bpay,gpay,namt,idmark,reward,punishment  from EmpMaster where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno", DropDownList6.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string m = String.Format("{0}", Request.Form["dat"]);
            string nn = String.Format("{0}", Request.Form["date1"]);
            TextBox1.Text = dr["pfno"].ToString();
            TextBox12.Text = dr["uno"].ToString();
            TextBox13.Text = dr["ename"].ToString();
            DropDownList1.Text = dr["gender"].ToString();
            TextBox2.Text = dr["fname"].ToString();
            TextBox8.Text = dr["address"].ToString();
        m = dr["dat"].ToString();
            //DropDownList2.Text = dr["designation"].ToString();
            //DropDownList3.Text = dr["station"].ToString();
            TextBox10.Text = dr["dob"].ToString();
            nn = dr["doa"].ToString();
            TextBox6.Text = dr["dor"].ToString();
            TextBox5.Text = dr["bpay"].ToString();
            TextBox7.Text = dr["gpay"].ToString();
            TextBox3.Text = dr["namt"].ToString();
            TextBox4.Text = dr["idmark"].ToString();
            DropDownList4.Text = dr["reward"].ToString();
            DropDownList5.Text = dr["punishment"].ToString();
       

        }
        else
        {


        }
        dr.Close();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
       Response.Redirect("EmployeeMasterView.aspx");
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        string m = String.Format("{0}", Request.Form["dat"]);
        string nn = String.Format("{0}", Request.Form["date1"]);
        con.Open();
        cmd = new SqlCommand("update EmpMaster set uno=@uno,ename=@ename,gender=@gender,fname=@fname,address=@address,dat=@dat,designation=@designation,station=@station,dob=@dob,doa=@doa,dor=@dor,bpay=@bpay,gpay=@gpay,namt=@namt,idmark=@idmark,reward=@reward,punishment=@punishment where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@uno", TextBox12.Text);
        cmd.Parameters.AddWithValue("@ename", TextBox13.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);

        cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@address", TextBox8.Text);
        cmd.Parameters.AddWithValue("@dat",m);
        cmd.Parameters.AddWithValue("@designation", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@station", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox10.Text);
        cmd.Parameters.AddWithValue("@doa", nn);
        cmd.Parameters.AddWithValue("@dor", TextBox6.Text);
        cmd.Parameters.AddWithValue("@bpay", TextBox5.Text);
        cmd.Parameters.AddWithValue("@gpay", TextBox7.Text);
        cmd.Parameters.AddWithValue("@namt", TextBox3.Text);
        cmd.Parameters.AddWithValue("@idmark", TextBox4.Text);
        cmd.Parameters.AddWithValue("@reward", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@punishment", DropDownList5.Text);
        cmd.Parameters.AddWithValue("@pfno", TextBox1.Text);
        cmd.ExecuteNonQuery();
 
        con.Close();
        Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Modify Successfully')</script>");
    }
 public  void clear()
{
TextBox1.Text="";
 TextBox12.Text="";
 TextBox13.Text="";
 TextBox2.Text="";
    TextBox8.Text="";
TextBox10.Text="";
       
  TextBox6.Text="";
    TextBox5.Text="";
TextBox7.Text="";
TextBox3.Text="";
 TextBox4.Text="";
}

 protected void Button5_Click(object sender, EventArgs e)
 {

 }
 protected void TextBox9_TextChanged(object sender, EventArgs e)
 {

 }
 protected void TextBox1_TextChanged(object sender, EventArgs e)
 {

 }
}
