﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dispatch.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script language="javascript" type="text/javascript">
  function validate() 
{
   var Reward = document.getElementById('<%= TextBox11.ClientID %>').value;
   var ename = document.getElementById('<%= TextBox12.ClientID %>').value;
     var gender = document.getElementById('<%=TextBox13.ClientID %>').value;
      var dist = document.getElementById('<%= TextBox14.ClientID %>').value;   
            var fmember = document.getElementById('<%= TextBox1.ClientID %>').value;
      var designation = document.getElementById('<%=TextBox2.ClientID%>').value;
      var station = document.getElementById('<%=TextBox17.ClientID %>').value;
      var station1 = document.getElementById('<%=TextBox18.ClientID %>').value;
   var station2 = document.getElementById('<%=TextBox19.ClientID %>').value;
   var station3 = document.getElementById('<%=TextBox20.ClientID %>').value;
   var station4 = document.getElementById('<%=TextBox17.ClientID %>').value;
   var station5 = document.getElementById('<%=TextBox4.ClientID %>').value;
    if (Reward == "") {
        alert("Enter The Pfno");
        return false;
    }
        if (ename == "") {
        alert("Enter The Employeename");
        return false;
    }
    if (gender == "--Select--") {
        alert("Enter the Address");
        return false;
    }
      if (dist == "") {
        alert("Enter The Family Pension");
        return false;
    }
     if (Designation == "--Select--") {
        alert("Select The FinacialStatus");
        return false;
    }
    if (Station == "") {
        alert("Enter the Asset Income");
        return false;
    }
     if (fmember == "") {
        alert("Enter The Verfication Date");
        return false;
    }
       if (designation == "") {
        alert("Enter The Name");
        return false;
    }
       if (station == "") {
        alert("Enter The sir");
        return false;
    }
        if (station1 == "") {
        alert("Enter The Dead Person");
        return false;
    }
        if (station2 == "") {
        alert("Enter The Address");
        return false;
    }
        if (station3 == "") {
        alert("Enter The PostApply");
        return false;
    }
        if (station4 == "") {
        alert("Enter The Candidate Name");
        return false;
    }
        if (station5 == "") {
        alert("Enter The ExamDate");
        return false;
    }
    }
</script>
	<div class="row">
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
        <div class="col-sm-10 col-lg-offset-1">
           <center> <legend>Dispatch Master</legend></center>
        </div>
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-1">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Security Name</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Ref No</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox12" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="amount" class="col-sm-3 control-label">From</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox13" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-3 control-label">Address</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox14" class="form-control" runat="server"></asp:TextBox>
                                
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">Division</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox15" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>   
                    <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">To</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>   
                    <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">Name</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Address</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox17" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>   
                  
                        
                </div>
            </div>  
                      
        </div>
        
          <div class="col-sm-5">
  
            <div >
                <div class="panel-body form-horizontal payment-form">
                
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">sir</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox18" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Death Person</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox19" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Address</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox20" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                                        
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Post Apply</label>
                        <div class="col-sm-9">
                         
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Group-C</asp:ListItem>
                                <asp:ListItem>Group-D</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                                        
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Candidate Name</label>
                        <div class="col-sm-9">
                         
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                                        
                        <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Exam Date</label>
                        <div class="col-sm-8">
                         
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                        </div><div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox5.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>
                      <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">Search Employee</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="DropDownList9" class="form-control" runat="server" 
                                AutoPostBack="True" onselectedindexchanged="DropDownList9_SelectedIndexChanged" 
                                Visible="False">
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
                
            </tr>
        </table></center>
    </div>
    <br />
    <br />
    </div>

   
</asp:Content>

