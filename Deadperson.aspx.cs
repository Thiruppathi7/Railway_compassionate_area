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
            cmd = new SqlCommand("select des from designadd", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList8.Items.Add(dr["des"].ToString());

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
                DropDownList2.Items.Add(dr["sname"].ToString());

            }


            dr.Close();
            con.Close();


        }


        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select pfno from EmpMaster ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList7.Items.Add(dr["pfno"].ToString());

            }


            dr.Close();
            con.Close();


        }
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select pfno from deadperson ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList9.Items.Add(dr["pfno"].ToString());

            }


            dr.Close();
            con.Close();


        }
    }
    private int AshokPravick(byte[] imgbin)
    {
        //string m = String.Format("{0}", Request.Form["dat"]);
        //string nn = String.Format("{0}", Request.Form["date1"]);
        //string oo = String.Format("{0}", Request.Form["dat2"]);
        //string pp = String.Format("{0}", Request.Form["dat3"]);
        //  string qq = String.Format("{0}", Request.Form["dat4"]);
        cmd = new SqlCommand("Insert Into deadperson(pfno,uno,ename,gender,photo,fname,dat,designation,station,dob,doa,dor,ded,famem) values( @pfno,@uno,@ename,@gender,@photo,@fname,@dat,@designation,@station,@dob,@doa,@dor,@ded,@famem)", con);
        //int n1, n2, n3;
        //n1 = int.Parse(TextBox9.Text);
        //n2 = int.Parse(TextBox10.Text);
        //n3 = n1 + n2;
        //TextBox11.Text = n3.ToString();
        cmd.Parameters.AddWithValue("@pfno", DropDownList7.Text);
        cmd.Parameters.AddWithValue("@uno", TextBox12.Text);
        cmd.Parameters.AddWithValue("@ename", TextBox13.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);
        cmd.Parameters.Add(new SqlParameter("@photo", SqlDbType.Image)).Value = imgbin;
        cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
        //cmd.Parameters.AddWithValue("@address", TextBox5.Text);
        cmd.Parameters.AddWithValue("@dat", TextBox1.Text);
        cmd.Parameters.AddWithValue("@designation", DropDownList8.Text);
        cmd.Parameters.AddWithValue("@station", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
        cmd.Parameters.AddWithValue("@doa",TextBox4.Text);
        cmd.Parameters.AddWithValue("@dor", TextBox6.Text);
        cmd.Parameters.AddWithValue("@ded", TextBox7.Text);
        cmd.Parameters.AddWithValue("@famem", TextBox5.Text);

        con.Open();

        int n = cmd.ExecuteNonQuery();
        clear();
        con.Close();

        return n;
      


    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox15_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    static int CalculateAge(DateTime dob)
    {
        DateTime now = DateTime.Today;

        int years = now.Year - dob.Year;
        if (now.Month > dob.Month) return years;
        if (now.Month < dob.Month) return --years;
        if (now.Day >= dob.Day) return years;
        return --years;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text != "")
        {
            if (TextBox7.Text != "")
            {
                //DateTime dob = Convert.ToDateTime(TextBox1.Text);
                //TextBox1.Text = dob.ToShortDateString();
                ////TextBox8.Text = CalculateAge(dob).ToString();
                //String a = CalculateAge(dob).ToString();

                //int d = Convert.ToInt16(a);
                //int n1 = 58;
                //int s = n1 - d;
                //TextBox6.Text = s.ToString();

                //DateTime t1, t2;

                //t1 = Convert.ToDateTime(TextBox1.Text);
                //t2 = t1.AddYears(58);
                //TextBox8.Text = t2.ToString("MM/dd/yyyy");


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
                Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Please Select Death Date...')</script>");

            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Please Enter Family Member...')</script>");
           
        }

    }
    protected void DropDownList7_SelectedIndexChanged1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select uno,ename,gender,dob,doa,dor from EmpMaster where pfno=@pfno", con);
        cmd.Parameters.AddWithValue("@pfno", DropDownList7.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox13.Text = (dr["ename"].ToString());
            TextBox12.Text = dr["uno"].ToString();
            DropDownList1.Text = dr["gender"].ToString();

            TextBox3.Text = (dr["dob"].ToString());
            TextBox4.Text = (dr["doa"].ToString());
            TextBox6.Text = (dr["dor"].ToString());
        }


        dr.Close();
        con.Close();
    }
 public void clear()
    {

        TextBox12.Text = "";
        TextBox13.Text = "";


        TextBox2.Text = "";



        TextBox5.Text = "";
    }
 protected void Button4_Click(object sender, EventArgs e)
 {
     Response.Redirect("Deadview.aspx");
 }
 protected void Button2_Click(object sender, EventArgs e)
 {
     Response.Redirect("DeadpersonRemove.aspx");
 }
 protected void Button3_Click(object sender, EventArgs e)
 {
     con.Open();
     cmd = new SqlCommand("update  deadperson  set pfno=@pfno,uno=@uno,ename=@ename,gender=@gender,fname=@fname,dat=@dat,designation=@designation,station=@station,dob=@dob,doa=@doa,dor=@dor,ded=@ded where pfno=@pfno ", con);
     

     cmd.Parameters.AddWithValue("@pfno", DropDownList7.Text);
     cmd.Parameters.AddWithValue("@uno", TextBox12.Text);
     cmd.Parameters.AddWithValue("@ename", TextBox13.Text);
     cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);
    // cmd.Parameters.Add(new SqlParameter("@photo", SqlDbType.Image)).Value = imgbin;
     cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
     //cmd.Parameters.AddWithValue("@address", TextBox5.Text);
     cmd.Parameters.AddWithValue("@dat", TextBox1.Text);
     cmd.Parameters.AddWithValue("@designation", DropDownList8.Text);
     cmd.Parameters.AddWithValue("@station", DropDownList2.Text);
     cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
     cmd.Parameters.AddWithValue("@doa", TextBox4.Text);
     cmd.Parameters.AddWithValue("@dor", TextBox6.Text);
     cmd.Parameters.AddWithValue("@ded", TextBox7.Text);
     cmd.ExecuteNonQuery();

     con.Close();

     Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Saved Sucessfully!!!')</script>");
        
 }
 protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
 {
     con.Open();
     cmd = new SqlCommand("select pfno,uno,ename,gender,fname,dat,designation,station,dob,doa,dor,ded,famem from deadperson  where pfno=@pfno", con);
     cmd.Parameters.AddWithValue("@pfno", DropDownList9.SelectedItem.Text);
     dr = cmd.ExecuteReader();
     if (dr.Read())
     {

         DropDownList7.Text = dr["pfno"].ToString();
         TextBox12.Text = dr["uno"].ToString();
         TextBox13.Text = dr["ename"].ToString();
         DropDownList1.Text = dr["gender"].ToString();
         TextBox2.Text = dr["fname"].ToString();
         TextBox1.Text = dr["dat"].ToString();
         DropDownList8.Text = dr["designation"].ToString();
         DropDownList2.Text = dr["station"].ToString();
         TextBox3.Text = dr["dob"].ToString();
         TextBox4.Text = dr["doa"].ToString();
         TextBox6.Text = dr["dor"].ToString();
         TextBox7.Text = dr["ded"].ToString();
         TextBox5.Text = dr["famem"].ToString();

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
