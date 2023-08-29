<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
  function validate() 
{
   var Reward = document.getElementById('<%= TextBox11.ClientID %>').value;
   var ename = document.getElementById('<%=DropDownList2.ClientID %>').value;
     var gender = document.getElementById('<%=TextBox13.ClientID %>').value;
      var dist = document.getElementById('<%= TextBox14.ClientID %>').value;   
            var fmember = document.getElementById('<%= TextBox15.ClientID %>').value;
      var designation = document.getElementById('<%=TextBox1.ClientID%>').value;
      var station = document.getElementById('<%=TextBox18.ClientID %>').value;
      var station1 = document.getElementById('<%=TextBox19.ClientID %>').value;
   var station2 = document.getElementById('<%=TextBox20.ClientID %>').value;
   var station3 = document.getElementById('<%=TextBox2.ClientID %>').value;
   var station4 = document.getElementById('<%=DropDownList1.ClientID %>').value;
    if (Reward == "") {
        alert("Enter The Sno");
        return false;
    }
        if (ename == "--Select--") {
        alert("Enter The PostApply");
        return false;
    }
    if (gender == "") {
        alert("Enter the Examname");
        return false;
    }
      if (dist == "") {
        alert("Enter The Date");
        return false;
    }
     if (Designation == "") {
        alert("Enter The CandidateName");
        return false;
    }
    if (Station == "") {
        alert("Enter the Address");
        return false;
    }
     if (fmember == "") {
        alert("Enter The Division");
        return false;
    }
       if (designation == "") {
        alert("Enter The Mark");
        return false;
    }
       if (station == "") {
        alert("Enter The Result");
        return false;
    }
        if (station1 == "") {
        alert("Enter The ResultDate");
        return false;
    }
        if (station2 == "--Select--") {
        alert("Select the Exam Controller");
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
           <center> <legend>Exam Master</legend></center>
        </div>
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-1">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Code</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Post apply</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Group-C</asp:ListItem>
                                <asp:ListItem>Group-D</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div> 
                    <div class="form-group">
                     <label for="status" class="col-sm-3 control-label">Exam Name</label>
                       
             
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox13" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="exname" ControlToValidate="TextBox13" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="amount" class="col-sm-3 control-label">Exam Date</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox14" class="form-control" runat="server"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="examdate" runat="server" Display="Dynamic" ControlToValidate="TextBox14" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							           
                        </div><div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox14.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">Candidate Name</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox15" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="candiname" ControlToValidate="TextBox15" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>   
                    <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">Address</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="address" ControlToValidate="TextBox1" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z0-9]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        
                </div>
            </div>  
                      
        </div>
        
          <div class="col-sm-5">
  
            <div >
                <div class="panel-body form-horizontal payment-form">
                
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Division</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox18" class="form-control"  runat="server" ReadOnly></asp:TextBox>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Mark/100</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox19" class="form-control" runat="server"></asp:TextBox>
  <asp:RegularExpressionValidator ID="mark" runat="server" Display="Dynamic" ControlToValidate="TextBox19" ErrorMessage="Please Enter Numerics." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Result</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox20" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="result" ControlToValidate="TextBox20" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                                        
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Result Date</label>
                        <div class="col-sm-8">
                         
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="rdate" runat="server" Display="Dynamic" ControlToValidate="TextBox2" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div><div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox2.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>
                                        
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Railway Madurai Division 
                            Controller</label>
                        <div class="col-sm-9">
                         
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                <asp:ListItem>--Select-</asp:ListItem>
                                <asp:ListItem>DRM</asp:ListItem>
                                <asp:ListItem>ADRM</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Search Employee</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" 
                                Visible="False" 
                                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                <asp:ListItem>--Select--</asp:ListItem>
                            
                            </asp:DropDownList>
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
                        TabIndex="26" onclick="Button4_Click1"  /></td>
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

