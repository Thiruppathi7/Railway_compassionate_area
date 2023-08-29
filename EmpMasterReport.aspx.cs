using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class EmpMasterReport : System.Web.UI.Page
{
    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataReader dr;
    private SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
            con.Open();
            CrystalDecisions.CrystalReports.Engine.ReportDocument doc = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            doc.FileName = Server.MapPath("~/ReportPrint/EmpfullReport.rpt");
            da = new SqlDataAdapter("SELECT     pfno, uno, ename, designation, station, dob, doa, dor FRom EmpMaster  ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            doc.SetDataSource(ds.Tables[0]);
            CrystalReportViewer1.ReportSource = doc;
            CrystalReportViewer1.RefreshReport();
        }
        catch { }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["conn"]);
            con.Open();
            CrystalDecisions.CrystalReports.Engine.ReportDocument doc = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            doc.FileName = Server.MapPath("~/ReportPrint/EmpfullReport.rpt");
            da = new SqlDataAdapter("SELECT     pfno, uno, ename, designation, station, dob, doa, dor FRom EmpMaster WHERE pfno= " + TextBox1.Text + " ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            doc.SetDataSource(ds.Tables[0]);
            CrystalReportViewer1.ReportSource = doc;
            CrystalReportViewer1.RefreshReport();
        }
        catch { }
    }
   

    
}
