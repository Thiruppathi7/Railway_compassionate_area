<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Databack.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
	<div class="row">
        <div class="col-sm-12">
           <center> <legend>Report</legend></center>
        </div>
   
        <!-- panel preview -->
 <div class="col-md-4">	<img src="images/da.png" style="float:right;" /></div>
        <div class="col-sm-5 ">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
      
                        <div class="form-w3agile col-lg-offset-1">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Database Backup" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                         onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"></td>
                
                
            </tr>
        </table></center>
    </div>       
                           <div class="form-w3agile col-lg-offset-1">
       <center> </center>
    </div>
                      <div class="form-w3agile col-lg-offset-1">
       <center> <table>
        
        </table></center>
    </div>
              
                </div>
            </div>  
                      
        </div>
        
          
           
        </div>
         </div>
         
</asp:Content>

