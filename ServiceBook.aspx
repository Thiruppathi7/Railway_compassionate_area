<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ServiceBook.aspx.cs" Inherits="ServiceBook" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <script type="text/javascript">

 function validate() 
{
       var pfno = document.getElementById('<%=DropDownList9.ClientID %>').value;
     var uno = document.getElementById('<%=TextBox12.ClientID %>').value;
      var ename = document.getElementById('<%=TextBox13.ClientID %>').value;
     var gender = document.getElementById('<%=DropDownList1.ClientID %>').value;
    var fname = document.getElementById('<%=TextBox2.ClientID %>').value;
    var mname = document.getElementById('<%=TextBox8.ClientID %>').value;
     var comm = document.getElementById('<%=DropDownList2.ClientID %>').value;
     var relig = document.getElementById('<%=DropDownList3.ClientID %>').value;
    
      var Station = document.getElementById('<%=DropDownList9.ClientID %>').value;
            var child = document.getElementById('<%=DropDownList2.ClientID %>').value;
 var guard = document.getElementById('<%=TextBox5.ClientID %>').value;
    
     if (pfno == "") {
        alert("Enter the pfNo");
        return false;
    }

     if (uno == "") {
        alert("Enter the UniqueNo");
        return false;
    }
    
  
        if (fname == "") 
    {
        alert("Enter The Father Name");
        return false;
    }
    if (mname == "") {
        alert("Enter The Mother Name");
        return false;
    }
    
if (comm == "--Select--") {
        alert("Select Community");
        return false;
    }if (relig == "--Select--") {
        alert("Select Religion");
        return false;
    }
     
         if (Station == "--Select--") {
        alert("Select The station");
        return false;
    }
     
 
    if (id == "") 
    {
        alert("Enter The Identification");
        return false;
    }
    
    if (Reward == "--Select--") {
        alert("Please Select Guardian");
        return false;
    }
    if (guard== "") 
    {
        alert("Enter The Guardian Name");
        return false;
    }
      if (child == "") 
    {
        alert("Enter The Child Name");
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
           <td class="style37">Sun</td><td class="style37">Mon</td><td class="style37">Tue</td><td class="style37">
             Wed</td><td class="style37">Thu</td><td class="style37">Fri</td><td class="style37">
             Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
	<div class="row">
        <div class="col-sm-10 col-lg-offset-1">
           <center> <legend>
               <br />
               Service Book</legend></center>
        </div>
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-1">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Pfno</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList9" class="form-control" runat="server" 
                                AutoPostBack="True" 
                                onselectedindexchanged="DropDownList9_SelectedIndexChanged2">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-5 control-label">Employee Name</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox12" class="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="amount" class="col-sm-5 control-label">Date of Birth</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox13" class="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-5 control-label">Gender</label>
                        <div class="col-sm-7">
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" >
                                 <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                            </asp:DropDownList>
                                
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-5 control-label">Photo</label>
                        <div class="col-sm-7">
                            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                        </div>
                    </div>   
                  <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Father Name</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox2" class="form-control"  runat="server" ReadOnly></asp:TextBox>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Mother Name</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox8" class="form-control"  runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="mname" ControlToValidate="TextBox8" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Date of Join</label>
                        <div class="col-sm-6">
                         
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>      <div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox1.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Community</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                            <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Bc</asp:ListItem>
                        <asp:ListItem>OBC</asp:ListItem>
                        <asp:ListItem>MBC</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>ST</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Religion</label>
                        <div class="col-sm-7">
                            <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                     <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Hindhu</asp:ListItem>
                        <asp:ListItem>Christian</asp:ListItem>
                        <asp:ListItem>Musliam</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>  
                      
        </div>
        
          <div class="col-sm-5">
  
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Designation</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox9" class="form-control" runat="server" ReadOnly></asp:TextBox>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-5 control-label">Marriage Status</label>
                        <div class="col-sm-7">
                         <label>
                             <asp:CheckBox ID="CheckBox1" class="radio-inline" Text="Yes" runat="server" 
                                AutoPostBack="True" oncheckedchanged="CheckBox1_CheckedChanged" /></span></label>
                                <asp:CheckBox ID="CheckBox2" class="radio-inline" Text="No" 
                                runat="server" AutoPostBack="True" 
                                oncheckedchanged="CheckBox2_CheckedChanged" />
  <label>
                               </span></label>
                            
                        </div>
                    </div> 
                    <div class="form-group">
                        <asp:Label ID="Label2" class="col-sm-5 control-label" runat="server" Text="Wife Name"></asp:Label>
                       <!-- <label for="amount" id="wife" class="col-sm-5 control-label">Wife Name</label>-->
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="wname" ControlToValidate="TextBox6" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" class="col-sm-5 control-label" runat="server" Text="Photo"></asp:Label>
                      <!--  <label for="status" class="col-sm-5 control-label"></label>-->
                        <div class="col-sm-7">
                            <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />
                        </div>
                    </div> 
                    <div class="form-group">
                        <asp:Label ID="Label4" class="col-sm-5 control-label" runat="server" 
                            Text="Aadhar no"></asp:Label>
                       <!-- <label for="date" class="col-sm-5 control-label"></label>-->
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="chname" ControlToValidate="TextBox7" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>   
                  <div class="form-group">
                      <asp:Label ID="Label5" class="col-sm-5 control-label" runat="server" Text="Son/Daughter Name"></asp:Label>
                       <!-- <label for="concept" class="col-sm-5 control-label"></label>-->
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox3" class="form-control"  runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="sdname" ControlToValidate="TextBox3" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group"> 
                            <asp:Label ID="Label6" class="col-sm-5 control-label" runat="server" Text="Son/Daughter Name"></asp:Label>
                        <!--<label for="concept" class="col-sm-5 control-label"></label>-->
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox4" class="form-control"  runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="sdauname" ControlToValidate="TextBox4" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                         <asp:Label ID="Label7" class="col-sm-5 control-label" runat="server" Text="Guardian"></asp:Label>
                     
                       <!-- <label for="concept" class="col-sm-5 control-label"></label>-->
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Mother</asp:ListItem>
                                <asp:ListItem>Father</asp:ListItem>
                                <asp:ListItem>Brother</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                         <asp:Label ID="Label8" class="col-sm-5 control-label" runat="server" Text="Guardian Name"></asp:Label>
                     
                        <!--<label for="concept" class="col-sm-5 control-label">Guardian Name</label>-->
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="guname" ControlToValidate="TextBox5" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" class="col-sm-5 control-label" runat="server" Text="Guardian Image"></asp:Label>
       
                        <div class="col-sm-7">
                         
                            <asp:FileUpload ID="FileUpload3" class="form-control" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                    
                        <label for="concept" class="col-sm-5 control-label">Entry Date/Rentry</label>
                        <div class="col-sm-6">
                         
                          <asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="edate" runat="server" Display="Dynamic" ControlToValidate="TextBox11" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                        <div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox11.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Railway Division</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label"></label>
                    <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" 
                                onselectedindexchanged="DropDownList5_SelectedIndexChanged1" 
                                AutoPostBack="True" Visible="False">
                                <asp:ListItem>--Select--</asp:ListItem>
                             
                            </asp:DropDownList>
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
                     OnClientClick="return validate();" onclick="Button1_Click"  /></td>
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
                        TabIndex="26" onclick="Button4_Click1"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button5" runat="server" 
                        Text="Search" Font-Names="Cambria" Font-Size="Medium"  Width="143px" 
                        TabIndex="27" onclick="Button5_Click"  /></td>
                            <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button6" runat="server" 
                        Text="Work Area-Next" Font-Names="Cambria" Font-Size="Medium"  Width="143px" 
                        TabIndex="27" onclick="Button6_Click"  /></td>
                
            </tr>
        </table></center>
    </div>
    <br />
    <br />
    </div>
    </div>
</asp:Content>