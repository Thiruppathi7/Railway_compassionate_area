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
using System.Net.Mail;
public partial class Default3 : System.Web.UI.Page
{
    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        con.Open();
        SqlCommand cmd = new SqlCommand("select isnull(max(code),0)+1 from appo", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        TextBox11.Text = i.ToString();

        con.Close();
        TextBox3.Text = "Madurai Division";
        TextBox13.Text = " Southern Railway Madurai Division";
        if (!IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select add1 from appo", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList3.Items.Add(dr["add1"].ToString());

            }


            dr.Close();
            con.Close();


        }
        

    }
    public void SendHTMLMail()
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(new MailAddress(TextBox14.Text));

            mail.From = new MailAddress("raniamma2821@gmail.com");
            mail.Subject = "RAILWAY COMPASSIONATE GROUND APPOINTMENT-Southern Railway-Madurai Division ";
            mail.Body += "Dear User, Thank you for registered here. Your UserKey is  '" + TextBox1.Text + "' Please Note it Only Drm Office Original Certificate. <br/><br/>";
            //mail.Body += GetGridviewData(GridView1);
            mail.IsBodyHtml = true;


            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                   ("raniamma2821@gmail.com", "9965109712");
            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string m = String.Format("{0}", Request.Form["dat"]);
        try
        {
            con.Open();
            cmd = new SqlCommand("insert into appo(code, add1, add2, add3, sir, dat, auth)values(@code,@add1,@add2,@add3,@sir,@dat,@auth)", con);

            cmd.Parameters.AddWithValue("@code", TextBox11.Text);
            cmd.Parameters.AddWithValue("@add1", TextBox3.Text);
            cmd.Parameters.AddWithValue("@add2", TextBox13.Text);
            cmd.Parameters.AddWithValue("@add3", TextBox14.Text);

            cmd.Parameters.AddWithValue("@sir", TextBox1.Text);

            cmd.Parameters.AddWithValue("@dat",TextBox2.Text);

            cmd.Parameters.AddWithValue("@auth", DropDownList1.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            SendHTMLMail();
   
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Save Successfully Mail Send ')</script>");
        }
        catch (SqlException ea)
        {
            Response.Write(ea.Message.ToString());
        }
     
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("AppoimentView.aspx");
    }
  public void clear()
    {
 TextBox11.Text="";
       TextBox3.Text="";
       TextBox13.Text="";
         TextBox14.Text="";
 TextBox1.Text="";


    }

  protected void Button2_Click(object sender, EventArgs e)
  {
      Response.Redirect("AppRemove.aspx");
  }
  protected void Button3_Click(object sender, EventArgs e)
  {
      try
      {
          con.Open();
          cmd = new SqlCommand("update appo set add1=@add1, add2=@add2, add3=@add3, sir=@sir, dat=@dat, auth=@auth where code=@code", con);

          cmd.Parameters.AddWithValue("@code", TextBox11.Text);
          cmd.Parameters.AddWithValue("@add1", TextBox3.Text);
          cmd.Parameters.AddWithValue("@add2", TextBox13.Text);
          cmd.Parameters.AddWithValue("@add3", TextBox14.Text);

          cmd.Parameters.AddWithValue("@sir", TextBox1.Text);

          cmd.Parameters.AddWithValue("@dat", TextBox2.Text);

          cmd.Parameters.AddWithValue("@auth", DropDownList1.SelectedItem.Text);
          cmd.ExecuteNonQuery();
          con.Close();
         

          Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Record Updated Successfully  ')</script>");
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
      cmd = new SqlCommand("select code, add1, add2, add3, sir, dat, auth  from appo where add1=@add1", con);
      cmd.Parameters.AddWithValue("@add1", DropDownList3.SelectedItem.Text);
      dr = cmd.ExecuteReader();
      if (dr.Read())
      {
          TextBox11.Text = dr["code"].ToString();
           TextBox13.Text = dr["add1"].ToString();
         
          TextBox13.Text = dr["add2"].ToString();

          TextBox14.Text = dr["add3"].ToString();
         
          TextBox1.Text = dr["sir"].ToString();
          
          TextBox2.Text = dr["dat"].ToString();

          DropDownList1.Text = dr["auth"].ToString();



      }
      else
      {


      }
      dr.Close();
      con.Close();
  }
  }
