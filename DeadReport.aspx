<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeadReport.aspx.cs" Inherits="EmpMasterReport" MasterPageFile="~/admin.master" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center> <br />
<br />
<table style="width: 200px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Font-Names="Lucida Calligraphy" 
                Text="Employee Pfno" Width="200px"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Cambria" 
                Font-Size="Medium" MaxLength="8"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" Font-Names="Cambria" Font-Size="Medium" />
        </td>
    </tr>
</table>
<br />
    &nbsp;<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br /></center>
</asp:Content>


