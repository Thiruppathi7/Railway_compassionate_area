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
        SqlCommand cmd = new SqlCommand("select isnull(max(code),0)+1 from exam", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        TextBox11.Text = i.ToString();

        con.Close();

        TextBox18.Text = " Southern Railway Madurai Division";
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select Examname from exam", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList3.Items.Add(dr["Examname"].ToString());

            }


            dr.Close();
            con.Close();


        }
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("insert into exam(code, postapply, Examname, edate, cname, add1, add2, add3, divi, mark, result)values(@code, @postapply, @Examname,@edate,@cname,@add1,@add2,@add3,@divi,@mark,  @result)", con);

            cmd.Parameters.AddWithValue("@code", TextBox11.Text);
            cmd.Parameters.AddWithValue("@postapply", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Examname", TextBox13.Text);
            cmd.Parameters.AddWithValue("@edate", TextBox14.Text);

            cmd.Parameters.AddWithValue("@cname", TextBox15.Text);

            cmd.Parameters.AddWithValue("@add1", TextBox1.Text);

            cmd.Parameters.AddWithValue("@add2", TextBox18.Text);
            cmd.Parameters.AddWithValue("@add3", TextBox19.Text);
            cmd.Parameters.AddWithValue("@divi", TextBox20.Text);
            cmd.Parameters.AddWithValue("@mark", TextBox2.Text);
   
            cmd.Parameters.AddWithValue("@result", DropDownList1.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Inserted Successfully')</script>");
            clear();
        }

        catch (SqlException ea)
        {
            Response.Write(ea.Message.ToString());
        }
     
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ExamView.aspx");
    }
  public void clear()
    {
 TextBox11.Text="";
 TextBox13.Text="";
 TextBox14.Text="";
 TextBox15.Text="";

 TextBox1.Text="";

 TextBox18.Text="";
 TextBox19.Text="";
 TextBox20.Text="";
 TextBox2.Text="";
    }
  protected void Button2_Click1(object sender, EventArgs e)
  {
      Response.Redirect("Examremove.aspx");
  }
  protected void Button3_Click1(object sender, EventArgs e)
  {
      try
      {
          con.Open();
          cmd = new SqlCommand("update exam set code=@code,postapply=@postapply,Examname=@Examname,edate=@edate,cname=@cname,add1=@add1,add2= @add2,add3=@add3,divi=@divi,mark=@mark,result=@result where code=@code", con);

          cmd.Parameters.AddWithValue("@code", TextBox11.Text);
          cmd.Parameters.AddWithValue("@postapply", DropDownList2.SelectedItem.Text);
          cmd.Parameters.AddWithValue("@Examname", TextBox13.Text);
          cmd.Parameters.AddWithValue("@edate", TextBox14.Text);

          cmd.Parameters.AddWithValue("@cname", TextBox15.Text);

          cmd.Parameters.AddWithValue("@add1", TextBox1.Text);

          cmd.Parameters.AddWithValue("@add2", TextBox18.Text);
          cmd.Parameters.AddWithValue("@add3", TextBox19.Text);
          cmd.Parameters.AddWithValue("@divi", TextBox20.Text);
          cmd.Parameters.AddWithValue("@mark", TextBox2.Text);

          cmd.Parameters.AddWithValue("@result", DropDownList1.SelectedItem.Text);
          cmd.ExecuteNonQuery();
          con.Close();
          Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Modified Successfully')</script>");
          clear();
      }

      catch (SqlException ea)
      {
          Response.Write(ea.Message.ToString());
      }
     

  }
  protected void Button5_Click(object sender, EventArgs e)
  {
      DropDownList3.Visible = true;
  }
  protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
  {
      con.Open();
      cmd = new SqlCommand("select code, postapply, Examname, edate, cname, add1, add2, add3, divi, mark, result from exam where Examname=@Examname", con);
      cmd.Parameters.AddWithValue("@Examname", DropDownList3.SelectedItem.Text);
      dr = cmd.ExecuteReader();
      if (dr.Read())
      {
          TextBox11.Text = dr["code"].ToString();
          DropDownList2.Text = dr["postapply"].ToString();
        
          TextBox13.Text = dr["Examname"].ToString();

          TextBox14.Text = dr["edate"].ToString();
          TextBox15.Text = dr["cname"].ToString();
          TextBox1.Text = dr["add1"].ToString();
          TextBox18.Text = dr["add2"].ToString();
          TextBox19.Text = dr["add3"].ToString();
          TextBox20.Text = dr["divi"].ToString();
          TextBox2.Text = dr["mark"].ToString();

          DropDownList1.Text = dr["result"].ToString();



      }
      else
      {


      }
      dr.Close();
      con.Close();
  }
}
