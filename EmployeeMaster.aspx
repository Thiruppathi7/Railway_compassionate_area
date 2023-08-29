<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="EmployeeMaster.aspx.cs" Inherits="EmployeeMaster" %>

<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">

function ret()
{
 	var md = document.getElementById('<%= TextBox10.ClientID %>').value;	
 	if(md=="")
 	{
 	 alert("Please Choose Date Of Birth");
 	 document.getElementById('<%= TextBox10.ClientID %>').focus();
 	}
 	else
 	{
	md = md.replace(/-/g,"/")
 	n = new Date(md);
 	yy = n.getFullYear()+60;
 	mm = n.getMonth()+1;
 	dd = n.getDate();
	if(mm==3 && dd==1)
	{
		mm=2;
		dd=2;
	}
	if(mm==8 && dd==1)
	{
		mm=7;
		dd=2;
	}
 	if(mm==2)
 	{
	 if(dd==1)
	  {
		mm=mm-1;
		dd=31;
	   }
 	 else if((yy%4)==0)
 	 {
 	  if(((yy%100)==0) && ((yy%400)!=0))
 	   		dd=28;
 	  else
 	  		dd=29;
 	 }
	 else
			dd=28;
 	}
 	else if(mm==1)
 	{
 		if(dd==1)
 		{
 	  		dd=31;
 	  		yy=yy-1;
 	  		mm=12;
 	  	}
 	  	else
 	  		dd=31;
 	 }
 	 else if((mm==4) || (mm==6) || (mm==9) || (mm==11))
	 {
		if(dd==1)
		{
		   mm=mm-1;
 	 	   dd=31;
		}
		else
			dd=30;
	 }

 	 else
	 {
		if(dd==1)
		{
		   mm=mm-1;
 	 	   dd=30;
		}
		else
 	 		dd=31; 	
	 } 	 		
 	 if(mm<10)
 	   	mm="0"+mm; 	 
 	document.getElementById('<%= TextBox6.ClientID %>').value = yy+"-"+mm+"-"+dd;
 	}
 } 
     function Sum() {
                        var text1 = document.getElementById('<%= TextBox5.ClientID %>');
                        var text2 = document.getElementById('<%= TextBox7.ClientID %>');
                        if (text1.value.length == 0 ) {
                                alert('Basic Pay and GrassPay should not be empty');
                                return;
                        }

                        var x = parseInt(text1.value);
                        var y = parseInt(text2.value);
                        document.getElementById('<%= TextBox3.ClientID %>').value = x +y;
                }
                
             function validate() 
{
    var pfno = document.getElementById('<%=TextBox1.ClientID %>').value;
    var uno = document.getElementById('<%=TextBox12.ClientID %>').value;
    var ename = document.getElementById('<%=TextBox13.ClientID %>').value;
     var gender = document.getElementById('<%=DropDownList1.ClientID %>').value;
     
      var fname = document.getElementById('<%=TextBox2.ClientID %>').value;
    var add = document.getElementById('<%=TextBox8.ClientID %>').value;
  var date=document.getElementById('<%=TextBox9.ClientID %>').value;
  
     var Designation = document.getElementById('<%=DropDownList2.ClientID %>').value;
      var Station = document.getElementById('<%=DropDownList3.ClientID %>').value;
    var dob=document.getElementById('<%=TextBox10.ClientID %>').value;
  var djoin=document.getElementById('<%=TextBox11.ClientID %>').value;
  
    var BP = document.getElementById('<%=TextBox5.ClientID %>').value;
    var GP = document.getElementById('<%=TextBox7.ClientID %>').value;
    var id = document.getElementById('<%=TextBox4.ClientID %>').value;
    var Reward = document.getElementById('<%=DropDownList4.ClientID %>').value;
 var punish = document.getElementById('<%=DropDownList5.ClientID %>').value;
    if (pfno == "") 
    {
        alert("Enter the pfno ");
        return false;
    }
    if (uno == "") {
        alert("Enter the UniqueNo");
        return false;
    }
    
    if (ename == "") {
        alert("Enter the Employee Name");
        return false;
    }
     if (gender == "--Select--") {
        alert("Select Gender");
        return false;
    }
    if (fname == "") 
    {
        alert("Enter The Father Name");
        return false;
    }
    if (add == "") {
        alert("Enter The Address");
        return false;
    }
    if (date== "") {
        alert("Select The Date");
        return false;
    }
 
     if (Designation == "--Select--") {
        alert("Select The Designation");
        return false;
    }
     if (Station == "--Select--") {
        alert("Select The Station");
        return false;
    }
     if (dob== "") {
        alert("Select The Date of Birth");
        return false;
    }
  if (djoin== "") {
        alert("Select The Joining Date");
        return false;
    }
 
    if (BP == "") {
        alert("Enter The Basic Pay");
        return false;
    }
    
  if (GP == "") {
        alert("Enter The Grass Pay");
        return false;
    }
    if (id == "") 
    {
        alert("Enter The Identification");
        return false;
    }
    if (Reward == "--Select--") {
        alert("Select The Reward");
        return false;
    }
    
    if (punish == "--Select--") {
        alert("Select The Punishment");
        return false;
    }  
    }   
                
                
