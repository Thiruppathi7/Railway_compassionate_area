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
public partial class Application : System.Web.UI.Page
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
                DropDownList7.Items.Add(dr["des"].ToString());
            }
            dr.Close();
            con.Close();
        }
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
            cmd = new SqlCommand("select code from Application", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList10.Items.Add(dr["code"].ToString());
            }
            dr.Close();
            con.Close();
        }

    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();

            cmd = new SqlCommand("insert into Application(code, ename, desi, dod, doa, per, comm, nacan, rel, dob, equa, aoth, fpen, dcrg, gpf, li, eleave, fpenn, ipro, aland, mpro, ainc, fams, loan, ncan, papply, witness,naadd, ver)values(@code, @ename, @desi, @dod, @doa, @per, @comm, @nacan, @rel, @dob, @equa, @aoth, @fpen, @dcrg, @gpf, @li, @eleave, @fpenn, @ipro, @aland, @mpro, @ainc, @fams, @loan, @ncan, @papply, @witness,@naadd, @ver)", con);

            cmd.Parameters.AddWithValue("@code", DropDownList6.Text);
            cmd.Parameters.AddWithValue("@ename", TextBox12.Text);
            cmd.Parameters.AddWithValue("@desi", DropDownList7.Text);
            cmd.Parameters.AddWithValue("@dod", TextBox1.Text);

            cmd.Parameters.AddWithValue("@doa", TextBox13.Text);

            cmd.Parameters.AddWithValue("@per", DropDownList1.Text);

            cmd.Parameters.AddWithValue("@comm", DropDownList8.Text);
            cmd.Parameters.AddWithValue("@nacan", TextBox3.Text);
            cmd.Parameters.AddWithValue("@rel", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@dob", TextBox2.Text);
            cmd.Parameters.AddWithValue("@equa", TextBox10.Text);
            cmd.Parameters.AddWithValue("@aoth", DropDownList3.Text);
            cmd.Parameters.AddWithValue("@fpen", TextBox6.Text);
            cmd.Parameters.AddWithValue("@dcrg", TextBox5.Text);
            cmd.Parameters.AddWithValue("@gpf", TextBox7.Text);
            cmd.Parameters.AddWithValue("@li", TextBox3.Text);
            cmd.Parameters.AddWithValue("@eleave", TextBox4.Text);
            cmd.Parameters.AddWithValue("@fpenn", DropDownList4.Text);
            cmd.Parameters.AddWithValue("@ipro", DropDownList5.Text);
            cmd.Parameters.AddWithValue("@aland", TextBox9.Text);
            cmd.Parameters.AddWithValue("@mpro", TextBox14.Text);
            cmd.Parameters.AddWithValue("@ainc", TextBox15.Text);
            cmd.Parameters.AddWithValue("@fams", TextBox16.Text);
            cmd.Parameters.AddWithValue("@loan", DropDownList9.Text);
            cmd.Parameters.AddWithValue("@ncan", TextBox18.Text);
            cmd.Parameters.AddWithValue("@papply", TextBox19.Text);
            cmd.Parameters.AddWithValue("@witness", TextBox20.Text);
            cmd.Parameters.AddWithValue("@naadd", TextBox21.Text);
            cmd.Parameters.AddWithValue("@ver", TextBox22.Text);
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
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select ename from EmpMaster where pfno='"+DropDownList6.SelectedItem.Text+"'", con);
  
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox12.Text = (dr["ename"].ToString());

            // DropDownList7.Text = dr["designation"].ToString();

        }


        dr.Close();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("ApplicationView.aspx");
    }
    public void clear()
    {

        TextBox12.Text = "";

        TextBox1.Text = "";

        TextBox13.Text = "";


        TextBox3.Text = "";

        TextBox2.Text = "";
        TextBox10.Text = "";

        TextBox6.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

        TextBox9.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";

        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox21.Text = "";
        TextBox22.Text = "";
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("applicationremove.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();

            cmd = new SqlCommand("update Application set code=@code, ename=@ename, desi=@desi, dod=@dod,doa=@doa, per=@per,comm=@comm, nacan=@nacan, rel=@rel,dob=@dob, equa=@equa,aoth=@aoth, fpen=@fpen, dcrg=@dcrg,gpf=@gpf,li=@li,eleave=@eleave, fpenn=@fpenn,ipro=@ipro,aland=@aland,mpro=@mpro,ainc=@ainc,fams=@fams,loan=@loan,ncan=@ncan,papply=@papply, witness=@witness,naadd=@naadd,ver=@ver where code=@code ", con);

            cmd.Parameters.AddWithValue("@code", DropDownList6.Text);
            cmd.Parameters.AddWithValue("@ename", TextBox12.Text);
            cmd.Parameters.AddWithValue("@desi", DropDownList7.Text);
            cmd.Parameters.AddWithValue("@dod", TextBox1.Text);

            cmd.Parameters.AddWithValue("@doa", TextBox13.Text);

            cmd.Parameters.AddWithValue("@per", DropDownList1.Text);

            cmd.Parameters.AddWithValue("@comm", DropDownList8.Text);
            cmd.Parameters.AddWithValue("@nacan", TextBox3.Text);
            cmd.Parameters.AddWithValue("@rel", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@dob", TextBox2.Text);
            cmd.Parameters.AddWithValue("@equa", TextBox10.Text);
            cmd.Parameters.AddWithValue("@aoth", DropDownList3.Text);
            cmd.Parameters.AddWithValue("@fpen", TextBox6.Text);
            cmd.Parameters.AddWithValue("@dcrg", TextBox5.Text);
            cmd.Parameters.AddWithValue("@gpf", TextBox7.Text);
            cmd.Parameters.AddWithValue("@li", TextBox3.Text);
            cmd.Parameters.AddWithValue("@eleave", TextBox4.Text);
            cmd.Parameters.AddWithValue("@fpenn", DropDownList4.Text);
            cmd.Parameters.AddWithValue("@ipro", DropDownList5.Text);
            cmd.Parameters.AddWithValue("@aland", TextBox9.Text);
            cmd.Parameters.AddWithValue("@mpro", TextBox14.Text);
            cmd.Parameters.AddWithValue("@ainc", TextBox15.Text);
            cmd.Parameters.AddWithValue("@fams", TextBox16.Text);
            cmd.Parameters.AddWithValue("@loan", DropDownList9.Text);
            cmd.Parameters.AddWithValue("@ncan", TextBox18.Text);
            cmd.Parameters.AddWithValue("@papply", TextBox19.Text);
            cmd.Parameters.AddWithValue("@witness", TextBox20.Text);
            cmd.Parameters.AddWithValue("@naadd", TextBox21.Text);
            cmd.Parameters.AddWithValue("@ver", TextBox22.Text);
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
        DropDownList10.Visible = true;
    }
    protected void DropDownList10_SelectedIndexChanged1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select code, ename, desi, dod,doa, per,comm, nacan, rel,dob, equa,aoth, fpen, dcrg,gpf,li,eleave, fpenn,ipro,aland,mpro,ainc,fams,loan,ncan,papply, witness,naadd,ver from Application   where code=@code ", con);
        cmd.Parameters.AddWithValue("@code", DropDownList10.SelectedItem.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            DropDownList6.Text = dr["code"].ToString();
            TextBox12.Text = dr["ename"].ToString();
            DropDownList7.Text = dr["desi"].ToString();
            TextBox1.Text = dr["dod"].ToString();
            TextBox13.Text = dr["doa"].ToString();
            DropDownList1.Text = dr["per"].ToString();
            DropDownList8.Text = dr["comm"].ToString(); 
            TextBox3.Text = dr["nacan"].ToString();
            DropDownList2.Text = dr["rel"].ToString();
            TextBox2.Text = dr["dob"].ToString();
            TextBox10.Text = dr["equa"].ToString();
            DropDownList3.Text = dr["aoth"].ToString();
            TextBox6.Text = dr["fpen"].ToString();
            TextBox5.Text = dr["dcrg"].ToString();
            TextBox7.Text = dr["gpf"].ToString();
            TextBox3.Text = dr["li"].ToString();
            TextBox4.Text = dr["eleave"].ToString();
            DropDownList4.Text = dr["fpenn"].ToString();
            DropDownList5.Text = dr["ipro"].ToString();
            TextBox9.Text = dr["aland"].ToString();
            TextBox14.Text = dr["mpro"].ToString();
            TextBox15.Text = dr["ainc"].ToString();
            TextBox16.Text = dr["fams"].ToString();
            DropDownList9.Text = dr["loan"].ToString();
            TextBox18.Text = dr["ncan"].ToString();
            TextBox19.Text = dr["papply"].ToString();
            TextBox20.Text = dr["witness"].ToString();
            TextBox21.Text = dr["naadd"].ToString();
            TextBox22.Text = dr["ver"].ToString();
            
        }
        else
        {


        }
        dr.Close();
        con.Close();
    }



    protected void date_TextChanged(object sender, EventArgs e)
    {

    }
}

    


