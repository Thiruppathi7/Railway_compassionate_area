<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeeMasterView.aspx.cs" Inherits="EmployeeMasterView" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script language="javascript" type="text/javascript">
  function validate() 
{
   var Reward = document.getElementById('<%= TextBox1.ClientID %>').value;
    if (Reward == "") {
        alert("Enter The Pfno");
        return false;
    }
    
    }
</script>
 <div class="container">
	<div class="row">
        <div class="col-sm-12">
           <center> 
               <br />
               <legend>Employee Master View</legend></center>
        </div>
        <br />
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-4">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">E-PFNO</label>
                        <div class="col-sm-9">
                          
                            <asp:TextBox ID="TextBox1" required="" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
             
                    
                  
                  
                </div>
            </div>  
                      
        </div>
        
                    
        </div>
         </div>
  
    <div class="form-w3agile ">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Search" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click"  /></td>
                          <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button3" runat="server" Text="Mail" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        onclick="Button3_Click"  /></td>
                <td style="width: 100px; height: 28px;"><asp:Button ID="Button2" runat="server" 
                        Text="Back" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"   onClientClick="return OpenPopup()" 
                        onclick="Button2_Click"  /></td>
                
                
            </tr>
        </table></center>
    </div>
    


       <div class="col-lg-offset-1">
                 <asp:GridView  Width="80%" ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC"
            BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Names="Cambria" 
            Font-Size="Medium" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
            AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
    </div>
    <br />
    
</asp:Content>