</script>

    <div class="container " >
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
         <center>  <div class="col-sm-10 col-lg-offset-1 ">
           <center> <legend>
               <br />
               Employee Master</legend></center>
        </div>
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-1">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Pfno</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox1" class="form-control"  runat="server" 
                                ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="pfno" runat="server" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="Please Enter Numerics." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-5 control-label">Unique No</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox12" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="uno" runat="server" Display="Dynamic" ControlToValidate="TextBox12" ErrorMessage="Please Enter Numerics." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="amount" class="col-sm-5 control-label">Employee Name</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox13" class="form-control" runat="server"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="ename" ControlToValidate="TextBox13" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-5 control-label">Gender</label>
                        <div class="col-sm-7">
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                                
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-5 control-label">Photo</label>
                        <div class="col-sm-7">
                            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" required="" />
                        </div>
                    </div>   
                  <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Father Name</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox2" class="form-control"  runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="fname" ControlToValidate="TextBox2" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Address</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox8" class="form-control"  runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="addr" ControlToValidate="TextBox8" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Date</label>
                        <div class="col-sm-6">
                        
                            
                <asp:TextBox ID="TextBox9" runat="server" class="form-control" 
                                ontextchanged="TextBox9_TextChanged"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="dat" runat="server" Display="Dynamic" ControlToValidate="TextBox9" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
             
                        </div>
                        <div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox9.ClientID %>');">
              <img src="images/calendar.gif"></a></div>   
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Designation</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Station</label>
                        <div class="col-sm-7">
                            <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
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
                        <label for="concept" class="col-sm-5 control-label">Date of Birth</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="dob" runat="server" Display="Dynamic" ControlToValidate="TextBox10" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                        <div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox10.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-5 control-label">Date of Appointment</label>
                        <div class="col-sm-6">
                     <asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="doa" runat="server" Display="Dynamic" ControlToValidate="TextBox11" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                        <div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox11.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div> 
                    <div class="form-group">
                        <label for="amount" class="col-sm-5 control-label">Date of Retirement</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox6" class="form-control" onblur="ret()" runat="server"></asp:TextBox>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-5 control-label">Basicpay</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox5" onblur="Sum()" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="bp" runat="server" Display="Dynamic" ControlToValidate="TextBox5" ErrorMessage="Please Enter Numerics." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-5 control-label">Grade pay</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox7" onblur="Sum()" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="gp" runat="server" Display="Dynamic" ControlToValidate="TextBox7" ErrorMessage="Please Enter Numerics." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div>   
                  <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">NetAmount</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox3" onblur="Sum()" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Identificationmark</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox4" class="form-control"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Remark</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Punishment</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList5" class="form-control" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Search Employee</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" 
                                AutoPostBack="True" onselectedindexchanged="DropDownList6_SelectedIndexChanged">
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
                        OnClientClick="return validate();" onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"><asp:Button ID="Button2" runat="server" 
                        Text="Delete" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"  
                        onclick="Button2_Click"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button3" runat="server" 
                        Text="Modify" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="25" onclick="Button3_Click"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button4" runat="server" 
                        Text="View" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="26" onclick="Button4_Click"  /></td>
         <!--<td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button5" runat="server" 
                        Text="Report" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="26" onclick="Button5_Click"   /></td>-->
                
            </tr>
        </table></center>
    </div>
    <br />
    <br />
    </div>
</asp:Content>