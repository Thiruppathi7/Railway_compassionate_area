<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchImage.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="SearchImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <center> &nbsp;<div style="text-align: left">
           
     
       </div>
       <table style="position: relative; left: 6px; top: 7px;">
    
          <tr>
           <td style="height: 21px; bottom: auto;" colspan="3" align="center">
                <asp:Label ID="Label5" runat="server" Font-Bold="False" 
                   Font-Names="Cambria" Style="position: relative"
                    Text="Image Search" Width="168px" Font-Size="X-Large"></asp:Label>
           </td>
       </tr>
          <tr>
           <td style="height: 21px;" colspan="3">
               &nbsp;</td>
       </tr>
          <tr>
           <td style="width: 127px">
           </td>
           <td style="width: 100px">
           </td>
           <td style="width: 100px" rowspan="10"  >
               <asp:Image ID="Image1" style="margin-left:20px;"  runat="server" Height="209px" Width="202px" />
           </td>
       </tr>
        
        <tr>
            <td style="width: 127px" align="left">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Cambria" Style="position: relative"
                    Text="Pfno" Width="168px"></asp:Label></td>
            <td style="width: 100px" align="left">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True" Height="18px" Width="118px">
                </asp:DropDownList>
               
                </td>
        </tr>
        <tr>
            <td style="width: 127px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
       <tr>
           <td style="width: 127px" align="left">
               <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Cambria" Style="position: relative; top: 0px; left: 0px; width: 169px;"
                   Text="Unique NO."></asp:Label></td>
           <td style="width: 100px" align="left">
            <div class="col-sm-7">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" ReadOnly 
                                ontextchanged="TextBox2_TextChanged" Width="186px"></asp:TextBox>
                        </div>
              
                   </td>
       </tr>
       <tr>
           <td style="width: 127px">
           </td>
           <td style="width: 100px">
           </td>
       </tr>
       <tr>
           <td style="width: 127px" align="left">
               <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Cambria" Style="position: relative"
                   Text="Employee Name" Width="168px"></asp:Label></td>
           <td style="width: 100px" align="left">
              <div class="col-sm-7">
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" ReadOnly 
                                Width="187px"></asp:TextBox>
                        </div></td>
       </tr>
       <tr>
           <td style="width: 127px">
           </td>
           <td style="width: 100px">
           </td>
       </tr>
       <tr>
           <td style="width: 127px" align="left">
               <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Cambria" Style="position: relative"
                   Text=" Destination" Width="169px"></asp:Label></td>
           <td style="width: 100px" align="left">
               <div class="col-sm-7">
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" ReadOnly 
                                ontextchanged="TextBox4_TextChanged" Width="184px"></asp:TextBox>
                        </div></td>
       </tr>
       <tr>
           <td style="width: 127px">
           </td>
           <td style="width: 100px">
           </td>
       </tr>
 
   
    </table>
       </center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;<center><table style="position: relative; left: -30px; top: -73px;">
            <tr>
                <td style="width: 100px" align="center">
                    <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Names="Cambria" Font-Size="Medium"
                        Height="28px" OnClick="Button1_Click1" Style="position: relative" Text="Search"
                        Width="101px" /></td> <td style="width: 100px" align="center">
                    <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Names="Cambria" Font-Size="Medium"
                        Height="28px" OnClick="Button2_Click1" Style="position: relative" Text="Print"
                        Width="101px" />
                       
                        </td>
            </tr>
        </table>
        </center>


</asp:Content>
