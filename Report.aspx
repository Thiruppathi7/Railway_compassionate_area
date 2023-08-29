<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
	<div class="row">
        <div class="col-sm-12">
           <center> <legend>Report</legend></center>
        </div>
   
        <!-- panel preview -->
 <div class="col-md-4">	<img src="images/Admin.png" style="float:right;" /></div>
        <div class="col-sm-5 ">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
      
                        <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Employee Report" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>       
                           <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button2" runat="server" Text="Service Book Report" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button2_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>         
                          <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button3" runat="server" Text="Dead Person Report" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button3_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>
                      <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button4" runat="server" Text="Verfication Report" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button4_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>
                      <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button5" runat="server" Text="Application Report" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                       onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>
                      <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button6" runat="server" Text="EmpId Card Report" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                       onclick="Button6_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>
                      <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button7" runat="server" Text="Appoiment Report" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button7_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>
              
                </div>
            </div>  
                      
        </div>
        
          
           
        </div>
         </div>
         
</asp:Content>

