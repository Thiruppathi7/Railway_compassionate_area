<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Sms.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript" type="text/javascript">
  function validate() 
{
   var Reward = document.getElementById('<%= TextBox1.ClientID %>').value;

     var gender = document.getElementById('<%=TextBox3.ClientID %>').value;
    
     
    if (Reward == "") {
        alert("Enter The Mobileno");
        return false;
    }
 
    if (gender == "") {
        alert("Enter the Message");
        return false;
    }

    }
</script><div class="container">
	<div class="row">
        <div class="col-sm-12">
           <center> <legend>SMS</legend></center>
        </div>
   
        <!-- panel preview -->
 <div class="col-md-4">	<img src="images/sms.png" style="float:right;" /></div>
        <div class="col-sm-5 ">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Mobile No</label>
                        <div class="col-sm-9">
                          
                            <asp:TextBox ID="TextBox1" class="form-control"  runat="server" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Message</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-w3agile" style="margin-left:1em;">
     <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Send" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"><asp:Button ID="Button2" runat="server" 
                        Text="Logout" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"   onClientClick="return OpenPopup()"  /></td>
                
                
            </tr>
        </table>
    </div>          
    
                  
                  
                </div>
            </div>  
                      
        </div>
        
          
        </div>
         </div>
  
    


    <br />

</asp:Content>

