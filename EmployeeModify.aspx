<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="EmployeeModify.aspx.cs" Inherits="EmployeeModify" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
	<div class="row">
        <div class="col-sm-12">
           <center> <legend>Employee Master View</legend></center>
        </div>
        <br />
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-4">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">E-PFNO</label>
                        <div class="col-sm-9">
                          
                            <asp:TextBox ID="TextBox1" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
             
                    
                  
                  
                </div>
            </div>  
                      
        </div>
        
                    
        </div>
         </div>
  
    <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Search" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"><asp:Button ID="Button2" runat="server" 
                        Text="Logout" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"   onClientClick="return OpenPopup()"  /></td>
                
                
            </tr>
        </table></center>
    </div>
    
</asp:Content>