<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin.master" CodeFile="WorkAreaReport.aspx.cs" Inherits="WorkAreaReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
    <table align="center" style="width: 800px; height: 36px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Names="Cambria" 
                    Text="Enter the Pfno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Cambria" 
                    Font-Size="Medium"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Names="Cambria" Font-Size="Medium" 
                    onclick="Button1_Click" Text="Print" Width="200px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Font-Names="Cambria" Font-Size="Medium" 
                    onclick="Button2_Click" Text="View" Width="200px" />
            </td>
        </tr>
    </table>
 
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White"
        BorderStyle="Ridge" BorderWidth="2px" CellPadding="3"  
    Style="left: -5px; position: relative; top: 8px" GridLines="None" 
    PageSize="2" Font-Size="Medium" CellSpacing="1" Font-Names="Cambria">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
      <br />
      <br />
      <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
          AutoDataBind="true" />
      <br />
    </center>
</asp:Content>
