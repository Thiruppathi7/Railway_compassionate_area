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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            string messages;
            messages = "Southern Railway Madurai Divison '" + TextBox3.Text + "'..!";

            string url;

            //url = "http://www.alertsms.in/pushsms.php?username=ashok88&password=snogszfz9c&sender=test&to='" + TextBox1.Text + "'&message='" + TextBox2.Text + "'&priority=1";

            //  url = "http://promo.alertsmsindia.biz/sendsms.jsp?user=ashokp88&password=12345678&mobiles='" + TextBox1.Text + "'&sms='" + TextBox2.Text + "'&unicode=0&senderid=SMS&version=3";
            url = "https://www.fast2sms.com/dev/bulkV2?authorization=HmZGYS9uCov1EXjRgkrb2tBNFzdaDVefA7xMqJWUnIcPTy3KQiIxlhMLAvdGRKEeB1jzkTFHPp3JCw7n&sender_id=TXTIND&message='" + messages + "'&route=v3&numbers='" + TextBox1.Text + "'";
            string v = url.Replace("'", "");
            Response.Redirect(v);
            Page.ClientScript.RegisterStartupScript(GetType(), "validation", "<script language='javascript'>alert('Message Send Sucessfully')</script>");
        }
        catch (Exception er)
        {
            Response.Write(er.Message.ToString());
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
}
