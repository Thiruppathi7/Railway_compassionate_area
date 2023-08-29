<%@ Page Language="C#" AutoEventWireup="true" CodeFile="idcard.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="idcard" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">



    <script type="text/javascript" language="javascript">
function validate1(key)
{
//getting key code of pressed key
var keycode = (key.which) ? key.which : key.keyCode;
var phn = document.getElementById('TextBox1');
//comparing pressed keycodes
if (!(keycode==8 || keycode==46)&&(keycode < 48 || keycode > 57))
{
return false;
}
else
{
//Condition to check textbox contains ten numbers or not
if (phn.value.length <=8)
{
return true;
}
else
{
return false;
}
}
}
</script>

    <center>
    <br />
    <table align="center" style="width: 300px; border: 1px solid #000000">
        <tr>
            <td align="left">
                <asp:Label ID="Label1" runat="server" Text="Enter the Pfno" 
                    Font-Names="Cambria" Font-Size="Medium" Width="200px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Cambria" 
                    Font-Size="Medium"  onkeypress="return validate1(event)"></asp:TextBox>
            </td>
        </tr>
    </table></center>
    <br />
 <center>   <table align="center" style="width: 300px; border: 1px solid #000000">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Names="Cambria" Font-Size="Medium" 
                    Text="Print" Width="125px" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Font-Names="Cambria" Font-Size="Medium" 
                    Text="Logout" Width="128px" />
            </td>
        </tr>
    </table>
     <br />
     <br />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />

     <br />

 </center>

</asp:Content>
