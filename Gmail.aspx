<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gmail.aspx.cs" Inherits="Gmail" MasterPageFile="~/admin.master" %>


<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
  function validate() 
{
   var Reward = document.getElementById('<%= TextBox1.ClientID %>').value;

     var gender = document.getElementById('<%=TextBox2.ClientID %>').value;
      var dist = document.getElementById('<%= TextBox3.ClientID %>').value;   
    
     
    if (Reward == "") {
        alert("Enter The Mailid");
        return false;
    }
 
    if (gender == "") {
        alert("Enter the Subject");
        return false;
    }
      if (dist == "") {
        alert("Enter The Body");
        return false;
    }
 
    
    }
</script>
    <div class="container">
	<div class="row">
        <div class="col-sm-12">
           <center> <legend>Gmail</legend></center>
        </div>
        <!-- panel preview -->
         <div class="col-md-4">	<img src="images/mail.png" style="float:right;" /></div>
        <div class="col-sm-6 ">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">TO</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox1" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Subject</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Body</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Attachment</label>
                        <div class="col-sm-9">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                    </div> 
          
            
             
                    
                  
                  
                </div>
            </div>  
                      
        </div></div>
        
         
  
    <div class="form-w3agile">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="SEND" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"><asp:Button ID="Button2" runat="server" 
                        Text="LOGOUT" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"   onClientClick="return OpenPopup()"  /></td>
                
                
            </tr>
        </table></center>
    </div>
    <br />
    <br />
    </div>
</asp:Content>