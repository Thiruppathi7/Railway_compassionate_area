<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="workarea.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">

function validate() 
{
    var pfno = document.getElementById('<%=TextBox1.ClientID %>').value;

     var gender = document.getElementById('<%=DropDownList1.ClientID %>').value;
      var sdate = document.getElementById('<%=TextBox2.ClientID %>').value;
    
var edate = document.getElementById('<%=TextBox4.ClientID %>').value;
    
      var award=document.getElementById('<%=DropDownList3.ClientID %>').value;
      var punish=document.getElementById('<%=DropDownList4.ClientID %>').value;
    
    if (pfno == "") 
    {
        alert("Enter the pfno ");
        return false;
    }
    
 
     if (gender == "--Select--") {
        alert("Select Gender");
        return false;
    }
    if (sdate == "") 
    {
        alert("Select The  Start Date");
        return false;
    }

    if (edate == "") 
    {
        alert("Select The End Date");
        return false;
    }

if (award == "--Select--") {
        alert("Select Award");
        return false;
    }

    
if (punish == "--Select--") {
        alert("Select Punishment");
        return false;
    }

    }
</script>


    <div class="container">
    <table id="calenderTable">
        <tbody id="calenderTableHead">
          <tr>
            <td colspan="4" align="center" class="style37">
	          <select onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>            </td>
            <td colspan="2" align="center" class="style37">
			    <select onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));" id="selectYear">
				</select>			</td>
            <td align="center" class="style37">
			    <a href="#" onClick="closeCalender();"><font size="+1">X</font></a>			</td>
		  </tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td class="style37">Sun</td><td class="style37">Mon</td><td class="style37">Tue</td><td class="style37">Wed</td><td class="style37">Thu</td><td class="style37">Fri</td><td class="style37">Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
	<div class="row">
        <div class="col-sm-10 col-lg-offset-1">
           <center> <legend>
               <br />
               Work Area</legend></center>
        </div>
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-4">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Code</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox1" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Pfno</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Emp Name</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" ReadOnly
                                ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Designation</label>
                        <div class="col-sm-9">
                               <asp:TextBox ID="TextBox5" class="form-control" runat="server" ReadOnly ontextchanged="TextBox5_TextChanged" 
                               ></asp:TextBox>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">Start Date</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="sdate" runat="server" Display="Dynamic" ControlToValidate="TextBox2" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                            <div class="col-sm-3"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox2.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>   
                  <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">End Date</label>
                        <div class="col-sm-9">
                         
                           <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="endate" runat="server" Display="Dynamic" ControlToValidate="TextBox4" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div> <div class="col-sm-3"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox4.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Award</label>
                        <div class="col-sm-9">
                         
                            <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Punishment</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                         
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label"></label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" 
                                AutoPostBack="True" 
                                onselectedindexchanged="DropDownList5_SelectedIndexChanged1" Visible="False">
                                <asp:ListItem>--Select--</asp:ListItem>
                                
                            </asp:DropDownList>
                        </div>
                         
                    </div>
                  
                </div>
            </div>  
                      
        </div>
        
                  
        </div>
         </div>
  
    <div class="form-w3agile">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Save" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click1"  /></td>
                <td style="width: 100px; height: 28px;"><asp:Button ID="Button2" runat="server" 
                        Text="Delete" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"   onClientClick="return OpenPopup()" 
                        onclick="Button2_Click1"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button3" runat="server" 
                        Text="Modify" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="25" onclick="Button3_Click1"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button4" runat="server" 
                        Text="View" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="26" onclick="Button4_Click"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button5" runat="server" 
                        Text="Search" Font-Names="Cambria" Font-Size="Medium"  Width="143px" 
                        TabIndex="27" onclick="Button5_Click"  /></td>
                
            </tr>
        </table></center>
    </div>
    <br />
    <br />
    </div>
</asp:Content>

