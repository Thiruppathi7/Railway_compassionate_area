<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="stationremove.aspx.cs" Inherits="stationremove" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
  function validate() 
{
   var Reward = document.getElementById('<%= TextBox1.ClientID %>').value;

     
     
    if (Reward == "") {
        alert("Enter The Sno");
        return false;
    }
 
   

    }
</script>
    <div class="container">
	<div class="row">
        <div class="col-sm-12">
           <center> <legend>Station&nbsp; Remove</legend></center>
        </div>
   
        <!-- panel preview -->
 <div class="col-md-4">	<img src="images/dbr.png" style="float:right;" /></div>
        <div class="col-sm-5 ">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Enter The Sno</label>
                        <div class="col-sm-9">
                          
                            <asp:TextBox ID="TextBox1" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                  
                     <div class="form-w3agile" style="margin-left:1em;">
     <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Remove" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click"   /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button2" runat="server" 
                        Text="Logout" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"   onClientClick="return OpenPopup()" onclick="Button2_Click" 
                         /></td>
                
                
            </tr>
        </table>
    </div>          
   
                  
                  
                </div>
            </div>  
                      
        </div>
        
          
        </div>
         </div>
  
    


    <br />
       <div class="col-lg-offset-4"><asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Names="Cambria"
            Font-Size="Medium" Style="left: -6px; position: relative;
            top: -33px; width: 466px;" BackColor="White" BorderColor="#3366CC" 
    BorderStyle="None" BorderWidth="1px">
            <RowStyle BackColor="White" ForeColor="#003399" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
    </div>

</asp:Content>

