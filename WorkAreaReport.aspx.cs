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
public partial class WorkAreaReport : System.Web.UI.Page
{
    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataReader dr;
    private SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
        //    con.Open();
        //    cmd = new SqlCommand("SELECT ename, des, sdat, edat, aWd, pun  FROM  workarea ", con);
      
        //    dr = cmd.ExecuteReader();
        //    GridView1.DataSource = dr;
        //    GridView1.DataBind();
        //    dr.Close();
        //    con.Close();
        //}
        //catch (SqlException ex)
        //{
        //}
        con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
            con.Open();
            CrystalDecisions.CrystalReports.Engine.ReportDocument doc = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            doc.FileName = Server.MapPath("~/ReportPrint/Workarea.rpt");
            da = new SqlDataAdapter("SELECT  ename, des, sdat, edat, aWd, pun FROM workarea WHERE code= " + TextBox1.Text + " ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            doc.SetDataSource(ds.Tables[0]);
            CrystalReportViewer1.ReportSource = doc;
            CrystalReportViewer1.RefreshReport();
        }
        catch { }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("SELECT code as Pfno, ename as EmployeeName, des as Designation, sdat as Startdate, edat as EndDate, aWd as Award, pun as Punishment  FROM  workarea ", con);
            //cmd.Parameters.AddWithValue("@code", TextBox1.Text);
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            con.Close();
        }
        catch (SqlException ex)
        {
        }
    }
}
